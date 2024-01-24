@smoke
Business Need: lwc smoke testing features

  @382657 @382660 @382663 @382666 @382669 @382672 @382675 @382712 @smoke
  Scenario: Smoke TC_Admin_To verify that user is able to see sidebar Global search on left side of page, on "Home" phase,
  Smoke TC_Admin_To verify that user is able to see sidebar Global search on left side of page, on "Planning" phase,
  Smoke TC_Admin_To verify that user is able to see sidebar Global search on left side of page, on "Announcement" phase,
  Smoke TC_Admin_To verify that user is able to see sidebar Global search on left side of page, on "Applications" phase,
  Smoke TC_Admin_To verify that user is able to see sidebar Global search on left side of page, on "Grants" phase,
  Smoke TC_Admin_To verify that user is able to see sidebar Global search on left side of page, on "Monitoring" phase,
  Smoke TC_Admin_To verify that user is able to see sidebar Global search on left side of page, on "Closeout" phase
  Smoke TC_Admin_To verify that user is able to see custom app dropdown at right top corner besides Profile
    When I login to "As a Grantor" app as "Admin" user
    Then I see "As a Grantor" inside CustomApp dropDown
    And I navigate to "Home" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Planning" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Announcements" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Applications" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Grants" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Monitoring" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Closeout" tab
    Then I see Global search on sidebar left side of page

  @382658 @382661 @382664 @382667 @382670 @382673 @382676 @382713
  Scenario: Smoke TC_PM_To verify that user is able to see custom app dropdown at right top corner besides Profile
  Smoke TC_PM_To verify that user is able to see sidebar Global search on left side of page, on "Home" phase,
  Smoke TC_PM_To verify that user is able to see sidebar Global search on left side of page, on "Planning" phase,
  Smoke TC_PM_To verify that user is able to see sidebar Global search on left side of page, on "Announcement" phase,
  Smoke TC_PM_To verify that user is able to see sidebar Global search on left side of page, on "Applications" phase,
  Smoke TC_PM_To verify that user is able to see sidebar Global search on left side of page, on "Grants" phase,
  Smoke TC_PM_To verify that user is able to see sidebar Global search on left side of page, on "Monitoring" phase,
  Smoke TC_PM_To verify that user is able to see sidebar Global search on left side of page, on "Closeout" phase
    When I login to "As a Grantor" app as "PM" user
    Then I see "As a Grantor" inside CustomApp dropDown
    And I navigate to "Home" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Planning" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Announcements" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Applications" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Grants" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Monitoring" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Closeout" tab
    Then I see Global search on sidebar left side of page

  @382659 @382668 @382671 @382674 @382677 @382713
  Scenario: Smoke TC_SPI_To verify that user is able to see custom app dropdown at right top corner besides Profile
  Smoke TC_SPI_To verify that user is able to see sidebar Global search on left side of page, on Home phase
  Smoke TC_SPI_To verify that user is able to see sidebar Global search on left side of page, on Applications phase
  Smoke TC_SPI_To verify that user is able to see sidebar Global search on left side of page, on Grants phase
  Smoke TC_SPI_To verify that user is able to see sidebar Global search on left side of page, on Monitoring phase
  Smoke TC_SPI_To verify that user is able to see sidebar Global search on left side of page, on Closeout phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    Then I see "Grants Portal" inside CustomApp dropDown
    And I navigate to "Home" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Opportunities" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Applications" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Grants" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Monitoring" tab
    Then I see Global search on sidebar left side of page
    And I navigate to "Closeout" tab
    Then I see Global search on sidebar left side of page

  @382793
  Scenario: Smoke_TC_Admin_To verify that, lookup field should get render on modal window.
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see lookup field is rendered on modal window


  @382800
  Scenario: Smoke_TC_PM_To verify that, lookup field should get render on modal window.
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see lookup field is rendered on modal window

  @382805
  Scenario: Smoke_TC_Admin_To verify that, lookup field should get render on UI
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    Then I see lookup field is rendered on page details

  @382813
  Scenario: Smoke_TC_PM_To verify that, lookup field should get render on UI
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    Then I see lookup field is rendered on page details
    And I click on lookup field search icon "fieldPrimaryFundingOrganization__c"
    Then I see available list of lookup field values

  @382824
  Scenario:Smoke_TC_Admin_To verify that, user should be able to see available list of field values on click of search icon.
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I pause execution for "5" seconds
    And I click on lookup field search icon "fieldPrimaryFundingOrganization__c"
    Then I see available list of lookup field values

  @382825
  Scenario: Smoke_TC_PM_To verify that, user should be able to see available list of field values on click of search icon.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I pause execution for "5" seconds
    And I click on lookup field search icon "fieldPrimaryFundingOrganization__c"
    Then I see available list of lookup field values

  @382598 @382601 @382604 @382607 @382610 @382613 @382616
  Scenario: Smoke TC_Admin_To verify that user is able to see sidebar on left side of page, on "Home" phase
  Smoke TC_Admin_To verify that user is able to see sidebar on left side of page, on "Planning" phase,
  Smoke TC_Admin_To verify that user is able to see sidebar on left side of page, on "Announcement" phase
  Smoke TC_Admin_To verify that user is able to see sidebar on left side of page, on Application phase,
  Smoke TC_Admin_To verify that user is able to see sidebar on left side of page, on Grants phase,
  Smoke TC_Admin_To verify that user is able to see sidebar on left side of page, on Monitoring phase,
  Smoke TC_Admin_To verify that user is able to see sidebar on left side of page, on Closeout phase
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    Then I see sidebar left side of page
    And I navigate to "Planning" tab
    Then I see sidebar left side of page
    And I navigate to "Announcements" tab
    Then I see sidebar left side of page
    And I navigate to "Applications" tab
    Then I see sidebar left side of page
    And I navigate to "Grants" tab
    Then I see sidebar left side of page
    And I navigate to "Monitoring" tab
    Then I see sidebar left side of page
    And I navigate to "Closeout" tab
    Then I see sidebar left side of page
    And I navigate to "Analytics" tab
    Then I see sidebar left side of page
    And I navigate to "Collaboration (Collab)" tab
    Then I see "To Me" inside "My Feeds" menu at collab sidebar

  @382599 @382602 @382605 @382608 @382611 @382614 @382617 @382620 @382623
  Scenario: Smoke TC_PM_To verify that user is able to see sidebar on left side of page, on "Home" phase
  Smoke TC_PM_To verify that user is able to see sidebar on left side of page, on "Planning" phase,
  Smoke TC_PM_To verify that user is able to see sidebar on left side of page, on "Announcement" phase
  Smoke TC_PM_To verify that user is able to see sidebar on left side of page, on Application phase,
  Smoke TC_PM_To verify that user is able to see sidebar on left side of page, on Grants phase,
  Smoke TC_PM_To verify that user is able to see sidebar on left side of page, on Monitoring phase,
  Smoke TC_PM_To verify that user is able to see sidebar on left side of page, on Closeout phase
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    Then I see sidebar left side of page
    And I navigate to "Planning" tab
    Then I see sidebar left side of page
    And I navigate to "Announcements" tab
    Then I see sidebar left side of page
    And I navigate to "Applications" tab
    Then I see sidebar left side of page
    And I navigate to "Grants" tab
    Then I see sidebar left side of page
    And I navigate to "Monitoring" tab
    Then I see sidebar left side of page
    And I navigate to "Closeout" tab
    Then I see sidebar left side of page
    And I navigate to "Analytics" tab
    Then I see sidebar left side of page
    And I navigate to "Collaboration (Collab)" tab
    Then I see "To Me" inside "My Feeds" menu at collab sidebar

  @382600 @382606 @382609 @382612 @382618 @382621 @382624 @382615
  Scenario: Smoke TC_SPI_To verify that user is able to see sidebar on left side of page, on Home phase
  Smoke TC_SPI_To verify that user is able to see sidebar on left side of page, on "Opportunities" phase
  Smoke TC_SPI_To verify that user is able to see sidebar on left side of page, on Applications phase,
  Smoke TC_SPI_To verify that user is able to see sidebar on left side of page, on Grants phase,
  Smoke TC_SPI_To verify that user is able to see sidebar on left side of page, on Monitoring phase,
  Smoke TC_SPI_To verify that user is able to see sidebar on left side of page, on Closeout phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Home" tab
    Then I see sidebar left side of page
    And I navigate to "Opportunities" tab
    Then I see sidebar left side of page
    And I navigate to "Applications" tab
    Then I see sidebar left side of page
    And I navigate to "Grants" tab
    Then I see sidebar left side of page
    And I navigate to "Monitoring" tab
    Then I see sidebar left side of page
    And I navigate to "Closeout" tab
    Then I see sidebar left side of page
    And I navigate to "Analytics" tab
    Then I see sidebar left side of page
    And I navigate to "Collaboration (Collab)" tab
    Then I see "To Me" inside "My Feeds" menu at collab sidebar

  @382079 @382724
  Scenario:Smoke TC-Admin-To verify if send Email buton is visible on page block
  Smoke TC - Admin - To verify that on clicking ‘send email’ button, Modal is getting opened.
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Send Email Automation Program"
    When I click on "View" icon for "Send Email Automation Program" inside table
    When I navigate to "Collab" sub tab
    Then I see "Send Email" button inside "Messages" flex table
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Send Email" opens in overLay window

  @382080
  Scenario: Smoke TC - PM - To verify that on clicking ‘send email’ button, Modal is getting opened.
  Smoke TC-PM-To verify if send Email buton is visible on page block
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Send Email Automation Program"
    When I click on "View" icon for "Send Email Automation Program" inside table
    When I navigate to "Collab" sub tab
    Then I see "Send Email" button inside "Messages" flex table
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Send Email" opens in overLay window

  @382081
  Scenario: Smoke TC - SPI - To verify that on clicking ‘send email’ button, Modal is getting opened.
  Smoke TC - SPI - To verify that on clicking ‘send email’ button, Modal is getting opened.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Collab" sub tab
    Then I see "Send Email" button inside "Messages" flex table
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Send Email" opens in overLay window

    ################Form/Enhanced Forms#############

  @382062
  Scenario: Smoke TC - Admin - To verify that Enhanced form table with sobject Form is getting rendered on page layout
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Send Email Automation Program"
    When I click on "View" icon for "Send Email Automation Program" inside table
    When I navigate to "Overview" sub tab

  @382063
  Scenario: Smoke TC - PM - To verify that Enhanced form table with sobject Form is getting rendered on page layout
    When I login to "As a Grantor" app as "ADMIN" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Send Email Automation Program"
    When I click on "View" icon for "Send Email Automation Program" inside table
    When I navigate to "Overview" sub tab

  @382065
  Scenario: Smoke TC - SPI - To verify that Enhanced form table with sobject Form is getting rendered on page layout
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Vrush Application"
    When I click on "View" icon for "Vrush Application" inside table
    When I navigate to "Overview" sub tab

      ########### Modal (9)##############

  @382064 @382066 @379428
  Scenario Outline: Smoke Testing- Modal- Admin/PM- To verify on click of 'New' action on the data table, Modal is getting opened
  Smoke Testing- End to End Flow- PM- To verify on click of new button on internal programs table, modal gets open and user is able to create the program record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | Modal             | Programs           | Name                      | New                        |
      | Flex Table Action     | Action Behavior | Open in overlay   | Programs           | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | Modal           | Programs           | Name                      | New                        |
      | Flex Table Action     | Action Behavior | Open in overlay | Programs           | Name                      | New                        |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see "Create Program" opens in overLay window
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382087 @382090
  Scenario Outline: Smoke Testing- Modal- Admin/PM- To verify on click of 'Save and close' action in the Modal, it is getting closed
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "7" seconds
    Then I do not see "Create Program" opens in modal window
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382094 @382095
  Scenario Outline: Smoke Testing- Modal- Admin/PM- To verify on click of 'close' icon in the Modal, it is getting closed
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I close modal by clicking the top right x button
    And I pause execution for "2" seconds
    Then I do not see "Create Program" opens in modal window
    Examples:
      | Users |
      | Admin |
      | PM    |

  ############Collab Component(12)#############

  @382069 @382071 @302074 @382075
  Scenario Outline: Smoke TC_ Admin/PM_To verify that, my feed section is rendered properly on click of Collab phase.
  Smoke TC_ Admin_To verify that, Post section is rendered properly on click of Collab phase.
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    Then I see "My Feed" section is rendered properly on collab phase
    Then I see "Post" section is rendered properly on collab phase
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382073 @382077
  Scenario: Smoke TC_ SPI_To verify that, my feed section is rendered properly on click of Collab phase.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Collaboration (Collab)" tab
    Then I see "My Feed" section is rendered properly on collab phase
    Then I see "Post" section is rendered properly on collab phase

  @382082 @382085 @382089 @382106
  Scenario Outline: Smoke TC_ Admin/PM_To verify that, quick search is working properly on Collab phase.
  Smoke TC_ Admin/PM_To verify that, Post section is working properly on Collab phase.
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Test @Automation PM" in my feed section and share the post
    When I perform quick search for "Test @Automation PM"
    Then I see "Test @Automation PM" inside flex table with id "---program:-:myFeedTableId---"
    Examples:
      | Users |
      | Admin |
      | PM    |

  @382086 @382107
  Scenario: Smoke TC_ SPI_To verify that, quick search is working properly on Collab phase,
  Smoke TC_ SPI_To verify that, Post section is working properly on Collab phase.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Collaboration (Collab)" tab
    And I enter value "Hello SPI User" in my feed section and share the post
    When I perform quick search for "Hello SPI User"
    Then I see "Hello SPI User" inside flex table with id "---program:-:myFeedTableId---"

  @381933 @381936 @381934 @381937 @381935 @381938
  Scenario Outline: Smoke TC_Admin/PM_To verify that task get generated under Pedning task table, for submitted for approval record,
  Smoke TC_Admin/PM_To verify that user is able to see Approval decision box on a submitted for approval record,
  Smoke TC_EXE_To verify that task get generated under Pedning task table, for submitted for approval record,
  Smoke TC_EXE_To verify that user is able to see Approval decision box on a submitted for approval record
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
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
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    And I pause execution for "10" seconds
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    Then I see respective "{SavedValue:PEGMSID}" is displayed inside Pending Tasks
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I pause execution for "5" seconds
    Then I see "Approval Decision" box on a submitted for approval record
    Examples:
      | Users |
      | Admin |
      | PM    |

  @379435 @379436 @379437
  Scenario Outline:  Smoke Testing- End to End Flow- PM- To verify on Program record, user is able to create a new contact.
  Smoke Testing- End to End Flow- PM- To verify on Program record, user is associate a new contact.
  Smoke Testing- End to End Flow- PM- To verify user is able to add approver in program record,
  Smoke Testing- Page Layout- Admin- To verify on Edit page layout, fields are editable.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see "Create Program" opens in overLay window
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "New" in flex table with id "---program:-:programContactsTableId---"
    When I create contact with firstname "testing" lastname "Automation" and emailid "testAuto@yopmail.com"
    And I click on "Save" in the page details
    Then I see error message contains text "Contacts must have unique email addresses. The email address entered is associated with an existing contact."
    And I close modal by clicking the top right x button
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    And I pause execution for "5" seconds
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "ProgramRolesAndResponsibilitiesInternalProgramFlexToggle"
    Examples:
      | Users |
      | PM    |

  @379438
  Scenario: Smoke Testing- End to End Flow- PM- To verify on click of new button Announcement table, modal gets open and user is able to create the Announcement record.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---program:-:allAnnouncementTableId---"
    Then I see "Create Announcement" opens in overLay window

  @379338 @379339
  Scenario Outline: Smoke TC_Admin/PM_To verify that Dynamic form table with sobject CapturePackage is getting rendered on page layout
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "All Announcements"
    When I perform quick search for "Program For Announcement Testing"
    When I click on "View" icon for "Program For Announcement Testing" inside table
    When I navigate to "Setup" sub tab
    Then I softly see "Dynamic Form" page block displayed
    Examples:
      | Users |
      | Admin |
      | PM    |


  @379072 @379073
  Scenario Outline: Smoke Testing- Page Layout- Admin/PM- To verify on Edit page layout, fields are editable.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see "Create Program" opens in overLay window
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "New" in flex table with id "---program:-:programContactsTableId---"
    Then I see "Create Contact" opens in overLay window
    Examples:
      | Users |
      | Admin |
      | PM    |