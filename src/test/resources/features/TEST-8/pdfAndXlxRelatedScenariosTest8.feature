@allPdfAndXlxRelatedScenariosTest8 @regression-test8 @skipOnJenkins
Business Need: All pdf and xls related scenario including component and completed backlogs
  Test all download pdf and xls based scenarios
  As a configuration manager i make different configurational changes for download pdf and xls related scenarios and will validate them.

  @109375    @verifyThatEnhancedDataTableIsDisplayedAtRecordLevelByLoggedInAsPMUserInsideDownloadedPDF
  Scenario: validate enhanced data table at record table is rendered properly by PM user inside downloaded PDF
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I download the file
    Then I see "Project Role" on page "1" of "govgrants" pdf file

  @109376    @verifyThatFlexTableIsDisplayedAtPhaseLevelByLoggedInAsPMUserInsideDownloadedPDF
  Scenario: validate flex table at phase level is rendered properly by PM user inside downloaded PDF
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I click on parallel lines menu bar with data target value "#toggleFlexTableActiveGrants"
    And I select "Download as PDF" from parallel lines dropdown of "Grants - All"
    And I download the file
    Then I see "Active" on page "1" of "govgrants" pdf file

  @109377    @verifyThatByLoginAsPMUserN2GGridDisplayed
  Scenario: validate by logged in as PM user N2G grid displayed
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block:Page Block Detail | Is Active | false             | Awards             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | Awards             | GNT__PageBlockTitle__c    | Site Visit Requirements    |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentAward}"
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Subawards" sub tab
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Management" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridSiteVisitSchedule"
    And I select "Download as PDF" from parallel lines dropdown of "Site Visits Requirements"
    And I download the file
    Then I see "Visit Name" on page "1" of "govgrants" pdf file

  @109610    @verifyThatPageContentDisplayedProperlyByLoggedInAsPMUserAndClickOnDownloadedPDFFromPageLayout
  Scenario: validate if logged in as PM user and downloaded PDF from page layout then page content displayed in pdf file
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Automation Announcement for FDM" on page "1" of "govgrants" pdf file

  @109612    @verifyThatPageContentDisplayedProperlyByLoggedInAsSPIUserAndClickOnDownloadedPDFFromPageLayout
  Scenario: validate if logged in as SPI user and downloaded PDF from page layout then page content displayed in pdf file
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Automation Directed Announcement" on page "1" of "govgrants" pdf file