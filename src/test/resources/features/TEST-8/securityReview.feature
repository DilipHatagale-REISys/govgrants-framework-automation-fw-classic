@SecurityReview @regression-test8 @collab
Business Need: security review Scenarios
  Test all security review related scenarios
  As a configuration manager i make different configurational changes in collab component and will validate them.


  @105888    @verifyThatFlexTableIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate flex  table at record table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Setup" sub tab
    Then I see expected table with id "toggleFlexTableRelatedProgramGoalsandObjectives"

  @105884    @verifyThatFlexTableIsDisplayedAtPhaseLevelByLoggedInAsPMUser
  Scenario: validate flex table at phase level is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see expected table with id "toggleFlexTablePrograms"

  @105917    @verifyThatEnhancedDataTableIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate enhanced data table at record table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Overview" sub tab
    Then I see expected table with id "DataTableEnhanceProgramContactsFlexToggle"

  @105918    @verifyThatEnhancedGridIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate enhanced grid at record table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Setup" sub tab
    Then I see expected table with id "GrantorServiceAreasProgramFlexToggle"

  @106148    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromHomePhaseActivityMenuInternalOrganizationTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from activity menu then internal organization table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal" content inside "Activities" subheader on left panel
    Then I see expected table with id "InternalOrganizationHierarchyGrantorFlexToggle"

  @106107    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromHomePhaseTaskMenuThenCompletedTaskAssignedToMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from task menu then completed task assigned to me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Completed Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTableHomePhaseCompletedTasks"

  @106108    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromHomePhaseTaskMenuThenCompletedTaskAssignedByMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from task menu then completed task assigned by me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Completed Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTableHomePhaseCompletedTasksBy"

  @106103    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromHomePhaseTaskMenuThenPendingTaskAssignedToMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from task menu then pending task assigned to me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTableHomePendingTasks"

  @106105    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromHomePhaseTaskMenuThenPendingTaskAssignedByMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from task menu then pending task assigned by me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTableHomePendingTasksBy"

  @106148    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromHomePhaseActivityMenuSubrecipientsOrganizationTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from activity menu then Subrecipients organization table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableActiveAccount"

  @106113    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromHomePhaseActivityMenuThenTaskReassignTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from activity menu then task reassign table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Reassign" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTableTaskReassignment"

  @106152    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromHomePhaseActivityMenuThenActiveIndividualSubrecipientsTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from activity menu then Active Individual Subrecipients table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableActiveAccountIndApplicant"

  @106153    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromHomePhaseActivityMenuThenPendingSubrecipientsRegistrationTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from activity menu then pending Subrecipients registration table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Pending Subrecipient Registrations" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableUserRegistration"

  @106154    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromHomePhaseActivityMenuThenIndividualSubrecipientsRegistrationTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from activity menu then individual Subrecipients registration table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Pending Subrecipient Registrations" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableUserRegistrationIndApp"

  @106324    @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkFromHomePhaseTaskMenuThenPendingTaskAssignedToMeTableOpens
  Scenario: validate by logged in as SPI user and hit the sidebar link from task menu then pending task assigned to me table displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTableHomePendingTasks"

  @106325    @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkFromHomePhaseTaskMenuThenPendingTaskAssignedByMeTableOpens
  Scenario: validate by logged in as SPI user and hit the sidebar link from task menu then pending task assigned by me table displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTableHomePendingTasksBy"

  @106329    @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkFromHomePhaseTaskMenuThenSubrecipientOrganizationDetailPageOpens
  Scenario: validate by logged in as SPI user and hit the sidebar link from task menu then Subrecipient Organization detail page displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Activities" subheader on left panel
    Then I see "Subrecipient Organization" shown as over view header

  @106309    @verifyThatPhaseLevelFlexTableIsDisplayedByLoginAsSPIUser
  Scenario: validate by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    Then I see expected table with id "toggleFlexTablepopupflextable"

  @106314    @verifyThatRecordLevelFlexTableIsDisplayedByLoginAsSPIUser
  Scenario: validate record Level flexTable IsDisplayed by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Overview" sub tab
    Then I see expected table with id "AppContactFlexToggle"

  @106311    @verifyThatFlexTableIsDisplayedAtRecordLevelByLoggedInAsAdminUser
  Scenario: validate flex  table at record table is rendered properly by admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}" inside table
    When I navigate to "Setup" sub tab
    Then I see expected table with id "toggleFlexTableRelatedProgramGoalsandObjectives"

  @106308    @verifyThatFlexTableIsDisplayedAtPhaseLevelByLoggedInAsAdminUser
  Scenario: validate flex table at phase level is rendered properly by admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see expected table with id "toggleFlexTablePrograms"

  @106330    @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkFromHomePhaseTechnicalSupportMenuThenRespectiveTableOpens
  Scenario: validate by logged in as SPI user and hit the sidebar link from Technical Support menu then respective table displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Contact Us" content inside "Technical Support" subheader on left panel
    Then I see "CustomerSupport" in current url

  @106320    @verifyThatEnhancedGridIsDisplayedAtRecordLevelByLoggedInAsAdminUser
  Scenario: validate enhanced grid at record table is rendered properly by admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Setup" sub tab
    Then I see expected table with id "GrantorServiceAreasProgramFlexToggle"

  @106323    @verifyThatEnhancedGridIsDisplayedByLoginAsSPIUser
  Scenario: validate enhanced grid IsDisplayed by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Budget" sub tab
    Then I see expected table with id "EnhanceAppGrantorBudgetPeriodsFlexToggle"

  @107085    @verifyThatEnhancedGridIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate enhanced grid at record table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Setup" sub tab
    Then I see expected table with id "ProgramReviewStepTemplatesFlexToggle"

  @107083    @verifyThatEnhancedDataTableIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate enhanced data table at record table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Overview" sub tab
    Then I see expected table with id "DataTableEnhanceProgramContactsFlexToggle"

  @107109    @verifyThatEnhancedGridIsDisplayedAtPhaseLevelByLoggedInAsAdminUser
  Scenario: validate enhanced grid at phase table is rendered properly by admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Activities" subheader on left panel
    Then I see expected table with id "LatestSiteVisitReportsGridFlexToggle"

  @107086    @verifyThatEnhancedGridIsDisplayedAtPhaseLevelByLoggedInAsPMUser
  Scenario: validate enhanced grid at phase table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Activities" subheader on left panel
    Then I see expected table with id "LatestSiteVisitReportsGridFlexToggle"

  @106461    @verifyThatEnhancedDataTableIsDisplayedByLoginAsSPIUser
  Scenario: validate enhanced data table IsDisplayed by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Attachments" sub tab
    Then I see expected table with id "ApplicationChecklistsFlexToggle"

  @107248    @verifyThatDataTableIsDisplayedByLoginAsSPIUser
  Scenario: validate data table Is Displayed by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Proposal" sub tab
    Then I see expected table with id "toggleFlexTableGoalsQualifiedApplications"

  @107539    @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkFromApplicationPhaseTaskMenuThenPendingTaskAssignedToMeTableOpens
  Scenario: validate by logged in as SPI user and hit the sidebar link from application phase task menu then pending task assigned to me table displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTablePhasePendingTasks"

  @107545    @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkFromApplicationPhaseTaskMenuThenCompletedTaskAssignedToMeTableOpens
  Scenario: validate by logged in as SPI user and hit the sidebar link from application phase task menu then completed task assigned to me table displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Completed Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTablePhaseCompletedTasks"

  @107256    @verifyThatDataTableAtPhaseLevelIsDisplayedByLoginAsSPIUser
  Scenario: validate data table at phase level is Displayed by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see expected table with id "toggleFlexTableGrantsList"

  @107331    @verifyThatMEIsDisplayedByLoginAsSPIUser
  Scenario: validate flex table IsDisplayed by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentAward}"
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Management" sub tab
    Then I see expected table with id "toggleFlexTableRecipientsCompletedSiteVisitsReport"

  @107841    @verifyThatByLoginAsSPIUserAndClickOnCompletedTaskThenCompletedTaskAssignedByMeTableDisplayed
  Scenario: validate by logged in as SPI user and click on  completed task from sidebar then assigned by me table displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Completed Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTablePhaseCompletedTasksBy"

  @107541    @verifyThatByLoginAsSPIUserAndViewCompletedTaskAssignedByMeThenApplicationShouldGetOpenInViewMode
  Scenario: validate by logged in as SPI user and view completed task from assigned by me table then respective record opens in view mode
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Completed Tasks" content inside "Tasks" subheader on left panel
    When I perform quick search for "AP-AO-003"
    When I click on "View" icon for "AP-AO-003" inside table
    Then I see "Application" shown as over view header

  @107550   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenApplicationsTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from application then applications table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableRecipientApplications"

  @107548   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenPreApplicationsTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from pre-application then pre-applications table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Activities" subheader on left panel
    And I click toggle button to select "Pre-Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationForAutomation}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationForAutomation}" inside table
    Then I see "Pre-Application" shown as over view header

  @107549   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenPreApplicationsTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from pre-application then pre-applications table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableRecipientPreApplications"

  @107784   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenNotYetQualifiedOpportunityTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from activity then Not Yet Qualified opportunities table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTablenyqae"

  @107785   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenQualifiedOpportunityTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from activity then Qualified opportunities table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Opportunities" tab
    When I navigate to "Qualified" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableqae"

  @107786   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenOpportunitiesConvertedToApplicationTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from activity then opportunities Converted to Application table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Opportunities" tab
    When I navigate to "Converted to Application" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTablecae"

  @107551   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenApplicationDeskReviewsTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from activity then Application Desk Reviews table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Application Desk Reviews" content inside "Activities" subheader on left panel
    Then I softly see expected table with id "toggleFlexTableApplicationsSiteVisitReportsGrid"
    Then I softly see expected table with id "toggleFlexTableApplicationsDeskReviewReportsGrid"

  @107561   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenApplicationSiteVisitsTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from activity then Application Site Visits table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Application Site Visits" content inside "Activities" subheader on left panel
    Then I softly see expected table with id "toggleFlexTableApplicationsSiteVisitReportsGrid"
    Then I softly see expected table with id "toggleFlexTableApplicationsDeskReviewReportsGrid"

  @107562   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenApplicationNegotiationTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from activity then Application negotiation table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Negotiations" content inside "Activities" subheader on left panel
    Then I see expected table with id "RecipientNegotiationApplicationsCompletedFlexToggle"

  @107805 @validateThatIfAPSearchedInGlobalSearchThenApplicationAndPreApplicationsTableDisplayedByLoginAsSPIUser-HomePhase
  Scenario: Verify that if record name as AP is searched in global search then, Application And PreApplications Table is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    When I click on global search and select "All"
    When I perform quick search inside global search "AP"
    Then I softly see expected table with id "toggleFlexTableApplication__c"
    Then I softly see expected table with id "toggleFlexTablePreapplication__c"

  @109254    @verifyThatFieldHistoryFlexTableIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate field history flex table  is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "History" sub tab
    Then I see expected table with id "toggleFlexTableHistory"

  @109255    @verifyThatApprovalHistoryFlexTableIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate approval history flex table  is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "History" sub tab
    Then I see expected table with id "toggleApprovalHistory"

  @109256    @verifyThatSnapshotHistoryFlexTableIsDisplayedAtRecordLevelByLoggedInAsSPIUser
  Scenario: validate snapshot history flex table  is rendered properly by SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "Submit_Negotiation.pdf"

  @109263    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromAnnouncementPhaseTaskMenuThenPendingTaskAssignedToMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from task menu then pending task assigned to me and by me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I softly see expected table with id "toggleFlexTablePhasePendingTasks"
    Then I softly see expected table with id "toggleFlexTablePhasePendingTasksBy"

  @109264    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromAnnouncementPhaseTaskMenuThenCompetitiveTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from task menu then competitive announcement table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableActiveFundingOpportunitiesCompitive"

  @109261    @verifyThatFocusAreaTableIsDisplayedByLoggedInAsPMUser
  Scenario: validate Focus Area table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Focus Areas" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableGrantorServiceAreas"

  @109262    @verifyThatFocusAreaTableIsDisplayedByLoggedInAsPMUser
  Scenario: validate Focus Area table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTablePrograms"

  @109260    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromPlanningPhaseTaskMenuThenPendingTaskAssignedToMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from planning phase task menu then pending task assigned to me and by me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I softly see expected table with id "toggleFlexTablePhasePendingTasks"
    Then I softly see expected table with id "toggleFlexTablePhasePendingTasksBy"

  @107806 @validateThatIfAnSearchedInGlobalSearchThenOpportunityTableDisplayedByLoginAsSPIUser-HomePhase
  Scenario: Verify that if record name as AP is searched in global search then, opportunity Table is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Opportunities" tab
    When I click on global search and select "Opportunities"
    When I perform quick search inside global search "An"
    Then I see expected table with id "toggleFlexTableAnnouncement__c"

  @107807 @validateThatIfAnSearchedInGlobalSearchThenApplicationsTableDisplayedByLoginAsSPIUser-HomePhase
  Scenario: Verify that if record name as AP is searched in global search then, applications Table is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on global search and select "Applications / Negotiations"
    When I perform quick search inside global search "AP"
    Then I see expected table with id "toggleFlexTableApplication__c"

  @107809 @validateThatIfAnSearchedInGlobalSearchThenGrantsTableDisplayedByLoginAsSPIUser-HomePhase
  Scenario: Verify that if record name as AP is searched in global search then, grants Table is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I click on global search and select "Grants"
    When I perform quick search inside global search "Gr"
    Then I see expected table with id "toggleFlexTableGrant__c"

  @107836 @validateThatIfAnSearchedInGlobalSearchThenAwardTableDisplayedByLoginAsSPIUser-HomePhase
  Scenario: Verify that if record name as Aw is searched in global search then, award Table is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    When I click on global search and select "Awards"
    When I perform quick search inside global search "Aw"
    Then I see expected table with id "toggleFlexTableAward__c"

  @109267    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromGrantPhaseTaskMenuThenPendingTaskAssignedToMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from grant phase task menu then pending task assigned to me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTablePhasePendingTasks"

  @109268    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromGrantPhaseTaskMenuThenPendingTaskAssignedByMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from grant phase task menu then pending task assigned by me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTablePhasePendingTasksBy"

  @109269    @verifyThatByLoginAsPMUserAndViewCompletedTaskAssignedByMeThenGrantShouldGetOpenInViewMode
  Scenario: validate by logged in as PM user and view completed task at grants phase from assigned by me table then respective record opens in view mode
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Completed Tasks" content inside "Tasks" subheader on left panel
    When I perform quick search for "AD-12345-01"
    When I click on "View" icon for "AD-12345-01" inside table
    Then I see "Subaward" shown as over view header

  @109270    @verifyThatByLoginAsLoginAsPMUserAndByClickOnSidebarLinkFromGrantPhaseTaskMenuThenGrantsAndSubAwardsTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from grant phase task menu then grants and subawards table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Grants and Subawards" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableActiveGrants"

  @109272    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromMonitoringPhaseTaskMenuThenPendingTaskAssignedToMeAndByMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from monitoring phase task menu then pending task assigned to me and by me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I softly see expected table with id "toggleFlexTablePhasePendingTasks"
    Then I softly see expected table with id "toggleFlexTablePhasePendingTasksBy"

  @109273    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromMonitoringPhaseTaskMenuThenProgressReportTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from monitoring phase task menu then progress report table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Progress Reports" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableGrantorProgressReportsInternal"

  @109274    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromMonitoringPhaseTaskMenuThenAdvancesTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from monitoring phase task menu then advances table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableGrantorPaymentRequestAdvances"

  @109280    @verifyThatByLoginAsPMUserN2GGridDisplayed
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
    Then I see expected table with id "toggleFlexTableGrantorSiteVisitsAward"

  @109620    @verifySnapshotIsGettingGeneratedAndSavedInsideHistoryTabIfCurrencyValueIsChangedByLoginAsPMUser
  Scenario: validate if currency value is changed by pm user and taken a snapshot then snapshot is getting generated inside history tab
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}"
    When I click on "Edit" icon for "{Framework_recordUsed:ProgramInCreatedModeWithViewAction}" inside table
    When I navigate to "Overview" sub tab
    And I enter value "5000" into field "FundedAmount__c"
    And I click on "Save" in the page details
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    Then I see "$5,000" shown inside "New Value" column in history table

  @109617    @verifySnapshotIsGettingGeneratedAndSavedInsideHistoryTabByLoginAsPMUser
  Scenario: validate that if click on take a snapshot from menu then snapshot is getting generated inside history tab by login as PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @109914    @verifyProgramtIsGettingCreatedByLoginAsPMUser
  Scenario: validate that program is getting created by login as PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    Then I see the sub-header is "Automation Internal Program for flow" in the page details

  @109928    @verifyProgramInSubmitForApprovalModeIsGettingCreatedByLoginAsPMUser
  Scenario: validate that program in submit for approval mode is getting created by login as PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name           | Description                 |
      | Program Approver   | Automation PM  | Automation Test Description |
      | Executive Approver | Automation PM1 | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    Then I see status in Progress-bar is "Submitted for Approval" and is "green"

  @109931    @verifyProgramInApprovedModeByLoginAsPMUser
  Scenario: validate status of program is changed to approved after getting approved by both the approvers
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details

  # @109931 - first approval
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  # @109931 - second approval
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:ProgramRecordCreatedToTestFlow}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{Framework_recordUsed:ProgramRecordCreatedToTestFlow}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"

  # @109931 - status displayed to admin user
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramRecordCreatedToTestFlow}" in "---program:-:programsTableId---" panel
    And I click on "View Program Details" icon for "{Framework_recordUsed:ProgramRecordCreatedToTestFlow}" inside flex table with id "---program:-:programsTableId---"
    Then I softly see status in Progress-bar is "Approved" and is "Green"

  @109932    @verifyProgramInActiveModeByLoginAsPMUser
  Scenario: validate status of program is changed to active after getting approved by both the approvers
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I get the "EGMS ID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    And I pause execution for "3" seconds

  # @109932 - first approval
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  # @109932 - second approval
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"

  # @109932 - activated by owner
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Record Id" in "---program:-:programsTableId---" panel
    And I click on "View Program Details" icon for "Record Id" inside flex table with id "---program:-:programsTableId---"
    And I click on "Activate" in the page details
    And I pause execution for "3" seconds
    Then I softly see status in Progress-bar is "Active" and is "Green"

  @109618    @verifySnapshotIsGettingGeneratedAndSavedInsideHistoryTabByLoginAsSPIUser
  Scenario: validate that if click on take a snapshot from menu then snapshot is getting generated inside history tab by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordToCheckSnapshotOnly}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordToCheckSnapshotOnly}" inside table
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "currentdate"

  @83372   @verifyOrderOfActionAtHistoryTableFromProgramCreationToActivationByReassigningToUser
  Scenario: validate order of action inside history table from program creation to activation by reassigning to user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  # @83372 - first approval
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  # @83372 - reassigned by second approval
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Reassign" to user "Admin" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    Then I softly see column "Status" inside row "1" at position "3" and column at position "5" contains text "Reassigned"
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  # @83372 - approved by second approval
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Approved"

  # @83372 - activated by owner
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Record Id" in "---program:-:programsTableId---" panel
    And I click on "View Program Details" icon for "Record Id" inside flex table with id "---program:-:programsTableId---"
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Approved"
    Then I softly see column "Status" inside row "1" at position "3" and column at position "5" contains text "Reassigned"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see column "Status" inside row "3" at position "2" and column at position "5" contains text "Started"

  @83371   @verifyOrderOfActionAtHistoryTableFromProgramCreationToActivationUsingSendBack
  Scenario: validate order of action inside history table from program creation to activation by sending back the record to owser for approval
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  # @83371 - first approval
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  # @83371 - send back to owner by second approval
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    And I "Send to Owner" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Sent Back"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  # @83371 - approved by first approval
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  # @83371 - approved by second approval
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Approved"

  # @83371 - activated by owner
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Approved"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see column "Status" inside row "3" at position "2" and column at position "5" contains text "Started"
    Then I softly see column "Status" inside row "4" at position "2" and column at position "5" contains text "Sent Back"
    Then I softly see column "Status" inside row "5" at position "2" and column at position "5" contains text "Approved"
    Then I softly see column "Status" inside row "6" at position "2" and column at position "5" contains text "Started"

  @110722    @verifyQuickSearchAtFlexGridEnhancedTableIsWorkingCorrectly
  Scenario: validate that quick search is working or not at flex grid enhanced table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentAward}"
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Subawards" sub tab
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentAward}" in "---program:-:flexGridRelatedSubAwardId---" panel
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "100" in "---program:-:flexGridSubAwardBudgetCategoryID---" panel
    Then I see value "Construction" for title "Budget Category" inside table "---program:-:flexGridSubAwardBudgetCategoryID---"

  @110743    @verifyQuickSearchAtFlexTableEnhancedTableIsWorkingCorrectly
  Scenario: validate that quick search is working or not at flex table enhanced table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramToCheckQuickSearch}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramToCheckQuickSearch}" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Krishna S" in "---program:-:programContactsTableId---" panel
    Then I see value "Krishna S" for title "Name" inside table "---program:-:programContactsTableId---"

  @106456    @verifyThatEnhancedDataTableAsDefaultPackageIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate enhanced data table as default package at record table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Setup" sub tab
    Then I see expected table with id "toggleFlexTableProramPackagesGrantor"

  @110209   @verifyAnnouncementInSubmittedForApprovalMode
  Scenario: validate announcement in submitted for approval state
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"

  # @110209 - program activation by owner
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"

  # @110209 - announcement in created state
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Continue"
    When I enter "Creation Second Modal" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I get the "EGMS ID"
    Then I softly see status in Progress-bar is "Created" and is "Green"

  # @110209 - announcement submitted for approval
    When I click on "Edit" in the page details
    And I enter "EditionAnn" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Add" after selection of "Automation Permanent Funding Account" in the table "---program:-:fundingAccTableId---"
    When I close "Associate" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approversTableId---" by clicking "Edit" :
      | Role               | Name           | Description                 |
      | Program Approver   | Admin          | Automation Test Description |
      | Executive Approver | Automation EXE | Automation Test Description |
      | Fiscal Approver    | Automation FO  | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"

  @110868    @verifyQuickSearchAtFlexTableEnhancedTableIsWorkingCorrectlyForSPIUser
  Scenario: validate that quick search is working or not at flex table enhanced table by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Project Director/Manager" in "---program:-:flexTableEnhancedAppContactId---" panel
    Then I see value "Project Director/Manager" for title "Project Role" inside table "---program:-:flexTableEnhancedAppContactId---"

  @110866    @verifyQuickSearchAtFlexGridEnhancedIsWorkingCorrectlyForSPIUser
  Scenario: validate that quick search is working or not at flex grid enhanced by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentAward}"
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Subawards" sub tab
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentAward}" in "---program:-:flexGridRecipientRelatedSubAwardId---" panel
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "100" in "---program:-:flexGridRecipientSubAwardBudgetCategoryID---" panel
    Then I see value "Construction" for title "Budget Category" inside table "---program:-:flexGridRecipientSubAwardBudgetCategoryID---"

  @110745   @verifyAdvanceFilterAtFlexTableEnhancedTableIsWorkingCorrectly
  Scenario: validate that advance filter is working or not at flex table enhanced table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:ProgramToCheckQuickSearch}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:ProgramToCheckQuickSearch}" inside table
    When I navigate to "Overview" sub tab
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:programContactsTableId---"
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Project Role | not equals to | Fiscal Contact |
    Then I do not see value "Fiscal Contact" for title "Project Role" inside table "---program:-:programContactsTableId---"

  @109392   @verifyAnnouncementInCreatedMode
  Scenario: validate announcement in created state
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"

  # @109392 - program activation by owner
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"

  # @109392 - announcement in created state
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Continue"
    When I enter "Creation Second Modal" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I get the "EGMS ID"
    Then I softly see status in Progress-bar is "Created" and is "Green"

  @110694   @verifyRejectActionAtProgramSubmittedForApproval
  Scenario: validate reject action at program submitted for approval
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I click on "Edit" in the page details
    And I pause execution for "2" seconds
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  # @110694 - first approval
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  # @110694 - rejected by second approval
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    And I "Reject" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Rejected" and is "Red"

  @110717   @verifySendBackActionPerformedByProgramApprover
  Scenario: validate sending back action performed by program approver
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"

  # @110717 - Program Approver
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    And I "Send to Owner" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Created" and is "Green"

  @110725    @verifyAdvanceSearchAtFlexGridEnhancedIsWorkingCorrectlyForPMUser
  Scenario: validate that advance search is working or not at flex grid enhanced by login as PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentAward}"
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Subawards" sub tab
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfSubawardBudgetCategoryFlexTable" of table id "---program:-:flexGridSubAwardBudgetCategoryID---"
    When I enter advance filter values inside id "advfSubawardBudgetCategoryFlexTable"
      | Awarded Budget | equals to | 1000 |
    Then I see value "$1,000.00" for title "Awarded Budget" inside table "---program:-:flexGridSubAwardBudgetCategoryID---"

  @110214   @verifyAnnouncementInPublishedMode
  Scenario: validate announcement in published state
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I get the "EGMS ID"
    And I click on "Edit" in the page details
    When I enter "EditionProgram" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Add" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I close "Contacts" modal by clicking the top right x button
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approverTableId---" by clicking "Edit" :
      | Responsibility     | Name          | Description                 |
      | Program Approver   | Admin         | Automation Test Description |
      | Executive Approver | Automation PM | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "CompetitiveAnnouncement" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Continue"
    When I enter "Creation Second Modal" values from "Program_Field_Values_Test8.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I get the "EGMS ID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "EditionAnn" values from "Program_Field_Values_Test8.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Add" after selection of "Automation Permanent Funding Account" in the table "---program:-:fundingAccTableId---"
    When I close "Associate" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approversTableId---" by clicking "Edit" :
      | Role               | Name           | Description                 |
      | Program Approver   | Admin          | Automation Test Description |
      | Executive Approver | Automation EXE | Automation Test Description |
      | Fiscal Approver    | Automation FO  | Automation Test Description |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I re-login to "As a Grantor" app as "Admin" user on "test8" portal
    And I navigate to "Announcement" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I re-login to "As a Grantor" app as "EXE" user on "test8" portal
    And I navigate to "Announcement" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I re-login to "As a Grantor" app as "FO" user on "test8" portal
    And I navigate to "Announcement" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Record Id" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "Record Id" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"

  # @110214 - publish by owner
    When I re-login to "As a Grantor" app as "PM" user on "test8" portal
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "Record Id"
    When I click on "View" icon for "Record Id" inside table
    And I click on "Publish" in the page details
    Then I see status in Progress-bar is "Published" and is "green"