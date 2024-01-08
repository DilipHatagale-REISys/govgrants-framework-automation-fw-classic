@internalorgstability
Business Need: Internal org stability for Admin Pm and SPI users

  @HomePhaseorgStability @orgstability
  Scenario: Classic UI/UX org home phase stability
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:PendingTasksAssignedToMeid---"
    Then I see "Total Records" page size inside table "---program:-:PendingTasksAssignedToMeid---"
    Then I see expected table with id "---program:-:PendingTasksAssignedByMeid---"
    Then I see "Total Records" page size inside table "---program:-:PendingTasksAssignedByMeid---"
    And I navigate to "Completed Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:CompletedTasksAssignedToMeid---"
    Then I see "Total Records" page size inside table "---program:-:CompletedTasksAssignedToMeid---"
    Then I see expected table with id "---program:-:CompletedTasksAssignedByMeid---"
    Then I see "Total Records" page size inside table "---program:-:CompletedTasksAssignedByMeid---"
    And I navigate to "Completed Tasks" content inside "My Tasks" subheader on left panel
    And I navigate to "Internal" content inside "Contacts" subheader on left panel
    Then I see expected table with id "---program:-:InternalContactsTableid---"
    And I navigate to "Subrecipients" content inside "Contacts" subheader on left panel
    Then I see expected table with id "---program:-:SubrecipientContactsTableid---"
    And I navigate to "Forms" content inside "Manage Forms" subheader on left panel
    Then I see expected table with id "---program:-:FormsTableid---"
    And I navigate to "Terms & Conditions" content inside "Manage Forms" subheader on left panel
    Then I see expected table with id "---program:-:TermsAndConditionsTableid---"

#    And I navigate to "Flex Grid Enhanced" content inside "Organization" subheader on left panel
#    Then I see expected table with id "---program:-:AllRecordsTableID---"
#    Then I see "Total Records" page size inside table "---program:-:AllRecordsTableID---"
#    And I navigate to "Internal" content inside "Organization" subheader on left panel
#    Then I see expected table with id "---program:-:InternalOrganizationHierarchyTableId---"
#    And I navigate to "Subrecipients" content inside "Organization" subheader on left panel
#    Then I see expected table with id "---program:-:SubrecipientOrganizationsTableid---"
#    Then I see expected table with id "---program:-:ActiveIndividualSubrecipientsTableid---"
#    And I navigate to "Pending Subrecipient Registrations" content inside "Organization" subheader on left panel
#    Then I see expected table with id "---program:-:SubrecipientOrganizationsPendingSubrecipientRegistrationsTableid---"
#    Then I see expected table with id "---program:-:IndividualSubrecipientsTableid---"

  @PlanningPhaseorgStability @orgstability
  Scenario: Classic UI/UX org planning phase stability
    When I login to "As a Grantor" app as "Admin" user
    Then I see Global search on sidebar left side of page
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:PhasePendingTasksFlexTableId---"
    Then I see expected table with id "---program:-:PhasePendingTasksByTableId---"
    And I navigate to "Completed Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:PlanningCompletedTasksAssignedToMeid---"
    Then I see expected table with id "---program:-:PlanningCompletedTasksAssignedByMeid---"
    And I navigate to "Strategic Plans" content inside "Setup" subheader on left panel
    Then I see expected table with id "---program:-:StrategicPlansSetupid---"
    And I navigate to "Focus Areas" content inside "Setup" subheader on left panel
    Then I see expected table with id "---program:-:FocusAreaTableid---"
    And I navigate to "Funding Sources" content inside "Setup" subheader on left panel
    Then I see expected table with id "---program:-:InternalFundingSourcesTableid---"
    Then I see expected table with id "---program:-:AllExternalFundingSourcesTableid---"
    And I navigate to "Key Performance Indicators (KPI)" content inside "Setup" subheader on left panel
    Then I see expected table with id "---program:-:KeyPerformanceIndicatorsTableid---"
    And I navigate to "Forms and Packages" content inside "Setup" subheader on left panel
    Then I see expected table with id "---program:-:PlanningFormsTaleid---"
    Then I see expected table with id "---program:-:PlanningPackagesTableid---"
    And I navigate to "Terms and Conditions" content inside "Setup" subheader on left panel
    Then I see expected table with id "---program:-:TermsAndConditionsTableid---"
    And I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    Then I see expected table with id "---program:-:ProgramsFlexTableToggleId---"
    And I navigate to "External Programs" content inside "Programs" subheader on left panel
    Then I see expected table with id "---program:-:FederalProgramsTableid---"

  @AnnouncementsPhaseorgStability @orgstability
  Scenario: Classic UI/UX org planning phase stability
    When I login to "As a Grantor" app as "Admin" user
    Then I see Global search on sidebar left side of page
    And I navigate to "Announcements" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:PhasePendingTasksFlexTableId---"
    Then I see expected table with id "---program:-:PhasePendingTasksByTableId---"
    And I navigate to "Completed Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:PlanningCompletedTasksAssignedToMeid---"
    Then I see expected table with id "---program:-:PlanningCompletedTasksAssignedByMeid---"
    And I navigate to "Competitive" content inside "Announcements" subheader on left panel
    Then I see expected table with id "---program:-:PublishedCompetitiveAnnouncementsTableid---"
    And I navigate to "Directed" content inside "Announcements" subheader on left panel
    Then I see expected table with id "---program:-:PublishedDirectedAnnouncementsTableid---"
    And I navigate to "Formula" content inside "Announcements" subheader on left panel
    Then I see expected table with id "---program:-:PublishedFormulaAnnouncementsTableid---"

  @orgstability @ApplicationsPhaseorgStability
  Scenario: Classic UI/UX org Applications phase stability
    When I login to "As a Grantor" app as "Admin" user
    Then I see Global search on sidebar left side of page
    And I navigate to "Applications" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:PhasePendingTasksFlexTableId---"
    Then I see expected table with id "---program:-:PhasePendingTasksByTableId---"
    And I navigate to "Completed Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:PlanningCompletedTasksAssignedToMeid---"
    Then I see expected table with id "---program:-:PlanningCompletedTasksAssignedByMeid---"
    And I navigate to "Pre-Applications" content inside "Applications" subheader on left panel
    Then I see expected table with id "---program:-:PreApplicationsTableid---"
    And I navigate to "Applications" content inside "Applications" subheader on left panel
    Then I see expected table with id "---program:-:ApplicationsApplicationsTableid---"
    And I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    Then I see expected table with id "---program:-:ApplicationReviewsTableid---"
    And I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    Then I see expected table with id "---program:-:AllFundingDecisionMemosFDMTableid---"
    And I navigate to "Negotiations" content inside "Application Reviews" subheader on left panel
    Then I see expected table with id "---program:-:PendingNegotiationApplicationsTableid---"
    Then I see expected table with id "---program:-:CompletedNegotiationApplicationsTableid---"

  @GrantsPhaseorgStability @orgstability
  Scenario: Classic UI/UX org Applications phase stability
    When I login to "As a Grantor" app as "Admin" user
    Then I see Global search on sidebar left side of page
    And I navigate to "Grants" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:PhasePendingTasksFlexTableId---"
    Then I see expected table with id "---program:-:PhasePendingTasksByTableId---"
    And I navigate to "Completed Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:PlanningCompletedTasksAssignedToMeid---"
    Then I see expected table with id "---program:-:PlanningCompletedTasksAssignedByMeid---"
    And I navigate to "Grants" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see expected table with id "---program:-:GrantsTableid---"
    And I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see expected table with id "---program:-:SubawardTableIdForAdminPM---"
    And I navigate to "Amendment Requests" content inside "Grants, Subawards & Amendments" subheader on left panel
    Then I see expected table with id "---program:-:GrantorAmendmentRequestTableid---"

  @MonitoringPhaseorgStability @orgstability
  Scenario: Classic UI/UX org Applications phase stability
    When I login to "As a Grantor" app as "Admin" user
    Then I see Global search on sidebar left side of page
    And I navigate to "Monitoring" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:PhasePendingTasksFlexTableId---"
    Then I see expected table with id "---program:-:PhasePendingTasksByTableId---"
    And I navigate to "Completed Tasks" content inside "My Tasks" subheader on left panel
    Then I see expected table with id "---program:-:PlanningCompletedTasksAssignedToMeid---"
    Then I see expected table with id "---program:-:PlanningCompletedTasksAssignedByMeid---"
    And I navigate to "Monitoring Schedules" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---program:-:monitoringGridTableId---"
    And I navigate to "Progress Reports" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---program:-:GrantorProgressReportsInternalTableid---"
    And I navigate to "Site Visits" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---program:-:SiteVisitReportsTableid---"
    And I navigate to "Desk Reviews" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---program:-:DeskReviewReportsTableid---"
    And I navigate to "Risk Assessments" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---program:-:OrganizationRiskAssessmentsTableid---"
    Then I see expected table with id "---program:-:SubawardRiskAssessmentsTableid---"
    And I navigate to "Subaward Terms and Conditions" content inside "Monitoring Activities" subheader on left panel
    Then I see expected table with id "---program:-:SubAwardFlexTableId---"
    And I navigate to "Advances" content inside "Payments" subheader on left panel
    Then I see expected table with id "---program:-:GrantorPaymentRequestAdvancesTableid---"
    And I navigate to "Reimbursements" content inside "Payments" subheader on left panel
    Then I see expected table with id "---program:-:PaymentRequestReimbursementTableid---"
    And I navigate to "Refunds" content inside "Payments" subheader on left panel
    Then I see expected table with id "---program:-:PaymentRequestRefundsFlexToggleTableid---"


  @AnalyticsPhaseorgStability @orgstability
  Scenario: Classic UI/UX org Analytics phase stability
    When I login to "As a Grantor" app as "Admin" user
    Then I see Global search on sidebar left side of page
    And I navigate to "Analytics" tab
    And I navigate to "View Dashboards" content inside "Dashboards" subheader on left panel
    Then I see "Refine Filter" panal is displayed
    And I navigate to "View My Reports" content inside "Reports" subheader on left panel
    Then I see expected table with id "---program:-:MyReportsTableid---"
    And I navigate to "View Standard Reports" content inside "Reports" subheader on left panel
    Then I see "Refine Filter" panal is displayed
    Then I see expected table with id "---program:-:MyReportsTableid---"
    And I navigate to "View Public Reports" content inside "Reports" subheader on left panel
    Then I see expected table with id "---program:-:MyReportsTableid---"

