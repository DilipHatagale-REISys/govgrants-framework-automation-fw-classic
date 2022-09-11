@SecurityReview-component @regression-QA @securityReview
Business Need: security review Scenarios
  Test all security review related scenarios
  As a configuration manager i make different configurational changes in collab component and will validate them.

  @105884    @verifyThatFlexTableIsDisplayedAtPhaseLevelByLoggedInAsPMUser
  Scenario: validate flex table at phase level is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    Then I see expected table with id "toggleFlexTablePrograms"

  @105917    @verifyThatEnhancedDataTableIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate enhanced data table at record table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    Then I see expected table with id "DataTableEnhanceProgramContactsFlexToggle"

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

  @wip @106148    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromHomePhaseActivityMenuSubrecipientsOrganizationTableOpens
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
    When I navigate to "Reassign" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTableGrantorTaskReassignment"

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
    Then I see expected table with id "toggleFlexTablePendingTasks"

  @106325    @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkFromHomePhaseTaskMenuThenPendingTaskAssignedByMeTableOpens
  Scenario: validate by logged in as SPI user and hit the sidebar link from task menu then pending task assigned by me table displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTablePendingTasksBy"

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
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    Then I see expected table with id "AppContactFlexToggle"

  @106311    @verifyThatFlexTableIsDisplayedAtRecordLevelByLoggedInAsAdminUser
  Scenario: validate flex  table at record table is rendered properly by admin user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "History" sub tab
    When I perform quick search for "Framework Admin" in "---program:-:ApplicationTablIdForTestApplication---" panel
    Then I see "Changed By" shown as flex table column title

  @106308    @verifyThatFlexTableIsDisplayedAtPhaseLevelByLoggedInAsAdminUser
  Scenario: validate flex table at phase level is rendered properly by admin user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
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
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Responsibilities" sub tab
    Then I see "Description" shown as flex table column title

  @106323    @verifyThatEnhancedGridIsDisplayedByLoginAsSPIUser @record
  Scenario: validate enhanced grid IsDisplayed by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Budget" sub tab
    Then I see expected table with id "EnhanceAppGrantorBudgetPeriodsFlexToggle"

  @107085    @verifyThatEnhancedGridIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate enhanced grid at record table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Setup tabs" sub tab
    Then I see expected table with id "ProgramReviewStepTemplatesFlexToggle"

  @107083    @verifyThatEnhancedDataTableIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate enhanced data table at record table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    Then I see expected table with id "DataTableEnhanceProgramContactsFlexToggle"

  @107109    @verifyThatEnhancedGridIsDisplayedAtPhaseLevelByLoggedInAsAdminUser
  Scenario: validate enhanced grid at phase table is rendered properly by admin user
    When I login as "ADMIN" user
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

  @106461    @verifyThatEnhancedDataTableIsDisplayedByLoginAsSPIUser @record
  Scenario: validate enhanced data table IsDisplayed by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Files" sub tab
    Then I see expected table with id "ApplicationChecklistsFlexToggle"

  @doubt @107248    @verifyThatDataTableIsDisplayedByLoginAsSPIUser @record @wip @tableisnotavailable
  Scenario: validate data table Is Displayed by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "Proposal" sub tab
    Then I see expected table with id "toggleFlexTableGoalsQualifiedApplications"

  @107539    @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkFromApplicationPhaseTaskMenuThenPendingTaskAssignedToMeTableOpens
  Scenario: validate by logged in as SPI user and hit the sidebar link from application phase task menu then pending task assigned to me table displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "Application Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTablePhasePendingTasks"

  @107545    @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkFromApplicationPhaseTaskMenuThenCompletedTaskAssignedToMeTableOpens
  Scenario: validate by logged in as SPI user and hit the sidebar link from application phase task menu then completed task assigned to me table displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Completed Tasks" content inside "Application Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTablePhaseCompletedTasks"

  @107256    @verifyThatDataTableAtPhaseLevelIsDisplayedByLoginAsSPIUser
  Scenario: validate data table at phase level is Displayed by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see expected table with id "toggleFlexTableGrantsList"

  @107331    @verifyThatMEIsDisplayedByLoginAsSPIUser @record
  Scenario: validate flex table IsDisplayed by logged in as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "AD-REI1-01"
    When I click on "View" icon for "AD-REI1-01" inside table
    When I navigate to "Management" sub tab
    Then I see expected table with id "toggleFlexTableRecipientsCompletedSiteVisitsReport"

  @107841    @verifyThatByLoginAsSPIUserAndClickOnCompletedTaskThenCompletedTaskAssignedByMeTableDisplayed
  Scenario: validate by logged in as SPI user and click on  completed task from sidebar then assigned by me table displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Completed Tasks" content inside "Application Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTablePhaseCompletedTasksBy"

  @107541    @verifyThatByLoginAsSPIUserAndViewCompletedTaskAssignedByMeThenApplicationShouldGetOpenInViewMode
  Scenario: validate by logged in as SPI user and view completed task from assigned by me table then respective record opens in view mode
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Completed Tasks" content inside "Application Tasks" subheader on left panel
    When I perform quick search for "PR-REI-0004"
    When I click on "View" icon for "PR-REI-0004" inside table
    Then I see "Pre-Application" shown as over view header

  @107550   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenApplicationsTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from application then applications table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    Then I see expected table with id "toggleFlexTableRecipientApplications"

  @107548   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenPreApplicationsTableOpened @record
  Scenario: validate by logged in as SPI user and hit the sidebar link from pre-application then pre-applications table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Pre-Applications - All"
    When I perform quick search for "PR-REI-0004"
    When I click on "View" icon for "PR-REI-0004" inside table
    Then I see "Pre-Application" shown as over view header

  @107549   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenPreApplicationsTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from pre-application then pre-applications table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    Then I see expected table with id "toggleFlexTableRecipientPreApplications"

  @107784   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenNotYetQualifiedOpportunityTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from activity then Not Yet Qualified opportunities table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    Then I see expected table with id "toggleFlexTablenyqae"

  @107785   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenQualifiedOpportunityTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from activity then Qualified opportunities table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Opportunities" tab
    When I navigate to "Qualified" content inside "Opportunities" subheader on left panel
    Then I see expected table with id "toggleFlexTableqae"

  @107786   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenOpportunitiesConvertedToApplicationTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from activity then opportunities Converted to Application table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Opportunities" tab
    When I navigate to "Converted to Application" content inside "Opportunities" subheader on left panel
    Then I see expected table with id "toggleFlexTablecae"

  @doubt @107551   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenApplicationDeskReviewsTableOpened
  Scenario: validate by logged in as SPI user and hit the sidebar link from activity then Application Desk Reviews table opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Application Desk Reviews" content inside "Activities" subheader on left panel
    Then I softly see expected table with id "toggleFlexTableApplicationsSiteVisitReportsGrid"
    Then I softly see expected table with id "toggleFlexTableApplicationsDeskReviewReportsGrid"

  @doubt @107561   @verifyThatByLoginAsSPIUserAndByClickOnSidebarLinkThenApplicationSiteVisitsTableOpened
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
    When I navigate to "Negotiations" content inside "Applications" subheader on left panel
    Then I see expected table with id "RecipientNegotiationApplicationsCompletedFlexToggle"

  @doubt @107805 @validateThatIfAPSearchedInGlobalSearchThenApplicationAndPreApplicationsTableDisplayedByLoginAsSPIUser-HomePhase
  Scenario: Verify that if record name as AP is searched in global search then, Application And PreApplications Table is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    When I perform quick search inside global search "AP"
    When I click on global search and select "Applications / Negotiations"
    Then I softly see expected table with id "toggleFlexTableRecipientApplications"
    Then I softly see expected table with id "toggleFlexTableRecipientPreApplications"

  @109254    @verifyThatFieldHistoryFlexTableIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate field history flex table  is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "History" sub tab
    Then I see expected table with id "toggleFlexTableHistory"

  @109255    @verifyThatApprovalHistoryFlexTableIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate approval history flex table  is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "History" sub tab
    Then I see expected table with id "toggleApprovalHistory"

  @109256    @verifyThatSnapshotHistoryFlexTableIsDisplayedAtRecordLevelByLoggedInAsSPIUser @record
  Scenario: validate snapshot history flex table  is rendered properly by SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordAwardStatusForSPI}" inside table
    When I navigate to "History" sub tab
    Then I see table with header "Snapshot History" contains records "Snapshot_Application_Submission.pdf"

  @109263    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromAnnouncementPhaseTaskMenuThenPendingTaskAssignedToMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from task menu then pending task assigned to me and by me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I softly see expected table with id "toggleFlexTablePhasePendingTasks"
    Then I softly see expected table with id "toggleFlexTablePhasePendingTasksBy"

  @109264    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromAnnouncementPhaseTaskMenuThenCompetitiveTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from task menu then competitive announcement table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    Then I see expected table with id "toggleFlexTableActiveFundingOpportunitiesCompitive"

  @109261    @verifyThatFocusAreaTableIsDisplayedByLoggedInAsPMUser
  Scenario: validate Focus Area table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Focus Areas" content inside "Setup" subheader on left panel
    Then I see expected table with id "toggleFlexTableGrantorServiceAreas"

  @109262    @verifyThatFocusAreaTableIsDisplayedByLoggedInAsPMUser
  Scenario: validate Focus Area table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    Then I see expected table with id "toggleFlexTablePrograms"

  @109260    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromPlanningPhaseTaskMenuThenPendingTaskAssignedToMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from planning phase task menu then pending task assigned to me and by me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
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

  @doubt @107807 @validateThatIfAnSearchedInGlobalSearchThenApplicationsTableDisplayedByLoginAsSPIUser-HomePhase
  Scenario: Verify that if record name as AP is searched in global search then, applications Table is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    When I click on global search and select "Applications / Negotiations"
    When I perform quick search inside global search "AP"
    Then I see expected table with id "toggleFlexTableRecipientApplications"

  @107809 @validateThatIfAnSearchedInGlobalSearchThenGrantsTableDisplayedByLoginAsSPIUser-HomePhase
  Scenario: Verify that if record name as AP is searched in global search then, grants Table is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    When I click on global search and select "Grants"
    When I perform quick search inside global search "Gr"
    Then I see expected table with id "toggleFlexTableGrant__c"

  @doubt @107836 @validateThatIfAnSearchedInGlobalSearchThenAwardTableDisplayedByLoginAsSPIUser-HomePhase
  Scenario: Verify that if record name as Aw is searched in global search then, award Table is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    When I click on global search and select "Subawards"
    When I perform quick search inside global search "Sub"
    Then I see expected table with id "toggleFlexTableAward__c"

  @109267    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromGrantPhaseTaskMenuThenPendingTaskAssignedToMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from grant phase task menu then pending task assigned to me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTablePhasePendingTasks"

  @109268    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromGrantPhaseTaskMenuThenPendingTaskAssignedByMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from grant phase task menu then pending task assigned by me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "toggleFlexTablePhasePendingTasksBy"

  @109269    @verifyThatByLoginAsPMUserAndViewCompletedTaskAssignedByMeThenGrantShouldGetOpenInViewMode @record
  Scenario: validate by logged in as PM user and view completed task at grants phase from assigned by me table then respective record opens in view mode
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    And I pause execution for "5" seconds
    When I perform quick search for "PR-T09-0006"
    When I click on "View" icon for "PR-T09-0006" inside table
    And I pause execution for "5" seconds
    Then I see "Pre-Application" shown as over view header

  @109270    @verifyThatByLoginAsLoginAsPMUserAndByClickOnSidebarLinkFromGrantPhaseTaskMenuThenGrantsAndSubAwardsTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from grant phase task menu then grants and subawards table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Grants" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see expected table with id "GrantorActiveGrantsFlexToggle"

  @109272    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromMonitoringPhaseTaskMenuThenPendingTaskAssignedToMeAndByMeTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from monitoring phase task menu then pending task assigned to me and by me table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I softly see expected table with id "toggleFlexTablePhasePendingTasks"
    Then I softly see expected table with id "toggleFlexTablePhasePendingTasksBy"

  @109273    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromMonitoringPhaseTaskMenuThenProgressReportTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from monitoring phase task menu then progress report table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Progress Reports" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "toggleFlexTableGrantorProgressReportsInternal"

  @109274    @verifyThatByLoginAsPMUserAndByClickOnSidebarLinkFromMonitoringPhaseTaskMenuThenAdvancesTableOpens
  Scenario: validate by logged in as PM user and hit the sidebar link from monitoring phase task menu then advances table displayed
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Monitoring" tab
    When I navigate to "Advances" content inside "Payments" subheader on left panel
    Then I see expected table with id "toggleFlexTableGrantorPaymentRequestAdvances"

  @config @109280    @verifyThatByLoginAsPMUserN2GGridDisplayed @record
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
    When I perform quick search for "AD-REI1-01"
    When I click on "View" icon for "AD-REI1-01" inside table
    When I navigate to "Subawards" sub tab
    When I click on "View" icon for "AD-REI1-01" inside table
    When I navigate to "Management" sub tab
    Then I see expected table with id "toggleFlexTableGrantorSiteVisitsAward"

  @109620    @verifySnapshotIsGettingGeneratedAndSavedInsideHistoryTabIfCurrencyValueIsChangedByLoginAsPMUser
  Scenario: validate if currency value is changed by pm user and taken a snapshot then snapshot is getting generated inside history tab
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:InternalProgramTestingPurpose}"
    When I click on "Edit" icon for "{Framework_recordUsed:InternalProgramTestingPurpose}" inside table
    And I pause execution for "7" seconds
    When I navigate to "Overview" sub tab
    And I enter value "5000" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "25" seconds
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
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:InternalProgramTestingPurpose}"
    When I click on "View" icon for "{Framework_recordUsed:InternalProgramTestingPurpose}" inside table
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @109914    @verifyProgramtIsGettingCreatedByLoginAsPMUser
  Scenario: validate that program is getting created by login as PM user
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "5" seconds
    Then I see the sub-header is "Automation Internal Program for Testing" in the page details

  @109928    @verifyProgramInSubmitForApprovalModeIsGettingCreatedByLoginAsPMUser @flow
  Scenario: validate that program in submit for approval mode is getting created by login as PM user
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details

  @109931    @verifyProgramInApprovedModeByLoginAsPMUser @flow
  Scenario: validate status of program is changed to approved after getting approved by both the approvers
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:toggleFlexTableHomePendingTasksTableID---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:toggleFlexTableHomePendingTasksTableID---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"

  @109932    @verifyProgramInActiveModeByLoginAsPMUser @flow
  Scenario: validate status of program is changed to active after getting approved by both the approvers
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:toggleFlexTableHomePendingTasksTableID---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:toggleFlexTableHomePendingTasksTableID---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    And I pause execution for "3" seconds
    Then I softly see status in Progress-bar is "Active" and is "Green"

  @109618    @verifySnapshotIsGettingGeneratedAndSavedInsideHistoryTabByLoginAsSPIUser @record
  Scenario: validate that if click on take a snapshot from menu then snapshot is getting generated inside history tab by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    And I pause execution for "6" seconds
    When I navigate to "History" sub tab
    Then I see take snap shot getting saved with "Snapshot History"

  @83372   @verifyOrderOfActionAtHistoryTableFromProgramCreationToActivationByReassigningToUser @flow
  Scenario: validate order of action inside history table from program creation to activation by reassigning to user
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:toggleFlexTableHomePendingTasksTableID---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:toggleFlexTableHomePendingTasksTableID---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Approved"
    Then I softly see column "Status" inside row "1" at position "3" and column at position "5" contains text "Reassigned"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see column "Status" inside row "3" at position "2" and column at position "5" contains text "Started"

  @83371   @verifyOrderOfActionAtHistoryTableFromProgramCreationToActivationUsingSendBack @flow
  Scenario: validate order of action inside history table from program creation to activation by sending back the record to owser for approval
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
  # @83371 - first approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
  # @83371 - send back to owner by second approval
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Send to Owner" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Sent Back"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
  # @83371 - approved by first approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
  # @83371 - approved by second approval
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
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

  @110722    @verifyQuickSearchAtFlexGridEnhancedTableIsWorkingCorrectly @record
  Scenario: validate that quick search is working or not at flex grid enhanced table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "AD-REI1-01"
    When I click on "View" icon for "AD-REI1-01" inside table
    When I navigate to "Subawards" sub tab
    When I perform quick search for "AD-REI1-01" in "---program:-:subawardsTableId---" panel
    When I click on "View" icon for "AD-REI1-01" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "1000" in "---program:-:flexGridSubAwardBudgetCategoryID---" panel
    Then I see value "Construction" for title "Budget Category" inside table "---program:-:flexGridSubAwardBudgetCategoryID---"

  @110743    @verifyQuickSearchAtFlexTableEnhancedTableIsWorkingCorrectly @record
  Scenario: validate that quick search is working or not at flex table enhanced table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Internal Program Testing Purpose"
    When I click on "View" icon for "Internal Program Testing Purpose" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Automation PM" in "---program:-:programContactsTableId---" panel
    Then I see value "Automation PM" for title "Name" inside table "---program:-:programContactsTableId---"

  @106456    @verifyThatEnhancedDataTableAsDefaultPackageIsDisplayedAtRecordLevelByLoggedInAsPMUser
  Scenario: validate enhanced data table as default package at record table is rendered properly by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Setup tabs" sub tab
    Then I see expected table with id "ProramPackagesGrantorFlexToggle"

  @110209   @verifyAnnouncementInSubmittedForApprovalMode @flow
  Scenario: validate announcement in submitted for approval state
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:toggleFlexTableHomePendingTasksTableID---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:toggleFlexTableHomePendingTasksTableID---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    #Announcement Creation
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "NewOrgAnnCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "NewOrgAnnEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Add" after selection of "FA-ST-04" in the table "---program:-:fundingAccTableId---"
    When I close "Associate" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approversTableId---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Amendment Request | Post Award Reporting | Payment Request | Monitoring | Closeout |
      | Automation PM | Step 3  | Step 3       | Step 3 | Step 3 | Step 3            | Step 3               | Step 3          | Step 3     | Step 3   |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"

  @110868    @verifyQuickSearchAtFlexTableEnhancedTableIsWorkingCorrectlyForSPIUser @record
  Scenario: validate that quick search is working or not at flex table enhanced table by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Project Director/Manager" in "---program:-:flexTableEnhancedAppContactId---" panel
    Then I see value "Project Director/Manager" for title "Project Role" inside table "---program:-:flexTableEnhancedAppContactId---"

  @110866    @verifyQuickSearchAtFlexGridEnhancedIsWorkingCorrectlyForSPIUser @record
  Scenario: validate that quick search is working or not at flex grid enhanced by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "GT-REI-00001"
    When I click on "View" icon for "GT-REI-00001" inside table
    When I navigate to "Subawards" sub tab
    When I click on "View" icon for "AD-REI-01" inside table
    When I navigate to "Budget" sub tab
    Then I see value "Construction" for title "Budget Category" inside table "---program:-:RecipientAwardBudgetCategoryFlexGridgridTableId---"

  @110745   @verifyAdvanceFilterAtFlexTableEnhancedTableIsWorkingCorrectly @record
  Scenario: validate that advance filter is working or not at flex table enhanced table
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:programContactsTableId---"
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Project Role | not equals to | Fiscal Contact |
    Then I do not see value "Fiscal Contact" for title "Project Role" inside table "---program:-:programContactsTableId---"

  @109392   @verifyAnnouncementInCreatedMode @flow
  Scenario: validate announcement in created state
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "12" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I pause execution for "5" seconds
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I click "Yes" on modal confirmation box
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:toggleFlexTableHomePendingTasksTableID---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:toggleFlexTableHomePendingTasksTableID---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    #Announcement Creation
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "NewOrgAnnCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"

  @110694   @verifyRejectActionAtProgramSubmittedForApproval @flow
  Scenario: validate reject action at program submitted for approval
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    #1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see column "Status" inside row "1" at position "2" and column at position "5" contains text "Pending"
    Then I softly see column "Status" inside row "2" at position "2" and column at position "5" contains text "Approved"
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
  # @110694 - rejected by second approval
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I "Reject" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Rejected" and is "Red"

  @110717   @verifySendBackActionPerformedByProgramApprover @flow
  Scenario: validate sending back action performed by program approver
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I "Send to Owner" in the approval decision
    When I navigate to "History" sub tab
    Then I softly see status in Progress-bar is "Created" and is "Green"

  @110725    @verifyAdvanceSearchAtFlexGridEnhancedIsWorkingCorrectlyForPMUser @record
  Scenario: validate that advance search is working or not at flex grid enhanced by login as PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "AD-REI1-01"
    When I click on "View" icon for "AD-REI1-01" inside table
    When I navigate to "Subawards" sub tab
    When I click on "View" icon for "AD-REI1-01" inside table
    When I navigate to "Budget" sub tab
    When I click on advance filter "#advfSubawardBudgetCategoryFlexTable" of table id "---program:-:flexGridSubAwardBudgetCategoryID---"
    When I enter advance filter values inside id "advfSubawardBudgetCategoryFlexTable"
      | Awarded Budget | equals to | 1000 |
    Then I see value "$1,000.00" for title "Awarded Budget" inside table "---program:-:flexGridSubAwardBudgetCategoryID---"

  @110214   @verifyAnnouncementInPublishedMode @flow
  Scenario: validate announcement in published state
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    #Announcement Creation
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "NewOrgAnnCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "NewOrgAnnEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Add" after selection of "FA-ST-04" in the table "---program:-:fundingAccTableId---"
    When I close "Associate" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approversTableId---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Amendment Request | Post Award Reporting | Payment Request | Monitoring | Closeout |
      | Automation PM | Step 3  | Step 3       | Step 3 | Step 3 | Step 3            | Step 3               | Step 3          | Step 3     | Step 3   |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    #1st Approval process for announcement
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
        #2nd Approval process for announcement
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Announcement" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    #Announcement Publish
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:allAnnouncementTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:allAnnouncementTableId---"
    And I click on "Publish" in the page details
    Then I softly see status in Progress-bar is "Published" and is "green"

  @110867    @verifyAdvanceSearchAtFlexGridEnhancedIsWorkingCorrectlyForSPIUser @record
  Scenario: validate that advance search is working or not at flex grid enhanced by login as SPI user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Row Grouping | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Row Grouping | true          | TmpActiveGrantsGrid | Name                      | FTC-1497                   |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentAward}"
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Subawards" sub tab
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Actuals" sub tab
    When I click on advance filter "#advfRecipientsAwardPaymentRequests" of table id "---program:-:flexGridRecipientAwardPaymentReqId---"
    When I enter advance filter values inside id "advfRecipientsAwardPaymentRequests"
      | Payment Request Amount | equals to | 10 |
    Then I see value "$10.00" for title "Payment Request Amount" inside table "---program:-:flexGridRecipientAwardPaymentReqId---"

  @110869    @verifyAdvanceSearchAtFlexTableEnhancedTableIsWorkingCorrectlyForSPIUser @record
  Scenario: validate that advance search is working or not at flex table enhanced table by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "AP-A11-001"
    When I click on "View" icon for "AP-A11-001" inside table
    When I navigate to "Overview" sub tab
    When I click on advance filter "#advfAppContact" of table id "---program:-:flexTableEnhancedAppContactId---"
    When I enter advance filter values inside id "advfAppContact"
      | Is Key Contact | equals to | true |
    Then I see value "Project Director/Manager" for title "Project Role" inside table "---program:-:flexTableEnhancedAppContactId---"

  @110210   @verifyAnnouncementInApprovedMode @flow
  Scenario: validate announcement in approved state
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    #Announcement Creation
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "NewOrgAnnCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "NewOrgAnnEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Add" after selection of "FA-ST-04" in the table "---program:-:fundingAccTableId---"
    When I close "Associate" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approversTableId---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Amendment Request | Post Award Reporting | Payment Request | Monitoring | Closeout |
      | Automation PM | Step 3  | Step 3       | Step 3 | Step 3 | Step 3            | Step 3               | Step 3          | Step 3     | Step 3   |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    #1st Approval process for announcement
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
        #2nd Approval process for announcement
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Announcement" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"

  @110218   @verifyOpportunityInSubmittedMode @flow
  Scenario: validate opportunity in submitted state
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    #Announcement Creation
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "NewOrgAnnCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "NewOrgAnnEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Add" after selection of "FA-ST-04" in the table "---program:-:fundingAccTableId---"
    When I close "Associate" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    When I navigate to "Responsibilities" sub tab
    And I edit the following rows inline in flex table with id "---program:-:approversTableId---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Amendment Request | Post Award Reporting | Payment Request | Monitoring | Closeout |
      | Automation PM | Step 3  | Step 3       | Step 3 | Step 3 | Step 3            | Step 3               | Step 3          | Step 3     | Step 3   |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    #1st Approval process for announcement
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
        #2nd Approval process for announcement
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Announcement" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"

  @110257   @verifyGrantCreatedAndActivateByPMUser @flow
  Scenario: validate grant created ad activated by PM user
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
   #program Activation
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    #1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    #2nd Approval
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    #Announcement Creation
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "NewOrgAnnCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "NewOrgAnnEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Associate" after selection of "FA-ST-04" in the table "---program:-:fundingAccTableId---"
    When I close "Associate Funding Accounts" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    #1st Approval process for announcement
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
        #2nd Approval process for announcement
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    #Announcement Publish
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:allAnnouncementTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:allAnnouncementTableId---"
    And I click on "Publish" in the page details
    Then I softly see status in Progress-bar is "Published" and is "green"

    #Create Application
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:toggleFlexTablenyqaeTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:toggleFlexTablenyqaeTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    When I enter value "Automation Application" into field "fieldTitle__c"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I pause execution for "3" seconds
    When I click on "Edit" in the page details
    And I enter "NewOrgAppEddition_v" values from "Program_Field_Values_QA_org.xlsx"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    And I navigate to "Budget" sub tab
    And I pause execution for "5" seconds
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---program:-:appBudgetPeriodTableId---" by clicking "Edit" :
      | Category Name | Budget |
      | Construction  | 1000   |
    And I pause execution for "5" seconds
    And I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "StandardAssurancesForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I pause execution for "3" seconds
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "ProgramApplicationForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    When I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "flexGridAppContact" by clicking "Edit" :
      | Name | Project Role             | Is Key Contact |
      |      | Project Director/Manager | Checked        |
    When I click on "Submit Application" in the page details
    Then I softly see status in Progress-bar is "Submitted" and is "Green"
    # initiate review process
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "Initiate Review Process" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---" with wait for record
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "Pre-Screen Review" inside table "---program:-:reviewStepsTableId---"
  # initiated pre-screen review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name  | Due in Days |
      | Pre-Screen | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  # pre-screen review completed
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I pause execution for "2" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
# initiated sme review
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    #Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
  # submit for sme review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---" with wait for record
    And I pause execution for "5" seconds
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer       |
      | Automation EXE |
      | Automation FO  |
      | Automation PM  |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Program Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I pause execution for "5" seconds
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Fiscal Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I pause execution for "5" seconds
    And I click on "Assign" icon for "Automation EXE" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Compliance Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I check "All" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    And I click on "Next Review Step" in the page details
    Then I softly see field "Status" as "In Progress"
  #sme review completed
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
  # management review initiated
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
  # submitted for management review
    When I click on "View" icon for "SME Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to Next Step" in flex table with id "---program:-:appTableId---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Management Review | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  # management review completed
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"

     # create FDM
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    When I click on "View" icon for "Management Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to FDM" in flex table with id "---program:-:appTableId---"
    When I click on "Funding Decision Memo" in the page details
    Then I softly see field "Status" as "Created"
    And I click on "Edit" in the page details
    When I enter values into fields
      | Value                       | Field                 |
      | REI                         | fieldGrantCode__c     |
      | Automation Test Description | fieldJustification__c |
    And I click on "Save" in the page details
    Then I softly see field "Status" as "Created"
    And I edit the following rows inline in flex table with id "flexGridFundingDecisionMemoApplications" by clicking "Edit" :
      | EGMS ID                | Recommended Budget | Recommend for Funding | Comments    |
      | {SavedValue:APPEGMSID} | 500                | Yes                   | Recommended |
    Then I softly see that "Recommended" has been added in flextable with Id "flexGridFundingDecisionMemoApplications"
    When I navigate to "Responsibilities" sub tab
    # submit FDM for approval
    And I click on "Submit for Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    And I save the field labeled "Announcement EGMS ID" as "ANN_EGMSID"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "green"

    # create Sub-Award
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    And I click toggle button to select "Approved Funding Decision Memos (FDM)"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:fdmTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:fdmTableId---" without waiting for record
    When I navigate to "Funding Decision Memo" sub tab
    And I click on "Create Subaward" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:recommendedAppTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Created" and is "green"
  # Sub-Award submitted for approval
    And I enter value "Automation Test Description" into field "fieldGrantAwardDescription__c"
    And I enter value "Test Description" into field "fieldAddressline2__c"
    And I enter value "CA" into field "fieldCongressionalDistrictName__c"
    And I enter value "1234" into field "fieldZipCode4Extension__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "SUBAWARD_EGMSID"
    And I navigate to "Budget" sub tab
    When I edit the following rows inline in flex table with id "---program:-:awardFundingAccountsTableId---" by clicking "Edit" :
      | Funding Account | Encumbrance |
      | FA-ST-04        | 1000        |
    And I edit the following rows inline in flex table with id "---program:-:subAwardBudgetTableId---" by clicking "Edit" :
      | Budget Category | Awarded Budget |
      | Construction    | 1000           |
    And I navigate to "Terms" sub tab
    And I click on "Edit" icon for "Payment Request" inside flex table with id "---program:-:paymentRequestSchedulesTableId---" without waiting for record
    And I enter in modal "PaymentRequestSchedule_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save"
    And I save the field labeled "Grant ID" as "GRANT_ID"
    And I click on "Submit for Approval" in the page details
    Then I softly see field "Status" as "Submitted for Approval"
 # Sub-Award approval by 1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
  # Sub-Award approval 2nd approval
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Approved"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

    # Sub-Award sent to sub-recepient
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I click on "Send to Subrecipient" in the page details
    Then I softly see field "Status" as "Sent to Subrecipient after Approval"

  # Sub-Award accpted by sub-recepient
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside table
    And I click on "Accept after Approval" in the page details
    Then I softly see field "Status" as "Accepted after Approval"

  # Sub-Award activation by owner
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Activated" and is "green"
  # Grant activation by owner
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Active" and is "green"

  @110500  @VerifyDirectGrantCreationAndSubAwardActivation @flow
  Scenario: Verify grant creation and grant, sub-award activation
   # Given I delete the record "Automation Direct Grant" from the object "Grant__c" with field "ProjectTitle__c"
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Grants" tab
    And I click on top right button "New" in flex table with id "---program:-:activeGrantsTableId---"
    And I enter "GrantCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Continue"
    And I enter "Grant_Edition_v" values from "Program_Field_Values_QA_org.xlsx"
    When I click modal button "Save and Continue"
    When I enter value "Project Grant" into field "fieldGrantType__c"
    When I enter value "Test Description" into field "fieldGrantDescription__c"
    And I click on "Save" in the page details
    Then I softly see status in Progress-bar is "Draft" and is "green"

  #@110500 sub-award created
    And I navigate to "Subawards" sub tab
    And I click on "View" icon for "Created" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I save the field labeled "EGMS ID" as "SUBAWARD_EGMSID"
    And I click on "Edit" in the page details
    When I enter "StandAloneEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    Then I softly see status in Progress-bar is "Created" and is "green"
  # Sub-Award submitted for approval
    And I navigate to "Budget" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:awardFundingAccountsTableId---"
    When I click "Associate" after selection of "FA-ST-04" in the table "---program:-:selectAwardFundingAccountsTableId---"
    When I close "Associate Funding Accounts" modal by clicking the top right x button
    When I edit the following rows inline in flex table with id "---program:-:awardFundingAccountsTableId---" by clicking "Edit" :
      | Funding Account | Encumbrance |
      | FA-ST-04        | 1000        |
    And I edit the following rows inline in flex table with id "---program:-:flexGridSubAwardBudgetCategoryID---" by clicking "Edit" :
      | Budget Category | Awarded Budget |
      | Construction    | 1000           |
    And I navigate to "Terms" sub tab
    And I click on "Edit" icon for "Payment Request" inside flex table with id "---program:-:paymentRequestSchedulesTableId---" without waiting for record
    And I enter in modal "PaymentRequestSchedule_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save"
    And I save the field labeled "Grant ID" as "GRANT_ID"
    And I click on "Submit for Approval" in the page details
    Then I softly see field "Status" as "Submitted for Approval"
 # Sub-Award approval by 1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
  # Sub-Award approval 2nd approval
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Approved"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
    # Sub-Award sent to sub-recepient
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I click on "Send to Subrecipient" in the page details
    Then I softly see field "Status" as "Sent to Subrecipient after Approval"
  # Sub-Award accpted by sub-recepient
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside table
    And I click on "Accept after Approval" in the page details
    Then I softly see field "Status" as "Accepted after Approval"

  # Sub-Award activation by owner
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Activated" and is "green"
  # Grant activation by owner
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Active" and is "green"

  @111198   @verifyAmendmentRequestAndPaymentRequestAndSiteVisitCreationByPMUser @flow
  Scenario: validate AmendmentRequest, Payment request and site visit closure by PM user
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Internal Program for flow" from the object "Program__c" with field "ProgramName__c"
   #program Activation
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    #1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    #2nd Approval
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Active" and is "Green"
    #Announcement Creation
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    And I enter "NewOrgAnnCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Continue"
    When I enter "NewOrg2ndModal_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "ANNEGMSID"
    Then I softly see status in Progress-bar is "Created" and is "Green"
    When I click on "Edit" in the page details
    And I enter "NewOrgAnnEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I click on "Edit" in the page details
    And I enter value "Test" into field "Justification__c"
    And I click on "Save" in the page details
    When I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountsTableId---"
    When I click "Associate" after selection of "FA-ST-04" in the table "---program:-:fundingAccTableId---"
    When I close "Associate Funding Accounts" modal by clicking the top right x button
    And I click on top right button "Add Budget Period" in flex table with id "---program:-:budgetPeriodTableId---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---program:-:budgetPeriodTableId---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 90         | 350      |
    And I click on "Submit For Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    #1st Approval process for announcement
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
        #2nd Approval process for announcement
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    #Announcement Publish
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:allAnnouncementTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:allAnnouncementTableId---"
    And I click on "Publish" in the page details
    Then I softly see status in Progress-bar is "Published" and is "green"
    #Create Application
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:toggleFlexTablenyqaeTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:toggleFlexTablenyqaeTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    When I enter value "Automation Application" into field "fieldTitle__c"
    And I click modal button "Save and Continue"
    When I click on "Save" in the page details
    And I pause execution for "3" seconds
    When I click on "Edit" in the page details
    And I enter "NewOrgAppEddition_v" values from "Program_Field_Values_QA_org.xlsx"
    When I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "APPEGMSID"
    And I navigate to "Budget" sub tab
    And I pause execution for "5" seconds
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---program:-:appBudgetPeriodTableId---" by clicking "Edit" :
      | Category Name | Budget |
      | Construction  | 1000   |
    And I pause execution for "5" seconds
    And I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "StandardAssurancesForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I pause execution for "3" seconds
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Given I enter "ProgramApplicationForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    When I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "flexGridAppContact" by clicking "Edit" :
      | Name | Project Role             | Is Key Contact |
      |      | Project Director/Manager | Checked        |
    When I click on "Submit Application" in the page details
    Then I softly see status in Progress-bar is "Submitted" and is "Green"
    # initiate review process
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "Initiate Review Process" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---" with wait for record
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "Pre-Screen Review" inside table "---program:-:reviewStepsTableId---"
  # initiated pre-screen review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name  | Due in Days |
      | Pre-Screen | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  #@110257 pre-screen review completed
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I pause execution for "2" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
# initiated sme review
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
  # submit for sme review
    When I click on "View" icon for "Pre-Screen Review" inside flex table with id "---program:-:reviewStepsTableId---" with wait for record
    And I pause execution for "5" seconds
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer       |
      | Automation EXE |
      | Automation FO  |
      | Automation PM  |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Program Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I pause execution for "5" seconds
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Fiscal Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I pause execution for "5" seconds
    And I click on "Assign" icon for "Automation EXE" inside flex table with id "---program:-:reviewersTableId---" with wait for record
    And I perform quick search for "Compliance Review" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    And I check "All" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    And I click on "Next Review Step" in the page details
    Then I softly see field "Status" as "In Progress"
  #sme review completed
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"
  # management review initiated
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    Then I softly see value "In Progress" for title "SME Review" inside table "---program:-:reviewStepsTableId---"
  # submitted for management review
    When I click on "View" icon for "SME Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to Next Step" in flex table with id "---program:-:appTableId---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---program:-:flexGridApplicationReviewTreeTableId---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Management Review | 5           |
    When I enter the following values into flex table with id "---program:-:reviewersTableId---" by clicking "Add" :
      | Reviewer      |
      | Automation FO |
    And I click on "Assign" icon for "Automation FO" inside flex table with id "---program:-:reviewersTableId---"
    When I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:assignApplicationsTableId---" panel
    And I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:assignApplicationsTableId---"
    When I click on top right button "Assign" in flex table with id "---program:-:assignApplicationsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appreviewsTableId---"
    And I click on top right button "Send for Review" in flex table with id "---program:-:appreviewsTableId---"
    Then I softly see field "Status" as "In Progress"
  # management review completed
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    Then I softly see field "Status" as "Sent for Review"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    Then I softly see field "Status" as "Review Completed"

     # create FDM
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    When I click toggle button to select "Application Reviews - All"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:announcementListTableId---" panel
    When I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:announcementListTableId---"
    And I navigate to "Related Log" sub tab
    When I click on "View" icon for "Management Review" inside flex table with id "---program:-:reviewStepsTableId---"
    When I check "{SavedValue:APPEGMSID}" boxes in flex table with id "---program:-:appTableId---"
    And I click on top right button "Promote to FDM" in flex table with id "---program:-:appTableId---"
    When I click on "Funding Decision Memo" in the page details
    Then I softly see field "Status" as "Created"
    And I click on "Edit" in the page details
    When I enter values into fields
      | Value                       | Field                 |
      | REI                         | fieldGrantCode__c     |
      | Automation Test Description | fieldJustification__c |
    And I click on "Save" in the page details
    Then I softly see field "Status" as "Created"
    And I edit the following rows inline in flex table with id "flexGridFundingDecisionMemoApplications" by clicking "Edit" :
      | EGMS ID                | Recommended Budget | Recommend for Funding | Comments    |
      | {SavedValue:APPEGMSID} | 500                | Yes                   | Recommended |
    Then I softly see that "Recommended" has been added in flextable with Id "flexGridFundingDecisionMemoApplications"
    When I navigate to "Responsibilities" sub tab
    # submit FDM for approval
    And I click on "Submit for Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    And I save the field labeled "Announcement EGMS ID" as "ANN_EGMSID"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    When I navigate to "Applications" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "green"

    # create Sub-Award
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Applications" tab
    When I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    And I click toggle button to select "Approved Funding Decision Memos (FDM)"
    And I perform quick search for "{SavedValue:ANNEGMSID}" in "---program:-:fdmTableId---" panel
    And I click on "View" icon for "{SavedValue:ANNEGMSID}" inside flex table with id "---program:-:fdmTableId---" without waiting for record
    When I navigate to "Funding Decision Memo" sub tab
    And I click on "Create Subaward" icon for "{SavedValue:APPEGMSID}" inside flex table with id "---program:-:recommendedAppTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Created" and is "green"
  # Sub-Award submitted for approval
    And I enter value "Automation Test Description" into field "fieldGrantAwardDescription__c"
    And I enter value "Test Description" into field "fieldAddressline2__c"
    And I enter value "CA" into field "fieldCongressionalDistrictName__c"
    And I enter value "1234" into field "fieldZipCode4Extension__c"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "SUBAWARD_EGMSID"
    And I navigate to "Budget" sub tab
    When I edit the following rows inline in flex table with id "---program:-:awardFundingAccountsTableId---" by clicking "Edit" :
      | Funding Account | Encumbrance |
      | FA-ST-04        | 1000        |
    And I edit the following rows inline in flex table with id "---program:-:subAwardBudgetTableId---" by clicking "Edit" :
      | Budget Category | Awarded Budget |
      | Construction    | 1000           |
    And I navigate to "Terms" sub tab
    And I click on "Edit" icon for "Payment Request" inside flex table with id "---program:-:paymentRequestSchedulesTableId---" without waiting for record
    And I enter in modal "PaymentRequestSchedule_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save"
    And I save the field labeled "Grant ID" as "GRANT_ID"
    And I click on "Submit for Approval" in the page details
    Then I softly see field "Status" as "Submitted for Approval"
 # Sub-Award approval by 1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Submitted for Approval"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"
  # Sub-Award approval 2nd approval
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    When I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---" without waiting for record
    When I "Approve" in the approval decision
    Then I softly see field "Status" as "Approved"
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

    # Sub-Award sent to sub-recepient
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I click on "Send to Subrecipient" in the page details
    Then I softly see field "Status" as "Sent to Subrecipient after Approval"

  # Sub-Award accpted by sub-recepient
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Grants" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:SUBAWARD_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SUBAWARD_EGMSID}" inside table
    And I click on "Accept after Approval" in the page details
    Then I softly see field "Status" as "Accepted after Approval"

  # Sub-Award activation by owner
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "{SavedValue:SUBAWARD_EGMSID}" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    And I click on "Activate" in the page details
    Then I softly see status in Progress-bar is "Activated" and is "green"

  # Grant activation by owner
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{SavedValue:GRANT_ID}" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "{SavedValue:GRANT_ID}" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    Then I softly see status in Progress-bar is "Active" and is "green"

    #createsitevisit
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "GT-REI-00001" in "---program:-:grantsTableId---" panel
    And I click on "View" icon for "GT-REI-00001" inside flex table with id "---program:-:grantsTableId---" without waiting for record
    When I navigate to "Subawards" sub tab
    And I click on "View" icon for "AD-REI-01" inside flex table with id "---program:-:subawardsTableId---" without waiting for record
    When I navigate to "Management" sub tab
    When I click on top right button "Initiate Site Visit" in flex table with id "GrantorSiteVisitsAward"
    And I enter "SiteVisitCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    When I click modal button "Save and Continue"
    And I enter "SiteVisitEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    When I click on "Save" in the page details
    Then I softly see status in Progress-bar is "Created" and is "green"
    And I save the field labeled "EGMS ID" as "SV_EGMSID"

  #@111198 site visit in progress
    Given I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:participantsTableId---"
    When I click "Associate" after selection of "Automation FO" in the table "---program:-:siteVisitContactsTableId---"
    And I refresh the page
    #And I click on "Save" in the page details
    And I click on "Notify" in the page details
    Then I softly see field "Status" as "Notified"
    Then I softly see status in Progress-bar is "Notified" and is "green"
    When I click on "Conduct" in the page details
    Then I softly see status in Progress-bar is "In Progress" and is "green"
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:SV_EGMSID}" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "{SavedValue:SV_EGMSID}" inside flex table with id "---program:-:pendingTaskTableId---"

  #@111198 submit site visit for approval
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:manageSiteVisitTableId---" panel
    And I click on "View" icon for "SV-0739" inside flex table with id "---program:-:manageSiteVisitTableId---"
    And I navigate to "Reports and Outcomes" sub tab
    When I click on "Edit" icon for "General Review Form" inside flex table with id "---program:-:reportsTableId---"
    And I enter "GeneralReviewForm_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I click on "Back" in the page details
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                  | Description            | Type        |
      | Automation Finding     | Automation Description | Finding     |
      | Automation Concern     | Automation Description | Concern     |
      | Automation Observation | Automation Description | Observation |
    When I click on "Submit for Approval" in the page details
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  #@111198 site visit approved by 1st approval
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "SV-0739" inside flex table with id "---program:-:pendingTaskTableId---"
    And I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "green"

  #@111198 site visit approved by 2nd approval
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:pendingTaskTableId---" panel
    And I click on "Start" icon for "SV-0739" inside flex table with id "---program:-:pendingTaskTableId---"
    And I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "green"

  #@111198 site visit sent to sub-recipient
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:manageSiteVisitTableId---" panel
    And I click on "View" icon for "SV-0739" inside flex table with id "---program:-:manageSiteVisitTableId---"
    Given I click on "Send to Subrecipient" in the page details
    Then I softly see status in Progress-bar is "Sent to Subrecipient" and is "green"

  #@111198 site visit submitted to grantor
    When I re-login to "Grants Portal" app as "SPI" user on "SUBPORTAL" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:pendingTaskTableId---" panel
    When I click on "Start" icon for "SV-0739" inside flex table with id "---program:-:pendingTaskTableId---"
    When I navigate to "Reports and Outcomes" sub tab
    And I expand nested table containing column value "Automation Observation"
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                               | Description            | Status      | Due Date | Assigned To    |
      | Automation Observation Subrecipient | Automation Description | In-Progress | 30       | Automation SPI |
    When I collapse nested table containing column value "Automation Observation"
    And I expand nested table containing column value "Automation Concern"
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                           | Description            | Status      | Due Date | Assigned To    |
      | Automation Concern Subrecipient | Automation Description | In-Progress | 30       | Automation SPI |
    When I collapse nested table containing column value "Automation Concern"
    And I expand nested table containing column value "Automation Finding"
    When I enter the following values into flex table with id "---program:-:correctiveTableId---" by clicking "New" :
      | Title                           | Description            | Status      | Due Date | Assigned To    |
      | Automation Finding Subrecipient | Automation Description | In-Progress | 30       | Automation SPI |
    And I collapse nested table containing column value "Automation Finding"
    When I click on "Submit to Grantor" in the page details
    Then I softly see status in Progress-bar is "Submitted to Grantor" and is "green"

  # site visit closure
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Monitoring" tab
    When I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    When I perform quick search for "SV-0739" in "---program:-:manageSiteVisitTableId---" panel
    And I click on "View" icon for "SV-0739" inside flex table with id "---program:-:manageSiteVisitTableId---"
    And I click on "Accept And Close" in the page details
    Then I softly see status in Progress-bar is "Closed" and is "green"

  @107315    @verifyThatMEIsDisplayedByLoginAsSPIUserAtRecordLevel @record
  Scenario: validate flex table IsDisplayed by logged in as SPI user at record level inside budget tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | RecipientGrant     | Name                      | PB-6730                    |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{Framework_recordUsed:AutomationPermanentAward}"
    When I click on "View" icon for "{Framework_recordUsed:AutomationPermanentAward}" inside table
    When I navigate to "Budget" sub tab
    Then I see expected table with id "toggleFGridRecipentGrantBudgetCategoryFlexGrid"