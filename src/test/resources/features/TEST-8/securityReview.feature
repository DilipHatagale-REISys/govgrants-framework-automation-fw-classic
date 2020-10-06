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
    Then I see expected table with id "toggleFlexTablepopupflextable"
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
    Then I see expected table with id "toggleFlexTablepopupflextable"
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