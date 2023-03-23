@FlexTable_QA-Component @regression-QA @FlexTable
Business Need: FlexTable Component Scenarios
  Test all FlexTable component based scenarios
  As a configuration manager i make different configurational changes in FlexTable component and will validate them.

###FlextableExport
  @ADMINUser_parseURLandAppendScript @sprint-21 @us_266643 @267756 @267773 @267779 @267789 @267792 @267797 @267801 @267804 @267807 @267819 @267827 @267832
  Scenario Outline:ADMIN_FlextableExport_To verify that parsing the url and append Script in URL after manipulating mode parameter,flexTableParam,pageBlockId,Agency Id,application Id,parentOwner Id,User Id,Program Id,parentRecordIdOfFlexTable,Record Id alert not get displayed
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
    And I enter this "<Script1>" script after "<Value in URL>"
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "<Script2>" script after "<Value in URL>"
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "<Script3>" script after "<Value in URL>"
    Then I do not see alert popup box
    Examples:
      | Script1                                  | Script2                                                                      | Script3                            | Value in URL              |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | mode parameter            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | flexTableParam            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | pageBlockId               |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | Agency Id                 |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | application Id            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | parentOwner Id            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | User Id                   |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | Program Id                |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | parentRecordIdOfFlexTable |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | Record Id                 |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | announcement id           |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | flexTableName             |

  @PMUser_parseURLandAppendScript @sprint-21 @us_266643 @267768 @267775 @267782 @267790 @267794 @267798 @267802 @267805 @267808 @267823 @267828 @267833
  Scenario Outline:PM_FlextableExport_To verify that parsing the url and append Script in URL after manipulating mode parameter,flexTableParam,pageBlockId,Agency Id,application Id,parentOwner Id,User Id,Program Id,parentRecordIdOfFlexTable,Record Id alert not get displayed
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
    And I enter this "<Script1>" script after "<Value in URL>"
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "<Script2>" script after "<Value in URL>"
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "<Script3>" script after "<Value in URL>"
    Then I do not see alert popup box
    Examples:
      | Script1                                  | Script2                                                                      | Script3                            | Value in URL              |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | mode parameter            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | flexTableParam            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | pageBlockId               |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | Agency Id                 |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | application Id            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | parentOwner Id            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | User Id                   |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | Program Id                |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | parentRecordIdOfFlexTable |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | Record Id                 |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | announcement id           |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | flexTableName             |

  @SPIUser_parseURLandAppendScript @sprint-21 @us_266643 @267771 @267776 @267787 @267791 @267796 @267800 @267803 @267806 @267815 @267825 @267830 @267834
  Scenario Outline:SPI_FlextableExport_To verify that parsing the url and append Script in URL after manipulating mode parameter,flexTableParam,pageBlockId,Agency Id,application Id,parentOwner Id,User Id,Program Id,parentRecordIdOfFlexTable,Record Id alert not get displayed
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
    And I enter this "<Script1>" script after "<Value in URL>" for SPI User
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "<Script2>" script after "<Value in URL>" for SPI User
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "<Script3>" script after "<Value in URL>" for SPI User
    Examples:
      | Script1                                  | Script2                                                                      | Script3                            | Value in URL              |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | mode parameter            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | flexTableParam            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | pageBlockId               |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | Agency Id                 |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | application Id            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | parentOwner Id            |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | User Id                   |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | Program Id                |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | parentRecordIdOfFlexTable |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | Record Id                 |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | announcement id           |
      | %27%3balert(%22PLEX%20Rocks%22)%2f%2f909 | 952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952 | '%3balert('PLEX%20Rocks')%2f%2f909 | flexTableName             |

  @268155 @268162 @268168 @268172 @Admin_UFormView_ToVerifyThatAfterManipulatingFormIdValueNoAnyAlertGetDisplayed @ToVerifyThatAfterManipulatingRecordIdValueNoAnyAlertGetDisplayed
  @Admin_UFormEdit_ToVerifyThatAfterManipulatingFormIdValueNoAnyAlertGetDisplayed @FormEdit_ToVerifyThatAfterManipulatingRecordIdValueNoAnyAlertGetDisplayed
  Scenario: Admin_UFormView_To verify that after manipulating form id,Record id value, no any alert get displayed
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Program For Announcement Testing"
    When I click on "View" icon for "Program For Announcement Testing" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    #268155
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "form id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268162
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Record id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268168
    And I click on "Edit" button inside Dynamic form
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "form id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268172
    And I click on "Edit" button inside Dynamic form
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Record id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back

  @268175 @268176 @AdminDynamicFormViewToVerifyThatWhenThereIsNoAnyFormEntryFoundThenNoAnyAlertGetDisplayed @PMDynamicFormViewToVerifyThatWhenThereIsNoAnyFormEntryFoundThenNoAnyAlertGetDisplayed
  Scenario Outline:Admin or PM user To verify that when there is no any form entry found, then no any alert get displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "form id" and navigate to new URL in All Forms
    Then I do not see alert popup box
    And I navigate to back
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @268180 @268181 @AdminOrPM_USERDynamicFormExportPageToVerifyThatAfterManipulatingFormIdValueNoAnyAlertGetDisplayed
  Scenario Outline: Adminor PM DynamicFormExportPage_To verify that after manipulating form id value, no any alert get displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Program For Announcement Testing"
    When I click on "View" icon for "Program For Announcement Testing" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "form id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "form id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @268186 @268188 @268191 @268192 @268183 @268184 @AdminPMUserDynamicFormExportPageToVerifyThatAfterManipulatingRecordIdValueNoAnyAlertGetDisplayed @DynamicLayoutExport_ToVerifyThatAfterManipulatingParentownerIdValueNoAnyAlertGetDisplayed
  Scenario Outline: Admin or PM_DynamicLayoutExport_To verify that after manipulating parentowner id value, no any alert get displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    When I click on "Menu" in the page details
    And I select "Download as PDF" from dropdown
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "parentowner id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "parentowner id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "parentowner id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268191 #268192
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Organization id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "Organization id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "%3balert('PLEX%20Rocks')%2f%2f909" script after "Organization id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back

    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "record id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "record id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "%3balert('PLEX%20Rocks')%2f%2f909" script after "record id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @268189 @268178 @268200 @268194 @268203 @268206 @268209 @SPI_DynamicLayoutExport_ToVerifyThatAfterManipulatingParentownerIdValue,NoAnyAlertGetDisplayed
  Scenario:SPI_DynamicLayoutExport_To verify that after manipulating parentowner id value, no any alert get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    When I click on "Menu" in the page details
    And I select "Download as PDF" from dropdown
    #268178
    Then I do not see alert popup box
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "parentowner id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "parentowner id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "%3balert('PLEX%20Rocks')%2f%2f909" script after "parentowner id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268200
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "parent id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "parent id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "parent id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268194
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Organization id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "Organization id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "%3balert('PLEX%20Rocks')%2f%2f909" script after "Organization id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268203
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "template" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "template" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "template" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268206
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Package id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "Package id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "Package id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268209
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "url id value" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "url id value" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "url id value" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back

  @268170 @268166
  Scenario: PM_UFormEdit_To verify that after manipulating Record id value, no any alert get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Program For Announcement Testing"
    When I click on "View" icon for "Program For Announcement Testing" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
      #268170
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Record id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268166
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "form id" and navigate to new URL in All Forms
    Then I do not see alert popup box
    And I navigate to back

  @268163
  Scenario: PM_UFormView_To verify that after manipulating Record id,Form Id value, no any alert get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Program For Announcement Testing"
    When I click on "View" icon for "Program For Announcement Testing" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
      #268163
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Record id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268159
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "form id" and navigate to new URL in All Forms
    Then I do not see alert popup box
    And I navigate to back

  @267792 @268198 @268199 @268204 @268205 @268207 @268208
  Scenario Outline: Admin_FlextableExport_To verify that after manipulating Application Id,Organization id value, alert not get displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    When I click on "Menu" in the page details
    And I select "Download as PDF" from dropdown
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Application Id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "Application Id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "Application Id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268198
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "parent id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "parent id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "parent id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268201 #268202
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "template" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "template" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "template" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268204 #268205
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "Package id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "Package id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "Package id" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    #268207 #268208
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "url id value" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "url id value" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    And I enter this "952%27%2c%27value%27%3a%20%27View%27%7d%3balert(%22PLEX%20Rocks%22)%2f%2f952" script after "url id value" and navigate to new URL
    Then I do not see alert popup box
    And I navigate to back
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @268210 @268211 @268213 @268214
  Scenario Outline:To verify that on entering script in available multiple input fields at a time, no any alert get displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    #268210 #268211
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "><img src=z onerror=alert(document.cookie)>" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "<script>alert('hi')</script>" into field "{testData:CcField}" on send email modal
    When I enter value "<script>alert('hi')</script>" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I do not see alert popup box
    When I click on "× " icon at "Send Email" modal after Email Sent Successfully
    #268213 #268214
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "><img src=z onerror=alert(document.cookie)><script>alert('hi')</script>" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "<script>alert('hi')</script>><img src=z onerror=alert(document.cookie)>" into field "{testData:CcField}" on send email modal
    When I enter value "<script>alert('hi')</script>" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I do not see alert popup box
    When I click on "× " icon at "Send Email" modal after Email Sent Successfully


    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @268212 @268215 @267717
  @Collab_ToVerifyThatOnEnteringScriptInCommentInputFieldAlertNotGetDisplayed
  @ToVerifyThatOnEnteringScriptInAvailableInputFieldsNoAnyAlertGetDisplayed
  @TToVerifyThatOnEnteringScriptInAvailableMultipleInputFieldsAtATimeNoAnyAlertGetDisplayed
  Scenario:SPI_Modal_To verify that on entering script in available input fields, no any alert get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    #267717
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I enter value "><img src=x onmouseover=alert`'collab'`>" in my feed section and share the comment
    Then I do not see alert popup box
    #268212
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I fill the details in field To "><img src=z onerror=alert(document.cookie)>" CC "<script>alert('hi')</script>" Subject "<script>alert('hi')</script>" in send email LWC
    When I click on "Send" button in send email modal
    Then I do not see alert popup box
    #268215
    When I click on "× " icon at "Send Email" modal after Email Sent Successfully
    And I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I fill the details in field To "><img src=z onerror=alert(document.cookie)><script>alert('hi')</script>" CC "<script>alert('hi')</script>" Subject "<script>alert('hi')</script>" in send email LWC
    When I click on "Send" button in send email modal
    Then I do not see alert popup box
    When I click on "× " icon at "Send Email" modal after Email Sent Successfully


  @267734 @267736 @267716
  @ToVerifyThatOnEnteringScriptTwiceInMyFeedInputFieldalertNotGetDisplayed
  @ToVerifyThatOnEnteringScriptTwice(WhereOneScriptOnNewLine)InMyFeedInputFieldAlertNotGetDisplayed
  @Collab_ToVerifyThatOnEnteringScriptInCommentInputFieldAlertNotGetDisplayed
  Scenario: PM_Application Edit layout - Collab_To verify that on entering script twice in My Feed input field, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    #267716
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I enter value "><img src=x onmouseover=alert`'collab'`>" in my feed section and share the comment
    Then I do not see alert popup box
    #267734
    And I enter value "><img src=x onmouseover=alert`'collab'`>><img src=x onmouseover=alert`'collab'`>" in my feed section and share the post
    Then I do not see alert popup box
    #267736
    And I pause execution for "5" seconds
    And I enter value "><img src=x onmouseover=alert`'collab'`>> \n<img src=x onmouseover=alert`'collab'`>" in my feed section and share the post
    Then I do not see alert popup box


  @267714
  @Admin_ApplicationEditLayoutCollab_ToVerifyThatOnEnteringScriptInCommentInputFieldAlertNotGetDisplayed
  Scenario:Admin_Application Edit layout - Collab_To verify that on entering script in Comment input field, alert not get displayed
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    #267714
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I enter value "><img src=x onmouseover=alert`'collab'`>" in my feed section and share the comment
    Then I do not see alert popup box

  @267681 @267682
    @AdminOrPm_Collab_ToMyFollowers_Link_ToVerifyThatOnEnteringScriptInMyFeedInputFieldAlertNotGetDisplayed
  Scenario Outline: Admin_Collab_To My Followers_Link_To verify that on entering script in My Feed input field, alert not get displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    When I click on "Link" inside My Feed
    And I enter value "https://www.google.com" inside "Link URL" in My Feed
    And I enter value "><img src=x onmouseover=alert`'collab'`>" inside "Link Name" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    Then I do not see alert popup box
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267684 @267677
  @Post_ToVerifyThatOnEnteringScriptInMyFeedInputFieldAlertNotGetDisplayed
  @SPI_Collab_ToMyFollowers_Link_ToVerifyThatOnEnteringScriptInMyFeedInputFieldAlertNotGetDisplayed
  Scenario:SPI_Collab_To My Followers_Link_To verify that on entering script in My Feed input field, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Collaboration (Collab)" tab
    #267677
    And I enter value "><img src=x onmouseover=alert`'collab'`>" in my feed section and share the post
    Then I do not see alert popup box
    #267684
    When I click on "Link" inside My Feed
    And I enter value "https://www.Rei.com" inside "Link URL" in My Feed
    And I enter value "><img src=x onmouseover=alert`'collab'`>" inside "Link Name" in My Feed
    And I select "My Followers" from dropdown in My Feed and Share Post
    Then I do not see alert popup box

  @267676 @ToVerifyThatOnEnteringScriptInMyFeedInputFieldAlertNotGetDisplayed
  Scenario:Admin and PM_Collab_To My Followers_Post_To verify that on entering script in My Feed input field, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "><img src=x onmouseover=alert`'collab'`>" in my feed section and share the post
    Then I do not see alert popup box

  @267678 @267679
    @AdminOrPM_Collab_AGroup_Post_ToVerifyThatOnEnteringScriptInMyFeedInputFieldAlertNotGetDisplayed
  Scenario Outline: Admin_Collab_A Group_Post_To verify that on entering script in My Feed input field, alert not get displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "><img src=x onmouseover=alert`'collab'`>" inside "Post" in My Feed
    And I select "A Group" from dropdown in My Feed and Share Post
    Then I do not see alert popup box
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267605
  Scenario: SPI_Application View layout - Collab_To verify that on entering script in My Feed input field, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I enter value "><img src=x onmouseover=alert`'collab'`>" in my feed section and share the post
    Then I do not see alert popup box

  @267649 @267650
    @AdminOrPMApplicationEditLayoutCollab_ToVerifyThatOnEnteringScriptInMyFeedInputFieldAlertNotGetDisplayed
  Scenario Outline: AdminOrPM_Application Edit layout - Collab_To verify that on entering script in My Feed input field, alert not get displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Collab" sub tab
    #267649 #267650
    And I enter value "><img src=x onmouseover=alert`'collab'`>" in my feed section and share the post
    Then I do not see alert popup box
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @267651
  Scenario: SPI_Application View layout - Collab_To verify that on entering script in My Feed input field, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I enter value "><img src=x onmouseover=alert`'collab'`>" in my feed section and share the post
    Then I do not see alert popup box

  @268145 @268147
  Scenario Outline:Admin,PM _DynamicForm_Edit layout_To Verify that after manipulating templatename value, no any alert get displayed
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "templateName" and navigate to new URL
    Then I do not see alert popup box
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @268148
  Scenario: SPI_DynamicForm_Edit layout_To Verify that after manipulating id value, no any alert get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "templateName" and navigate to new URL
    Then I do not see alert popup box

  @268139
  Scenario: Admin_DynamicForm_Edit layout_To Verify that after manipulating parentid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script after "parentid" and navigate to new URL
    Then I do not see alert popup box

  @256777 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To verify that after manipulating ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" and "&parentLayoutId" parameter and navigate to new URL
    Then I see error message contains text "You dont have permission to access this record. Please contact administrator."

  @257008 @sprint-19 @us-256030 @dilip
  Scenario: PM_View layout_To verify that after manipulating ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" and "&parentLayoutId" parameter and navigate to new URL
    Then I see error message contains text "You dont have permission to access this record. Please contact administrator."

  @257011 @sprint-19 @us-256030 @dilip
  Scenario:SPI_View layout_To verify that after manipulating ID (with adding template name immediately after ID) and template name both, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" and "&parentLayoutId" parameter and navigate to new URL
    Then I see error message contains text "You dont have permission to access this record. Please contact administrator."

  @257016 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To verify that after manipulating Package ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&parentId" parameter and navigate to new URL
    Then I see alert message "Error while rendering actions: List has no rows for assignment to SObject, trace: (GNT)" does not contain PLEX Rocks on respective form layout

  @257020 @sprint-19 @us-256030 @dilip
  Scenario: PM_View layout_To verify that after manipulating Package ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&parentId" parameter and navigate to new URL
    Then I see alert message "Error while rendering actions: List has no rows for assignment to SObject, trace: (GNT)" does not contain PLEX Rocks on respective form layout

  @257021 @sprint-19 @us-256030 @dilip
  Scenario: SPI_View layout_To verify that after manipulating Package ID (with adding template name immediately after ID) and template name both, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&parentId" parameter and navigate to new URL
    Then I see alert message "Error while rendering actions: List has no rows for assignment to SObject, trace: (GNT)" does not contain PLEX Rocks on respective form layout

  @257027 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To verify that after manipulating Parent ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&formInstanceId" parameter and navigate to new URL
    Then I see alert message "Error while rendering actions: List has no rows for assignment to SObject, trace: (GNT)" does not contain PLEX Rocks on respective form layout

  @257029 @sprint-19 @us-256030 @dilip
  Scenario: PM_View layout_To verify that after manipulating Parent ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&formInstanceId" parameter and navigate to new URL
    Then I see alert message "Error while rendering actions: List has no rows for assignment to SObject, trace: (GNT)" does not contain PLEX Rocks on respective form layout

  @257030 @sprint-19 @us-256030 @dilip
  Scenario: SPI_View layout_To verify that after manipulating Parent ID (with adding template name immediately after ID) and template name both, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&formInstanceId" parameter and navigate to new URL

    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&formInstanceId" parameter and navigate to new URL
    Then I see alert message "Error while rendering actions: List has no rows for assignment to SObject, trace: (GNT)" does not contain PLEX Rocks on respective form layout

  @257035 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To verify that after manipulating FormInstance ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&t=Application" parameter and navigate to new URL
    Then I see error message contains text ";alert(\"PLEX Rocks\")"

  @257039 @sprint-19 @us-256030 @dilip
  Scenario: PM_View layout_To verify that after manipulating FormInstance ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&t=Application" parameter and navigate to new URL
    Then I see error message contains text ";alert(\"PLEX Rocks\")"

  @257042 @sprint-19 @us-256030 @dilip
  Scenario: SPI_View layout_To verify that after manipulating FormInstance ID (with adding template name immediately after ID) and template name both, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&t=Application" parameter and navigate to new URL
    Then I see error message contains text "An unexpected connection error occurred."

  @257092 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To verify that after manipulating Table name (with adding template name immediately after table name) and template name both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&TableType" parameter and navigate to new URL
    Then I see alert message "Error while rendering actions: List has no rows for assignment to SObject, trace: (GNT)" does not contain PLEX Rocks on respective form layout

  @257093 @sprint-19 @us-256030 @dilip
  Scenario: PM_View layout_To verify that after manipulating Table name (with adding template name immediately after table name) and template name both, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&TableType" parameter and navigate to new URL
    Then I see alert message "Error while rendering actions: List has no rows for assignment to SObject, trace: (GNT)" does not contain PLEX Rocks on respective form layout

  @257095 @sprint-19 @us-256030 @dilip
  Scenario: SPI_View layout_To verify that after manipulating Table name (with adding template name immediately after table name) and template name both, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&TableType" parameter and navigate to new URL
    And I pause execution for "5" seconds
    Then I see alert message "Error while rendering actions: List has no rows for assignment to SObject, trace: (GNT)" does not contain PLEX Rocks on respective form layout

  @257099 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To verify that after manipulating ID, template name, package id, parent id, forminstance id and table name all at a same time, then alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script before "&templateName", "&parentLayoutId", "&parentId", "&formInstanceId", "&RefreshBehaviour" parameter and navigate to new URL
    And I pause execution for "5" seconds
    Then I see error message contains text "You dont have permission to access this record. Please contact administrator."

  @257101 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To Verify that after manipulating id value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" parameter and navigate to new URL
    Then I see error message contains text "You dont have permission to access this record. Please contact administrator."

  @257102 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To Verify that after manipulating packageid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentId" parameter and navigate to new URL
    Then I do not see alert popup box

  @257103 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To Verify that after manipulating parentid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&formInstanceId" parameter and navigate to new URL
    Then I do not see alert popup box

  @257104 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To Verify that after manipulating TableName value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&TableType" parameter and navigate to new URL
    Then I do not see alert popup box

  @257105 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To Verify that after manipulating forminstanceid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&t=Application" parameter and navigate to new URL
    Then I do not see alert popup box

  @257106 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To Verify that after manipulating templatename value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" parameter and navigate to new URL
    Then I do not see alert popup box

  @257107 @sprint-19 @us-256030 @dilip
  Scenario: PM_View layout_To Verify that after manipulating id value, no any alert get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" and "&formInstanceId" parameter and navigate to new URL
    Then I do not see alert popup box

  @257108 @sprint-19 @us-256030 @dilip
  Scenario: SPI_View layout_To Verify that after manipulating id value, no any alert get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&TableType" parameter and navigate to new URL
    And I pause execution for "5" seconds
    Then I see alert message "Error while rendering actions: List has no rows for assignment to SObject, trace: (GNT)" does not contain PLEX Rocks on respective form layout

  @257584 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To verify that after manipulating ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" and "&parentLayoutId" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257586 @sprint-19 @us-256030 @dilip
  Scenario: PM_Edit layout_To verify that after manipulating ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" and "&parentLayoutId" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257591 @sprint-19 @us-256030 @dilip
  Scenario: SPI_Edit layout_To verify that after manipulating ID (with adding template name immediately after ID) and template name both, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" and "&parentLayoutId" parameter and navigate to new URL
    Then I see error message contains text "An unexpected connection error occurred."

  @257593 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To verify that after manipulating Package ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&parentId" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257596 @sprint-19 @us-256030 @dilip
  Scenario: PM_Edit layout_To verify that after manipulating Package ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&parentId" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257597 @sprint-19 @us-256030 @dilip
  Scenario: SPI_Edit layout_To verify that after manipulating Package ID (with adding template name immediately after ID) and template name both, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&parentId" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257598 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To verify that after manipulating Parent ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&formInstanceId" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257601 @sprint-19 @us-256030 @dilip
  Scenario: PM_Edit layout_To verify that after manipulating Parent ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&formInstanceId" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257604 @sprint-19 @us-256030 @dilip
  Scenario: SPI_Edit layout_To verify that after manipulating Parent ID (with adding template name immediately after ID) and template name both, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&formInstanceId" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257607 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To verify that after manipulating FormInstance ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&RefreshBehaviour" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257608 @sprint-19 @us-256030 @dilip
  Scenario: PM_Edit layout_To verify that after manipulating FormInstance ID (with adding template name immediately after ID) and template name both, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&RefreshBehaviour" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257610 @sprint-19 @us-256030 @dilip
  Scenario: SPI_Edit layout_To verify that after manipulating FormInstance ID (with adding template name immediately after ID) and template name both, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&RefreshBehaviour" parameter and navigate to new URL
    Then I see error message contains text "An unexpected connection error occurred."

  @257612 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To verify that after manipulating Table name (with adding template name immediately after table name) and template name both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&TableType" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257626 @sprint-19 @us-256030 @dilip
  Scenario: PM_Edit layout_To verify that after manipulating Table name (with adding template name immediately after table name) and template name both, alert not get displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&TableType" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257629 @sprint-19 @us-256030 @dilip
  Scenario: SPI_Edit layout_To verify that after manipulating Table name (with adding template name immediately after table name) and template name both, alert not get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" and "&TableType" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257633 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To verify that after manipulating ID, template name, package id, parent id, forminstance id and table name all at a same time, then alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script before "&templateName", "&parentLayoutId", "&parentId", "&formInstanceId", "&RefreshBehaviour" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257634 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To Verify that after manipulating id value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" parameter and navigate to new URL
    Then I see error message contains text "PLEX Rocks"

  @257635 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To Verify that after manipulating packageid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentId" parameter and navigate to new URL
    Then I do not see alert popup box

  @257637 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To Verify that after manipulating parentid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&formInstanceId" parameter and navigate to new URL
    Then I do not see alert popup box

  @257638 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To Verify that after manipulating TableName value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&TableType" parameter and navigate to new URL
    Then I do not see alert popup box

  @257639 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To Verify that after manipulating forminstanceid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&RefreshBehaviour" parameter and navigate to new URL
    Then I do not see alert popup box

  @257640 @sprint-19 @us-256030 @dilip
  Scenario: Admin_Edit layout_To Verify that after manipulating templatename value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" parameter and navigate to new URL
    Then I do not see alert popup box

  @257641 @sprint-19 @us-256030 @dilip
  Scenario: PM_Edit layout_To Verify that after manipulating id value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" parameter and navigate to new URL
    Then I do not see alert popup box

  @257642 @sprint-19 @us-256030 @dilip
  Scenario: SPI_Edit layout_To Verify that after manipulating id value, no any alert get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" parameter and navigate to new URL
    Then I do not see alert popup box

  @257866 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To verify that after manipulating ID (with adding template name immediately after ID) and template name (with adding ID immediately after template name) both, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" and "&parentLayoutId" parameter and navigate to new URL
    Then I do not see alert popup box

  @257874 @sprint-19 @us-256030 @dilip
  Scenario: Admin_View layout_To verify that after manipulating ID and template name both by adding respective script twice, alert not get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" script twice before "&templateName" and "&parentLayoutId" parameter and navigate to new URL
    Then I do not see alert popup box

    ##########User Story 266643: QA - NED - Resolve the issues mentioned in new Plex Report (Suite ID: 269359)##########

  @267652
  Scenario:Admin_CK Editor_To Verify that on entering respective script into CK editor which exists on Modal, no any alert get appeared
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I pause execution for "2" seconds
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Subject" into field "Subject" on send email modal
    When I enter value "<script>alert('hi')</script>" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I do not see alert popup box
    When I close modal by clicking the top right x button
    And I refresh the page
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Subject" into field "Subject" on send email modal
    When I enter value "><img src=z onerror=alert(document.cookie)>" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I do not see alert popup box

  @267854
  Scenario:PM_CK Editor_To Verify that on entering respective script into CK editor which exists on Modal, no any alert get appeared
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I pause execution for "2" seconds
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Subject" into field "Subject" on send email modal
    When I enter value "<script>alert('hi')</script>" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I do not see alert popup box
    When I close modal by clicking the top right x button
    And I refresh the page
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Subject" into field "Subject" on send email modal
    When I enter value "><img src=z onerror=alert(document.cookie)>" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I do not see alert popup box

  @267855
  Scenario: SPI_CK Editor_To Verify that on entering respective script into CK editor which exists on Modal, no any alert get appeared
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I pause execution for "2" seconds
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    When I enter value "<script>alert('hi')</script>" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I do not see alert popup box
    When I close modal by clicking the top right x button
    And I refresh the page
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    When I enter value "><img src=z onerror=alert(document.cookie)>" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I do not see alert popup box

  @268124
  Scenario: Admin_DynamicFormView_To Verify that after manipulating id value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" parameter and navigate to new URL
    Then I do not see alert popup box

  @268125
  Scenario: Admin_DynamicFormView_To Verify that after manipulating packageid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentId" parameter and navigate to new URL
    Then I do not see alert popup box

  @268126
  Scenario: Admin_DynamicFormView_To Verify that after manipulating parentid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&formInstanceId" parameter and navigate to new URL
    Then I do not see alert popup box

  @268127
  Scenario: Admin_DynamicFormView_To Verify that after manipulating TableName value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&TableType" parameter and navigate to new URL
    Then I do not see alert popup box

  @268128
  Scenario: Admin_DynamicFormView_To Verify that after manipulating forminstanceid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&t=Application" parameter and navigate to new URL
    Then I do not see alert popup box

  @268129
  Scenario: Admin_DynamicFormView_To Verify that after manipulating templatename value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentLayoutId" parameter and navigate to new URL
    Then I do not see alert popup box

  @268130
  Scenario: PM_DynamicFormView_To Verify that after manipulating id value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" parameter and navigate to new URL
    Then I do not see alert popup box

  @268131
  Scenario: SPI_DynamicFormView_To Verify that after manipulating id value, no any alert get displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&formInstanceId" parameter and navigate to new URL
    Then I do not see alert popup box

  @268132
  Scenario: Admin_DynamicForm_Edit layout_To Verify that after manipulating id value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&templateName" parameter and navigate to new URL
    Then I do not see alert popup box

  @268138
  Scenario: Admin_DynamicForm_Edit layout_To Verify that after manipulating packageid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&parentId" parameter and navigate to new URL
    Then I do not see alert popup box

  @268139
  Scenario: Admin_DynamicForm_Edit layout_To Verify that after manipulating parentid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&formInstanceId" parameter and navigate to new URL
    Then I do not see alert popup box

  @268141
  Scenario: Admin_DynamicForm_Edit layout_To Verify that after manipulating TableName value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&TableType" parameter and navigate to new URL
    Then I do not see alert popup box

  @268143
  Scenario: Admin_DynamicForm_Edit layout_To Verify that after manipulating forminstanceid value, no any alert get displayed
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I enter this "%27%3balert(%22PLEX%20Rocks%22)%2f%2f909" before "&RefreshBehaviour" parameter and navigate to new URL
    Then I do not see alert popup box


  @268216
  Scenario Outline: Admin_Modal_To verify that after entering details and on clicking on action on modal (where parent id of action URL is manipulated), no any alert get displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action URL | <OriganalActionUrl> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue  | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL | <NewActionUrl> | CommunicationHistory | Name                      | Send Email                 |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Test@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "<script>alert('hi')</script>" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I do not see alert popup box
    Examples:
      | OriganalActionUrl                                                                                                | NewActionUrl                                                                                                                                                |
      | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}&emailFieldName={!emailFieldName}&mode=send&renderType=Edit | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}<script>alert('hi')</script>&emailFieldName={!emailFieldName}&mode=send&renderType=Edit                |
      | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}&emailFieldName={!emailFieldName}&mode=send&renderType=Edit | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}><img src=z onerror=alert(document.cookie)>&emailFieldName={!emailFieldName}&mode=send&renderType=Edit |

  @268217
  Scenario Outline: PM_Modal_To verify that after entering details and on clicking on action on modal (where parent id of action URL is manipulated), no any alert get displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action URL | <OriganalActionUrl> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue  | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL | <NewActionUrl> | CommunicationHistory | Name                      | Send Email                 |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Test@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "<script>alert('hi')</script>" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I do not see alert popup box
    Examples:
      | OriganalActionUrl                                                                                                | NewActionUrl                                                                                                                                                |
      | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}&emailFieldName={!emailFieldName}&mode=send&renderType=Edit | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}<script>alert('hi')</script>&emailFieldName={!emailFieldName}&mode=send&renderType=Edit                |
      | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}&emailFieldName={!emailFieldName}&mode=send&renderType=Edit | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}><img src=z onerror=alert(document.cookie)>&emailFieldName={!emailFieldName}&mode=send&renderType=Edit |

  @268218
  Scenario Outline: SPI_Modal_To verify that after entering details and on clicking on action on modal (where parent id of action URL is manipulated), no any alert get displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action URL | <OriganalActionUrl> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue  | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL | <NewActionUrl> | CommunicationHistory | Name                      | Send Email                 |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    When I enter value "Automation testing" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    Then I do not see alert popup box
    Examples:
      | OriganalActionUrl                                                                                                | NewActionUrl                                                                                                                                                |
      | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}&emailFieldName={!emailFieldName}&mode=send&renderType=Edit | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}<script>alert('hi')</script>&emailFieldName={!emailFieldName}&mode=send&renderType=Edit                |
      | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}&emailFieldName={!emailFieldName}&mode=send&renderType=Edit | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}><img src=z onerror=alert(document.cookie)>&emailFieldName={!emailFieldName}&mode=send&renderType=Edit |

  @268220
  Scenario Outline: Admin_Modal_To verify that after entering details and on clicking on action on modal (where emailFieldname of action URL is manipulated), no any alert get displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue   | filterId         |
      | Flex Table Action     | Action URL | <OriganalActionUrl> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue  | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL | <NewActionUrl> | CommunicationHistory | Name                      | Send Email                 |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Test@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Automation Subject" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I do not see alert popup box
    Examples:
      | OriganalActionUrl                                                                                                | NewActionUrl                                                                                                                                                |
      | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}&emailFieldName={!emailFieldName}&mode=send&renderType=Edit | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}&emailFieldName={!emailFieldName}<script>alert('hi')</script>&mode=send&renderType=Edit                |
      | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}&emailFieldName={!emailFieldName}&mode=send&renderType=Edit | /apex/SendEmail?parentId={!parentRecordIdOfFlexTable}&emailFieldName={!emailFieldName}><img src=z onerror=alert(document.cookie)>&mode=send&renderType=Edit |

