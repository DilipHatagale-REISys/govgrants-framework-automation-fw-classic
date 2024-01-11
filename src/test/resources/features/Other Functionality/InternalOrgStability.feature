@internalorgstability
Business Need: Internal org stability for Admin Pm and SPI users

  @HomePhaseorgStability @orgstability
  Scenario Outline: Classic UI/UX org home phase stability
    When I login to "As a Grantor" app as "<Users>" user
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
    Examples:
      | Users |
      | Admin |
      | PM    |

  @PlanningPhaseorgStability @orgstability
  Scenario Outline: Classic UI/UX org planning phase stability
    When I login to "As a Grantor" app as "<Users>" user
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
    Examples:
      | Users |
      | Admin |
      | PM    |

  @AnnouncementsPhaseorgStability @orgstability
  Scenario Outline: Classic UI/UX org Announcements phase stability
    When I login to "As a Grantor" app as "<Users>" user
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
    Examples:
      | Users |
      | Admin |
      | PM    |

  @orgstability @ApplicationsPhaseorgStability
  Scenario Outline: Classic UI/UX org Applications phase stability
    When I login to "As a Grantor" app as "<Users>" user
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
    Then I see changed label as "Reviews" inside "Application Reviews" in side bar sub menu
    Examples:
      | Users |
#      | Admin |
      | PM    |

  @GrantsPhaseorgStability @orgstability
  Scenario Outline: Classic UI/UX org Grants phase stability
    When I login to "As a Grantor" app as "<Users>" user
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
    Then I see changed label as "Amendment Requests" inside "Grants, Subawards & Amendments" in side bar sub menu
    Examples:
      | Users |
      | Admin |
      | PM    |

  @MonitoringPhaseorgStability @orgstability
  Scenario Outline: Classic UI/UX org Monitoring phase stability
    When I login to "As a Grantor" app as "<Users>" user
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
    Then I see changed label as "Site Visits" inside "Monitoring Activities" in side bar sub menu
    Examples:
      | Users |
      | Admin |
      | PM    |

  @AnalyticsPhaseorgStability @orgstability
  Scenario Outline: Classic UI/UX org Analytics phase stability
    When I login to "As a Grantor" app as "<Users>" user
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
    Then I see changed label as "Pending Tasks" inside "My Tasks" in side bar sub menu
    Examples:
      | Users |
      | Admin |
      | PM    |

  @recordLevelTabOS
  Scenario Outline: Classic UI/UX org record level tab stability
    Given I delete the record "Automation Program for Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    Then I see "Program" name displayed as "Automation Program for Test"
    Then I can see "Overview" sub tab at view detail page
    Then I can see "Setup tabs" sub tab at view detail page
    Then I can see "Responsibilities" sub tab at view detail page
    Then I can see "Files" sub tab at view detail page
    Then I can see "History" sub tab at view detail page
    Then I can see "Collab" sub tab at view detail page
    Then I see changed label as "Pending Tasks" inside "My Tasks" in side bar sub menu
    Examples:
      | Users |
      | Admin |
      | PM    |

  @recordLevelPlanningOverviewTabOS
  Scenario Outline: Classic UI/UX org record level Overview stability
    Given I delete the record "Automation Program for Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I softly see expected table with id "---program:-:informationtableid---"
    Then I softly see expected table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I softly see expected table with id "---program:-:programSpecificSettingTableid---"
    Then I softly see expected table with id "---program:-:descriptionFieldTableid---"
    Then I softly see expected table with id "---program:-:systemInformationTableid---"
    Then I see changed label as "Pending Tasks" inside "My Tasks" in side bar sub menu
    Examples:
      | Users |
      | Admin |
      | PM    |

  @recordLevelSetupTabsAndResponsibilitiesOSp
  Scenario Outline: Classic UI/UX org record level Setup tabs and Responsibilities tabs stability
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    Then I see "Program" name displayed as "Program For Application"
    When I navigate to "Setup tabs" sub tab
    Then I softly see expected table with id "---program:-:BussinessFormsTableid---"
    Then I softly see expected table with id "---program:-:SupportingDocumentsChecklistTableid---"
    Then I softly see expected table with id "---program:-:flexGridEnhancedReviewStepID---"
    When I navigate to "Responsibilities" sub tab
    Then I softly see expected table with id "---program:-:ApproversTableid---"
    Then I softly see expected table with id "---program:-:OwnersTableid---"
    Then I see changed label as "Pending Tasks" inside "My Tasks" in side bar sub menu
    Examples:
      | Users |
      | Admin |
      | PM    |

  @recordLevelFilesAndHistoryTabsOS
  Scenario Outline: Classic UI/UX org record level Files and History Collab sub tabs stability
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    Then I softly see expected table with id "---program:-:DigitalySignedTableid---"
    Then I softly see expected table with id "---program:-:programsFilesTableid---"
    Then I softly see expected table with id "---program:-:notesFilestabTableid---"
    Then I softly see expected table with id "---program:-:ClonnedtoDataTableContentVersionTableid---"
    Then I softly see expected table with id "---program:-:AttachmentsTableid---"
    Then I softly see expected table with id "---program:-:notesFilesTableid---"
    When I navigate to "History" sub tab
    Then I softly see expected table with id "---program:-:ApprovalTableId---"
    Then I softly see expected table with id "---program:-:historyTableId---"
    Then I softly see expected table with id "---program:-:snapshotHistoryTableId---"
    When I navigate to "Collab" sub tab
    Then I softly see expected table with id "---program:-:MyFeedCollabTableid---"
    Then I softly see expected table with id "---program:-:MessageTableIdOnCollabTab---"
    Then I softly see expected table with id "---program:-:systemsEmailCollabTableid---"
    Then I see changed label as "Pending Tasks" inside "My Tasks" in side bar sub menu
    Examples:
      | Users |
      | Admin |
      | PM    |

  @menuItemDisplayed
  Scenario Outline: Classic UI/UX org record level menu item Download As PDF and Take Snapshot stability
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    Then I see "Download As PDF" options displayed in page detail
    Then I see "Take Snapshot" options displayed in page detail
    Then I see changed label as "Pending Tasks" inside "My Tasks" in side bar sub menu
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207092
  Scenario Outline:Collab-To verify, If i add a user in a middle of line  then the user name should be displayed at the same position in text format on the home level collab for internal user
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello @Automation PM" in my feed section and share the post
    Then I see "Hello @Automation PM" inside flex table with id "---program:-:myFeedTableId---"
    Examples:
      | Users |
      | Admin |
      | PM    |

  @verifyThatUploadFileFromComputerAndLibraryTabsDisplayedAtAttachFileModalAtCollabPhase
  Scenario Outline: validate that upload file from library and computer is displayed at attach file modal at collab phase
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Post DO NOT DELETE" in my feed section and share the post
    And I click on "Comment" action at "Post DO NOT DELETE" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I attach file "SendEmailAttachment.pdf" in add file Modal
    When I click on "Upload" button in send email modal
    And I enter value "Test Automation Admin Comment" in my feed section and share the comment
    Then I see "SendEmailAttachment.pdf" inside flex table with id "---program:-:myFeedTableId---"
    Examples:
      | Users |
      | Admin |
      | PM    |

  @AnnouncementsRecordOS
  Scenario Outline: Classic UI/UX org record level Overview stability
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Announcement Program for send Email"
    When I click on "View" icon for "Announcement Program for send Email" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "5" seconds
    Then I softly see expected table with id "---program:-:informationTableidAnnRecord---"
    Then I softly see expected table with id "---program:-:AnnouncementSpecificSettingsTableid---"
    Then I softly see expected table with id "---program:-:FederalNGOProgramsAnnRecTableid---"
    Then I softly see expected table with id "---program:-:DescriptionAnnRecTableid---"
    Then I softly see expected table with id "---program:-:eligibilityDetailsAnnRec---"
    Then I softly see expected table with id "---program:-:contactAnnRecTableid---"
    Then I softly see expected table with id "---program:-:keyDatesAnnRecTableid---"
    Then I softly see expected table with id "---program:-:QandAInformationTableid---"
    Then I softly see expected table with id "---program:-:systemInformationAnnRecTableid---"
    When I navigate to "Financials" sub tab
    And I pause execution for "5" seconds
    Then I softly see expected table with id "---program:-:financialsdetailsAnnRecTableid---"
    Then I softly see expected table with id "---program:-:FundingAccountAnnTableid---"
    Then I softly see expected table with id "---program:-:BudgetSpecificSettingsAnnRecTableid---"
    Then I softly see expected table with id "---program:-:BudgetPeriodDetailsAnnTableid---"
    Then I softly see expected table with id "---program:-:BudgetCategoriesAnnRecTableid---"
    When I navigate to "Setup" sub tab
    And I pause execution for "5" seconds
    Then I softly see expected table with id "---program:-:SupportingDocumentsChecklistAnnRecTableid---"
    Then I softly see expected table with id "---program:-:AnnouncementReviewTemplatesFlexToggleId---"
    Then I softly see expected table with id "---program:-:DynamicFormFlexToggleTableId---"
    When I navigate to "Related Log" sub tab
    And I pause execution for "5" seconds
    Then I softly see expected table with id "---program:-:ApplicationsRelatedLogAnnRecTableid---"
    Then I softly see expected table with id "---program:-:GrantsRelatedLogAnnRecTableid---"
    When I navigate to "Responsibilities" sub tab
    And I pause execution for "5" seconds
    Then I softly see expected table with id "---program:-:PeerReviewersResponsibilitiesAnnRecTableid---"
    Then I softly see expected table with id "---program:-:ApproverResponsibilitiesAnnRecTableid---"
    Then I softly see expected table with id "---program:-:ownerResponsibilitiesAnnRecTableid---"
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    Then I softly see expected table with id "---program:-:AnnouncementFilesFilesAnnRecTableid---"
    Then I softly see expected table with id "---program:-:NotesFilesAnnRecTableid---"
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I softly see expected table with id "---program:-:ApprovalTableId---"
    Then I softly see expected table with id "---program:-:historyTableId---"
    Then I softly see expected table with id "---program:-:snapshotHistoryHistoryAnnRecTableid---"
    When I navigate to "Collab" sub tab
    And I pause execution for "5" seconds
    Then I softly see expected table with id "---program:-:MyFeedCollabAnnRecTableid---"
    Then I softly see expected table with id "---program:-:MessageTableIdOnCollabTab---"
    Then I softly see expected table with id "---program:-:systemsEmailCollabTableid---"
    When I click on "Menu" in the page details
    Then I see "Download As PDF" options displayed in page detail
    Then I see "Take Snapshot" options displayed in page detail
    Then I see changed label as "Pending Tasks" inside "My Tasks" in side bar sub menu
    Examples:
      | Users |
      | Admin |
      | PM    |

  @ApplicationsRecordOS
  Scenario Outline: Classic UI/UX org Applications record level stability
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    And I pause execution for "5" seconds
    Then I softly see expected table with id "---program:-:InformationAppliRecTableid---"
    Then I softly see expected table with id "---program:-:PrimaryPlaceofPerformanceAppliRecTableid---"
    Then I softly see expected table with id "---program:-:AnnouncementOverviewAppliRecTableid---"
    Then I softly see expected table with id "---program:-:ApplicationOverviewAppliRecTableid---"
    Then I softly see expected table with id "---program:-:ProjectInformationAppliRecTableid---"
    Then I softly see expected table with id "---program:-:ContactAppliRecTableid---"
    Then I softly see expected table with id "---program:-:AcknowledgementAppliRecTableid---"
    Then I softly see expected table with id "---program:-:SystemsInformationAppliRecTableid---"
    When I navigate to "Budget" sub tab
    And I pause execution for "5" seconds
    Then I softly see expected table with id "---program:-:BudgetDetailsAppliRecTableid---"
    Then I softly see expected table with id "---program:-:BudgetNarrativeAppliRecTableid---"
    When I navigate to "Responsibilities" sub tab
    Then I see "Roles and Responsibilities" page block displayed
    When I navigate to "Files" sub tab
    Then I softly see expected table with id "---program:-:DigitalySignedTableid---"
    Then I softly see expected table with id "---program:-:ApplicationFilesAppliRecTableid---"
    Then I softly see expected table with id "---program:-:SupportingDocumentsChecklistApplicRecTableid---"
    Then I softly see expected table with id "---program:-:toggleFlexTableFormEnhancedTableId---"
    Then I softly see expected table with id "---program:-:NotesAppliRecTableid---"
    When I navigate to "History" sub tab
    Then I softly see expected table with id "---program:-:historyTableId---"
    Then I softly see expected table with id "---program:-:SnapshotHistoryAppliRecTableid---"
    When I navigate to "Collab" sub tab
    Then I softly see expected table with id "---program:-:MyFeedAppliRecTableid---"
    Then I softly see expected table with id "---program:-:MessageTableIdOnCollabTab---"
    Then I softly see expected table with id "---program:-:systemsEmailCollabTableid---"
    Examples:
      | Users |
      | Admin |
      | PM    |

  @GrantsRecordOS
  Scenario Outline: Classic UI/UX org Grants record level stability
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "<grantid>"
    When I click on "View" icon for "<grantid>" inside table
    When I navigate to "Overview" sub tab
    Then I softly see expected table with id "---program:-:GrantsInformationAppliRecTableid---"
    Then I softly see expected table with id "---program:-:GrantDetailsGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:SubreceipantInformationGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:GrantsDescriptionGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:RelatedFederalNGOProgramGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:PeriodOfPerformanceGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:BudgetPeriodDetailsGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:SystemInformationGrantsRecTableid---"
    When I navigate to "Subawards" sub tab
    Then I softly see expected table with id "---program:-:SubawardsSubawardsGrantsRecTableid---"
    When I navigate to "Budget" sub tab
    Then I softly see expected table with id "---program:-:fundingInformationGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:GrantsBudgetGrantsRectableid---"
    When I navigate to "Actuals" sub tab
    Then I softly see expected table with id "---program:-:ActualsActualsGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:BudgetPeriodsActualsGrantsRecTableid---"
    When I navigate to "Requests" sub tab
    Then I softly see expected table with id "---program:-:PaymentRequestsGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:ChangeRequestsGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:CloseoutRequestsGrantstableid---"
    When I navigate to "Management" sub tab
    Then I softly see expected table with id "---program:-:ProgressReportGrantsRectableid---"
    Then I softly see expected table with id "---program:-:SiteVisitsGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:DeskReviewsGrantsRecTableid---"
    When I navigate to "Files" sub tab
    Then I softly see expected table with id "---program:-:SupportingDocumentsChecklistGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:DefaultsPackagedGrantsTableid---"
    Then I softly see expected table with id "---program:-:GrantsFilesGrantsRecTableid---"
    Then I softly see expected table with id "---program:-:NotesFilesGrantsTableid---"
    When I navigate to "History" sub tab
    Then I softly see expected table with id "---program:-:historyTableId---"
    Then I softly see expected table with id "---program:-:SnapshotHistoryGrantsRecTableid---"
    Examples:
      | Users | grantid                      |
      | Admin | Grant for Automation         |
      | PM    | Testing Grant for Automation |