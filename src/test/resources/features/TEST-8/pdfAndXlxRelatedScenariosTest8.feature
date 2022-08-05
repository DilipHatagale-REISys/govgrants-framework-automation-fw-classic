@vrushali @allPdfAndXlxRelatedScenariosTest8 @regression-test8 @skipOnJenkins
Business Need: All pdf and xls related scenario including component and completed backlogs
  Test all download pdf and xls based scenarios
  As a configuration manager i make different configurational changes for download pdf and xls related scenarios and will validate them.

  @109375    @verifyThatEnhancedDataTableIsDisplayedAtRecordLevelByLoggedInAsPMUserInsideDownloadedPDF
  Scenario: validate enhanced data table at record table is rendered properly by PM user inside downloaded PDF
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I download the file
    Then I see "Project Role" on page "1" of "govgrants" pdf file

  @test @109376    @verifyThatFlexTableIsDisplayedAtPhaseLevelByLoggedInAsPMUserInsideDownloadedPDF
  Scenario: validate flex table at phase level is rendered properly by PM user inside downloaded PDF
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I click on parallel lines menu bar with data target value "#toggleFlexTableActiveGrants"
    And I select "Download as PDF" from parallel lines dropdown of "Grants - All"
    And I download the file
    Then I see "Active" on page "1" of "govgrants" pdf file

  @wip @109377    @verifyThatByLoginAsPMUserN2GGridDisplayed
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

  @test @109610    @verifyThatPageContentDisplayedProperlyByLoggedInAsPMUserAndClickOnDownloadedPDFFromPageLayout
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
    Then I see "Automation Application" on page "1" of "govgrants" pdf file

  @wip @109612    @verifyThatPageContentDisplayedProperlyByLoggedInAsSPIUserAndClickOnDownloadedPDFFromPageLayout
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
    Then I see "Program For Application" on page "1" of "govgrants" pdf file

  @wip @109378    @verifyThatByLoginAsSPIUserMEGridDisplayedInsideDownloadedPDF
  Scenario: validate by logged in as SPI user ME grid displayed inside downloaded pdf
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block:Page Block Detail | Is Active | false             | RecipientAwards    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | RecipientAwards    | GNT__PageBlockTitle__c    | Focus Areas                |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Activities" subheader on left panel
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridRecipentAwardServiceAreas"
    And I select "Download as PDF" from parallel lines dropdown of "Focus Areas"
    And I download the file
    Then I see "Automation Permanent Focus Area" on page "1" of "govgrants" pdf file

  @wip @109381    @verifyThatByLoginAsSPIUserN2GGridDisplayedInsideDownloadedPDF
  Scenario: validate by logged in as SPI user N2G grid displayed inside downloaded pdf
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block:Page Block Detail | Is Active | false             | Awards             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | Awards             | GNT__PageBlockTitle__c    | Site Visit Requirements    |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Activities" subheader on left panel
    When I click on "View" icon for "AD-REI-01" inside table
    When I navigate to "Management" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridRecipentSiteVisitSchedule"
    And I select "Download as PDF" from parallel lines dropdown of "Site Visits Requirements"
    And I download the file
    Then I see "Site Visit Period" on page "5" of "govgrants" pdf file

  @test @109384    @verifyThatByLoginAsSPIUserFlexTableDisplayedInsideDownloadedPDF
  Scenario: validate by logged in as SPI user flex table grid displayed inside downloaded pdf
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablepopupflextable"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - All"
    And I download the file
    Then I see "Applications - Submitted" on page "1" of "govgrants" pdf file

  @test @109387    @verifyThatByLoginAsSPIUserFlexTableEnhancedDisplayedInsideDownloadedPDF
  Scenario: validate by logged in as SPI user flex table enhanced displayed inside downloaded pdf
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Contacts"
    And I download the file
    Then I see "Project Director/Manager" on page "1" of "govgrants" pdf file

  @test @109385    @verifyThatByLoginAsSPIUserFlexGridEnhancedAtRecordLevelDisplayedInsideDownloadedPDF
  Scenario: validate by logged in as SPI user flex grid enhanced at record level is displayed inside downloaded pdf
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Budget Periods"
    And I download the file
    Then I see "Budget Periods" on page "1" of "govgrants" pdf file

  @test @109673    @verifyThatByLoginAsSPIUserFlexTableEnhancedDisplayedInsideDownloadedXLS
  Scenario: validate by logged in as SPI user flex table enhanced displayed inside downloaded XLS
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#AppContactFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Contacts"
    Then I see "Project Director/Manager" in downloaded xls or csv file "govgrants"

  @test @doubt @109766    @verifyThatByLoginAsSPIUserFlexTableDisplayedInsideDownloadedCSV
  Scenario: validate by logged in as SPI user flex table displayed inside downloaded csv
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I click on parallel lines menu bar with data target value "#toggleFlexTablepopupflextable"
    And I select "Download as XLS" from parallel lines dropdown of "Applications - All"
    Then I see "Applications - All" in downloaded xls or csv file "govgrants"

  @test @109769    @verifyThatFlexTableIsDisplayedAtPhaseLevelByLoggedInAsPMUserInsideDownloadedCSV
  Scenario: validate flex table at phase level is rendered properly by PM user inside downloaded csv
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    When I click on parallel lines menu bar with data target value "#EnhanceAppBudCateGrantorFlexTableFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Budget Categories"
    Then I see "Focus Area" in downloaded xls or csv file "govgrants"

  @test @109661    @verifyThatEnhancedDataTableIsDisplayedAtRecordLevelByLoggedInAsPMUserInsideDownloadedXLS
  Scenario: validate enhanced data table at record table is rendered properly by PM user inside downloaded XLS
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}" inside table
    When I navigate to "Overview" sub tab
    When I click on parallel lines menu bar with data target value "#DataTableEnhanceProgramContactsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Contacts"
    Then I see "Project Role" in downloaded xls or csv file "govgrants"

  @test @109258    @verifyThatApplicationFlexTableIsDisplayedAtPhaseByLoggedInAsPMUserInsideDownloadedPDF
  Scenario: validate flex table at application phase level is rendered properly by PM user inside downloaded PDF
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I click on parallel lines menu bar with data target value "#toggleFlexTableAppReviewList"
    And I select "Download as PDF" from parallel lines dropdown of "Applications - All"
    And I download the file
    Then I see "Applications - All" on page "1" of "govgrants" pdf file

  @wip  @109391    @verifyThatByLoginAsPMUserMEGridDisplayedInsideDownloadedPDF
  Scenario: validate by logged in as PM user ME grid displayedInsideDownloadedPDF
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block:Page Block Detail | Is Active | false             | Awards             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | Awards             | GNT__PageBlockTitle__c    | Focus Areas                |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentAward}"
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Subawards" sub tab
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridGrantorAwardServiceAreas"
    And I select "Download as PDF" from parallel lines dropdown of "Focus Areas"
    And I download the file
    Then I see "Focus Area" on page "1" of "govgrants" pdf file

  @wip @109748    @verifyThatByLoginAsPMUserN2GGridDisplayedInsideDownloadedXLS
  Scenario: validate by logged in as PM user N2G grid displayed inside downloaded xls
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
    And I select "Download as XLS" from parallel lines dropdown of "Site Visits Requirements"
    Then I see "Visit Name" in downloaded xls or csv file "govgrants"

  @wip @109830    @verifyThatByLoginAsSPIUserMEGridDisplayedInsideDownloadedXLS
  Scenario: validate by logged in as SPI user ME grid displayed inside downloaded XLS
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block:Page Block Detail | Is Active | false             | RecipientAwards    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | RecipientAwards    | GNT__PageBlockTitle__c    | Focus Areas                |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Activities" subheader on left panel
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridRecipentAwardServiceAreas"
    And I select "Download as XLS" from parallel lines dropdown of "Focus Areas"
    Then I see "Automation Permanent Focus Area" in downloaded xls or csv file "govgrants"

  @wip @110011    @verifyThatByLoginAsSPIUserN2GGridDisplayedInsideDownloadedXLS
  Scenario: validate by logged in as SPI user N2G grid displayed inside downloaded XLS
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block:Page Block Detail | Is Active | false             | Awards             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | Awards             | GNT__PageBlockTitle__c    | Site Visit Requirements    |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Activities" subheader on left panel
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Management" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridRecipentSiteVisitSchedule"
    And I select "Download as XLS" from parallel lines dropdown of "Site Visits Requirements"
    Then I see "Site Visit Period" in downloaded xls or csv file "govgrants"

  @test @109749    @verifyThatFlexGridEnhancedIsDisplayedAtRecordLevelByLoggedInAsPMUserInsideDownloadedXLS
  Scenario: validate flex grid enhanced at record table is rendered properly by PM user inside downloaded XLS
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "Pre-Screen Review" in downloaded xls or csv file "govgrants"

  @wip @109393    @verifyThatByLoginAsPMUserMEGridDisplayedInsideDownloadedXLS
  Scenario: validate by logged in as PM user ME grid displayed Inside Downloaded XLS
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block:Page Block Detail | Is Active | false             | Awards             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | Awards             | GNT__PageBlockTitle__c    | Focus Areas                |
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentAward}"
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Subawards" sub tab
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFGridGrantorAwardServiceAreas"
    And I select "Download as XLS" from parallel lines dropdown of "Focus Areas"
    Then I see "Focus Area" in downloaded xls or csv file "govgrants"

  @test @110014    @verifyThatFlexGridEnhancedIsDisplayedAtRecordLevelByLoggedInAsPMUserInsideDownloadedPDF
  Scenario: validate flex grid enhanced at record table is rendered properly by PM user inside downloaded PDF
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on parallel lines menu bar with data target value "#ProgramReviewStepTemplatesFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Review Steps"
    Then I see "Pre-Screen Review" in downloaded xls or csv file "govgrants"


  @wip @100486    @validateDownloadAsPDFIfSkipPDFDefaultThemeCheckBoxIsCheckedAtDynamicFormModalViewMode
  Scenario Outline: validate by download as pdf if skip default theme checkbox is checked at dynamic form modal view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue       | filterId         |
      | Capture Form          | Hide Pdf Download      | false                   | ApiGeneratedId:0 |
      | Capture Form          | Skip PDF Default Theme | false                   | ApiGeneratedId:1 |
      | Flex Table Action     | Action URL Long        | <actionUrlLongOldValue> | ApiGeneratedId:2 |
      | Flex Table Action     | Where To Open ?        | NewTab                  | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download      | false                   | CF-0000            |                           |                            |
      | Capture Form:General  | Skip PDF Default Theme | true                    | CF-0000            |                           |                            |
      | Flex Table Action     | Action URL Long        | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ?        | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" action at the "Dynamic Form 1" modal
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Dynamic Form 1" on page "1" of "govgrants" pdf file

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @wip @100489    @validateDownloadAsPDFIfSkipPDFDefaultThemeCheckBoxIsCheckedAtDynamicFormLayoutViewMode
  Scenario: validate by download as pdf if skip default theme checkbox is checked at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download      | false             | ApiGeneratedId:0 |
      | Capture Form          | Skip PDF Default Theme | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download      | false         | CF-0000            |                           |                            |
      | Capture Form:General  | Skip PDF Default Theme | true          | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Dynamic Form 1" on page "1" of "govgrants" pdf file

  @wip @100127   @validateDependentQuestionJsonFieldByMakingNumberAndWrittenFieldAsRequiredFromMultipleSectionsUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by making number and written as req from section 1 and section 3 on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                                             | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowReqWrittenAndNumberFieldUsingCurrencyFieldValueAtSection1ByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                                                               | CI-0023            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                              | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY4                                                                                      | CI-0036            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowReqWrittenAndNumberFieldCurrencyFieldValueAtSection3ByProvidingNameOfField      | CI-0036            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoYE                                                                                      | CI-0038            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoXz                                                                                      | CI-0035            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 1" page block
      | Field   | Value |
      | Written |       |
      | Number  |       |
    When I enter values into "Section 3" page block
      | Field             | Value |
      | Written Section 3 |       |
      | Number Section 3  |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Written is Required to save under Section 1.           |
      | Number is Required to save under Section 1.            |
      | Written Section 3 is Required to save under Section 3. |
      | Number Section 3 is Required to save under Section 3.  |

  @wip @100873    @validateCurrencyValueWithSymbolIsDisplayedInsideDownloadedPDFAtDynamicFormLayoutViewMode
  Scenario: validate currency value with symbol is displayed inside downloaded PDF at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "$12.00" on page "1" of "govgrants" pdf file

  @wip @100874    @validatePercentValueWithSymbolIsDisplayedInsideDownloadedPDFAtDynamicFormLayoutViewMode
  Scenario: validate percent value with symbol is displayed inside downloaded PDF at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "12.00 %" on page "1" of "govgrants" pdf file

  @wip @100877    @validateMaxScoreIsDisplayedInsideDownloadedPDFAtDynamicFormLayoutViewMode
  Scenario: validate max score as 0.0 is displayed inside downloaded PDF at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "0.0" on page "1" of "govgrants" pdf file

  @wip @100879    @validateThatForCheckboxAValueAsTrueOrFalseIsDisplayedInsideDownloadedPDFAtDynamicFormLayoutViewMode
  Scenario: validate if checkbox field is checked then it should displayed inside downloaded PDF as true at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "true" on page "1" of "govgrants" pdf file

  @wip @100880    @validateDecimalValuesAtNumberCurrencyPercentFieldIsDisplayedInsideDownloadedPDFAtDynamicFormLayoutViewMode
  Scenario: validate decimal values are displayed for number , currency, percent field inside downloaded PDF at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I softly see "$12.00" on page "1" of "govgrants" pdf file
    Then I softly see "12.00 %" on page "1" of "govgrants" pdf file
    Then I softly see "12.00" on page "1" of "govgrants" pdf file

  @wip @100994    @validateSectionInstructionIsDisplayedInsideDownloadedPDFAtDynamicFormLayoutViewMode
  Scenario: validate section instruction is displayed inside downloaded PDF at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Demo Section instruction" on page "1" of "govgrants" pdf file

  @wip @101005    @validateSectionInstructionIsDisplayedInsideDownloadedPDFAtDynamicFormLayoutViewMode
  Scenario: validate section instruction is displayed inside downloaded PDF at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Demo Section instruction" on page "1" of "govgrants" pdf file

  @wip @101005    @validateWrittenFieldValueIsDisplayedInsideDownloadedPDFAtDynamicFormLayoutViewMode
  Scenario: validate written field value is displayed inside downloaded PDF at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Test Automation" on page "1" of "govgrants" pdf file

  @wip @101006    @validateRichTextAreaFieldValueIsDisplayedInsideDownloadedPDFAtDynamicFormLayoutViewMode
  Scenario: validate rich text area field value is displayed inside downloaded PDF at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Test Automation Rich Text" on page "1" of "govgrants" pdf file

  @wip @101025   @validateIfCurrencyFieldIsHiddenFromUIThenItIsNotDisplayedInsideDownloadedPDFAtDynamicForm
  Scenario: validate if currency field is hidden from ui then it is not displayed in downloaded pdf at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                   | CI-0000            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCurrencyUsingWrittenFieldValueForPDF | CI-0000            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                  | CI-0004            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I cannot see "Currency" on page "1" of "govgrants" pdf file

  @wip @101026   @validateIfCurrencyFieldIsDisabledFromUIThenItIsDisplayedInsideDownloadedPDFAtDynamicForm
  Scenario: validate if currency field is disabled from ui then it is displayed in downloaded pdf at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                      | CI-0000            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyUsingWrittenFieldValueForPDF | CI-0000            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                     | CI-0004            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Currency" on page "1" of "govgrants" pdf file

  @wip @106081   @validateIfCurrencyNumberPercentFieldIsHiddenFromUIThenItIsNotDisplayedInsideDownloadedPDFAtDynamicForm
  Scenario: validate if currency, number , percent field is hidden from ui then it is not displayed in downloaded pdf at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                               | CI-0000            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCurrencyNumberPercentFieldsOnPDF | CI-0000            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                              | CI-0004            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                | CI-0006            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                               | CI-0005            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I softly cannot see "Currency" on page "1" of "govgrants" pdf file
    Then I softly cannot see "Number" on page "1" of "govgrants" pdf file
    Then I softly cannot see "Percent" on page "1" of "govgrants" pdf file

  @wip @106082   @validateIfCurrencyNumberPercentFieldIsDisabledFromUIThenItIsDisplayedInsideDownloadedPDFAtDynamicForm
  Scenario: validate if currency, number , percent field is disabled from ui then it is displayed in downloaded pdf at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                  | CI-0000            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyNumberPercentFieldsOnPDF | CI-0000            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                 | CI-0004            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                   | CI-0006            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                  | CI-0005            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I softly see "Currency" on page "1" of "govgrants" pdf file
    Then I softly see "Number" on page "1" of "govgrants" pdf file
    Then I softly see "Percent" on page "1" of "govgrants" pdf file

  @wip @106087   @validateIfCurrencyIsDisabledAndNumberPercentFieldIsHiddenFromUIThenItIsDisplayedInsideDownloadedPDFAtDynamicForm
  Scenario: validate if currency is disabled and number, percent field is hidden from ui then it is displayed accordingly in downloaded pdf at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                         | CI-0000            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideAndDisableCurrencyNumberPercentFieldsOnPDF | CI-0000            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                        | CI-0004            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                          | CI-0006            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                         | CI-0005            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I softly see "Number" on page "1" of "govgrants" pdf file
    Then I softly cannot see "Currency" on page "1" of "govgrants" pdf file
    Then I softly cannot see "Percent" on page "1" of "govgrants" pdf file

  @wip @106088   @validateDisabledAndHiddenFieldsLikeCurrencyNumberPercentDateDisplayedInsideDownloadedPDFAtDynamicForm
  Scenario: validate disabled and hidden fields like number, percent, currency, date field displayed accordingly in downloaded pdf at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                         | CI-0000            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideAndDisableCurrencyNumberPercentDateFieldsOnPDF | CI-0000            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                        | CI-0004            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                          | CI-0006            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                         | CI-0005            |                           |                            |
      | Capture Item:General  | Question Identifier     | Date                                                         | CI-0001            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I softly see "Number" on page "1" of "govgrants" pdf file
    Then I softly cannot see "Currency" on page "1" of "govgrants" pdf file
    Then I softly cannot see "Percent" on page "1" of "govgrants" pdf file
    Then I softly cannot see "Date" on page "1" of "govgrants" pdf file

  @test @88132    @validateAFormIsDisplayedInDownloadedPDF
  Scenario: validate that a form is displayed in downloaded PDF
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Program For Announcement Testing"
    When I click on "View" icon for "Program For Announcement Testing" inside table
    When I navigate to "Setup" sub tab
    When I click on parallel lines menu bar with data target value "#DynamicFormFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "DynamicForm"
    And I download the file
    Then I see "Dynamic Form" on page "1" of "govgrants" pdf file

  @test @111908    @verifyThatByLoginAsAdminUserAllFormsTableDisplayedInsideDownloadedPDF
  Scenario: validate by logged in as Admin user All Forms flex table enhanced displayed inside downloaded pdf
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Files" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableFormEnhancedTable"
    And I select "Download as PDF" from parallel lines dropdown of "All Forms"
    And I download the file
    Then I see "Standard Assurances Form" on page "1" of "govgrants" pdf file

  @test @111910    @verifyThatByLoginAsAdminUserAllFormsTableDisplayedInsideDownloadedPDFFromPageLayout
  Scenario: validate by logged in as Admin user All Forms flex table enhanced displayed inside downloaded pdf from page layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    And I pause execution for "5" seconds
    Then I see "All Forms" on page "5" of "govgrants" pdf file

  @wip @100463    @validateByClickOnDowloadAtPDFItIsGettingOpenedInNewTabAtDynamicFormLayoutViewMode
  Scenario: validate by click on download as pdf it is getting open in new tab at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Automation Internal Announcement for Testing"
    When I click on "View" icon for "Automation Internal Announcement for Testing" inside table
    When I navigate to "Setup tabs" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see new tab is opened