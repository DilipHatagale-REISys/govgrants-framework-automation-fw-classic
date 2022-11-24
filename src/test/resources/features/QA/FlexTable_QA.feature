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