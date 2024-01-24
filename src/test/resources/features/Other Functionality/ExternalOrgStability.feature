@ExternalOrgStability-component @regression-QA
Business Need: security review Scenarios
  Test all security review related scenarios
  As a configuration manager i make different configurational changes in collab component and will validate them.


  @HomePhaseStabilitySPI
  Scenario: Classic UI/UX org home phase stability
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:HomePendingTasks---"
    Then I see expected table with id "---SPI-TableIDs:-:HomePendingTaskByMeId---"
    And I navigate to "Completed Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:HomeCompletedTasksTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:HomeCompletedTasksByTableId---"
    And I navigate to "Reassign Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:HomeReassignTaskTableId---"
    And I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    Then I see "Subrecipient Organization" shown as over view header
    And I navigate to "Contact Us" content inside "Technical Support" subheader on left panel
    Then I softly see "Contact GovGrants" page block displayed
    And I navigate to "EIN Registration" content inside "Useful Links" subheader on left panel
    Then I see new tab is opened
    And I switch to parent tab
    And I navigate to "DUNS Registration" content inside "Useful Links" subheader on left panel
    Then I see new tab is opened
    And I switch to parent tab
    And I navigate to "SAM.gov Registration" content inside "Useful Links" subheader on left panel
    Then I see new tab is opened

  @OpportunitiesPhaseStabilitySPI
  Scenario:Classic UI/UX org opportunity phase stability
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Opportunities" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:OpportunitiesPhasePendingTasksTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:OpportunitiesPhasePendingTasksByTableId---"
    And I navigate to "Completed Tasks" content inside "Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:OpportunitiesCompletedTasksTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:OpportunitiesCompletedTasksByTableId---"
    And I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:OpportunitiesNotYetQualifiedTableId---"
    And I navigate to "Qualified" content inside "Opportunities" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:OpportunitiesQualifiedAnnTableId---"
    And I navigate to "Converted to Application" content inside "Opportunities" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:OpportunitiesConvertedtoApplicationTableId---"
    And I navigate to "Standard Reports" content inside "Reports & Dashboards" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:OpportunitiesStandardReportsTableId---"
    And I navigate to "Standard Dashboards" content inside "Reports & Dashboards" subheader on left panel
    Then I see "Refine Filter" page block displayed

  @ApplicationsPhaseStabilitySPI
  Scenario: Classic UI/UX org applications phase stability
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Pending Tasks" content inside "Application Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsPendingTasksTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsPendingTasksByTableId---"
    And I navigate to "Completed Tasks" content inside "Application Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsCompletedTasksTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsCompletedTasksByTableId---"
    And I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsPreApplicationsTableId---"
    And I navigate to "Applications" content inside "Applications" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsTableId---"
    And I navigate to "Application Desk Reviews" content inside "Applications" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsSiteVisitReportsTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsDeskReviewReportsTableId---"
    And I navigate to "Application Site Visits" content inside "Applications" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsSiteVisitReportsTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsDeskReviewReportsTableId---"
    And I navigate to "Negotiations" content inside "Applications" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsNegotiationsTableId---"
    And I navigate to "Reviews" content inside "Reviews" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:ApplicationsReviewsTableId---"

  @GrantsPhaseStabilitySPI
  Scenario: Classic UI/UX org grants phase stability
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:GrantPhasePendingTasksTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:GrantPhasePendingTasksByTableId---"
    And I navigate to "Completed Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:GrantPhaseCompletedTasksTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:GrantPhaseCompletedTasksByTableId---"
    And I navigate to "Grants" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:GrantActiveGrantsTableId---"
    And I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:GrantSubawardTableId---"
    And I navigate to "Amendment Requests" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:GrantAmendmentRequestsTableId---"

  @MonitoringPhaseStabilitySPI
  Scenario: Classic UI/UX org monitoring phase stability
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Monitoring" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringPhasePendingTasksTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringPhasePendingTasksByTableId---"
    And I navigate to "Completed Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringPhaseCompletedTasksTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringPhaseCompletedTasksByTableId---"
    And I navigate to "Monitoring Schedules" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringScheduleGrantorTableId---"
    And I navigate to "Progress Reports" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringGrantorProgressReportsTableId---"
    And I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringSiteVisitReportsTableId---"
    And I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringDeskReviewReportsTableId---"
    And I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringOrgRiskAssessmentTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringRiskAssessmentTableId---"
    And I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringSubAwardTACTableId---"
    And I navigate to "Advances" content inside "Payments" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringPaymentRequestAdvancesTableId---"
    And I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringPaymentRequestReimbursementTableId---"
    And I navigate to "Refunds" content inside "Payments" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:MonitoringPaymentRequestRefundsTableId---"

  @CloseoutPhaseStabilitySPI
  Scenario: Classic UI/UX org closeout phase stability
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Closeout" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:CloseoutPhasePendingTasksTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:CloseoutPhasePendingTasksByTableId---"
    And I navigate to "Completed Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:CloseoutPhaseCompletedTasksTableId---"
    Then I see expected table with id "---SPI-TableIDs:-:CloseoutPhaseCompletedTasksByTableId---"
    And I navigate to "Project Period Closeouts" content inside "Recipient Closeouts" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:CloseoutProjectPeriodTableId---"

  @AnalyticsPhaseStabilitySPI
  Scenario:  Classic UI/UX org analytics phase stability
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Analytics" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "View Dashboards" content inside "Dashboards" subheader on left panel
    Then I see "Refine Filter" page block displayed
    And I navigate to "View My Reports" content inside "Reports" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:OpportunitiesStandardReportsTableId---"
    And I navigate to "View Standard Reports" content inside "Reports" subheader on left panel
    Then I see expected table with id "---SPI-TableIDs:-:OpportunitiesStandardReportsTableId---"

  @CollabPhaseStabilitySPI
  Scenario:Classic UI/UX org collab phase stability
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation PM" in my feed section and share the post
    Then I see "Hello @Automation PM" inside flex table with id "---SPI-TableIDs:-:CollabCommentTableId---"

  @ApplicationRecordStabilitySPI
  Scenario:Classic UI/UX org application level record stability
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    Then I see "Information" page block displayed
    Then I see "Primary Place of Performance" page block displayed
    Then I see "Opportunity Overview" page block displayed
    Then I see "Application Overview" page block displayed
    Then I see "Project Information" page block displayed
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationContactTableId---"
    Then I see "Acknowledgement" page block displayed
    Then I see "System Information" page block displayed
    When I navigate to "Budget" sub tab
   # Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationAppBudCatGrantorTableId---"
    Then I see "Budget Narrative" page block displayed
    When I navigate to "Proposal" sub tab
    Then I see "Technical Proposal" page block displayed
    When I navigate to "Files" sub tab
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationDocumenChecklistTableId---"
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationAllFormsTableId---"
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationFilesTableId---"
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationNotesTableId---"
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationAttachmentTableId---"
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationSecondNotesTableId---"
    When I navigate to "History" sub tab
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationSnapshotHistoryTableId---"
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationApprovalHistoryTableId---"
    When I navigate to "Collab" sub tab
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationMyFeedTableId---"
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationMessageTableId---"

  @GrantRecordStabilitySPI
  Scenario:Classic UI/UX org grant level record stability
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - Active"
    When I perform quick search for "Grant for Automation"
    When I click on "View" icon for "Grant for Automation" inside table
    When I navigate to "Overview" sub tab
    Then I softly see expected table with id "---SPI-TableIDs:-:GrantInformationBlockTableId---"
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationMessageTableId---"
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationMessageTableId---"
    Then I softly see expected table with id "---SPI-TableIDs:-:ApplicationMessageTableId---"
