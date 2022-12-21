@SnapshotHistory-Component @regression-LWC @SnapshotHistoryLWC
Business Need: SnapshotHistory Component Scenarios
  Test all SnapshotHistoryLWC component based scenarios
  As a configuration manager i make different configurational changes in SnapshotHistoryLWC component and will validate them.

  @223111 @223116 @223117 @223118 @223119 @223120 @ManuallygeneratedsnapshotisdisplayedonLWCcomponent  @Vrushali @LWC-SnapshotHistoryTestSuit
  Scenario: To verify, manually generated snapshot is displayed on the LWC component
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I save the value from row "1" for column name "File Name" as "SnapShot History" from flex table "Attachments"
    Then I see recently added snapshot in table name "Attachments" with current date
    Then I see generated snapshot "SnapShot History" is displayed with "File Name"
    Then I see generated snapshot "SnapShot History" is displayed with "Created By"
    Then I see generated snapshot "SnapShot History" is displayed with "Created Date"

  @223112 @223113 @223114 @223115
  Scenario Outline:df
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
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
    When I navigate to "History" sub tab
    And I refresh the aura
    And I save the value from row "1" for column name "File Name" as "SnapShot History" from flex table "Attachments"
    Then I see generated snapshot "" is displayed with "File Name"
    Then I see generated snapshot "" is displayed with "Created By"
    Then I see generated snapshot "" is displayed with "Created Date"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @223121 @223122
  Scenario Outline:
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    And I click on "up" arrow in "Snapshot History" table
    Then I do not see "Snapshot History" table
    And I pause execution for "5" seconds
    And I click on "down" arrow in "Snapshot History" table
    #223122
    Then I softly see column "File Name" in table name "Snapshot History"
    Then I softly see column "Created Date" in table name "Snapshot History"
    Then I softly see column "Created By" in table name "Snapshot History"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @223123
  Scenario Outline:
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I see total records count is same as total row of table id "---program:-:programTableDivId---" and table name "flextable"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @223125
  Scenario Outline:
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I see total records count is same as total row of table id "---program:-:programTableDivId---" and table name "flextable"
    Examples:
      | User  |
      | ADMIN |
      #| PM    |



