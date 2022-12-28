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
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see generated snapshot "SnapShot" is displayed with "File Name"
    Then I see generated snapshot "Automation Admin" is displayed with "Created By"

  @223112 @223113 @223114 @223115 @224128 @224131 @Vrushali @LWC-SnapshotHistoryTestSuit
  Scenario Outline:user click on submit for approval button snapshot getting generated then refresh the Aura then generated snapshot name display as expected
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
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
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
    And I refresh the page
    #224128
    Then I see generated snapshot "Submitted for Approval.pdf" is displayed with "File Name"
    Then I see generated snapshot "{SavedValue:OWNER}" is displayed with "Created By"
    #Then I see generated snapshot "" is displayed with "Created Date"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @223121 @223122 @whenuserclicksonpageblockshrinkactionbuttonthenthecomponentgetsshrunk @Vrushali @LWC-SnapshotHistoryTestSuit
  Scenario Outline:when the user clicks on page block shrink action button then the component gets shrunk
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
      | PM    |

  @223123 @TotalrecorddisplayasexpectedasontheUI @Vrushali @LWC-SnapshotHistoryTestSuit
  Scenario Outline:Total record display as expected as on the UI
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
#    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
#    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see total records count in "Snapshot History" table equals to Total record displayed on UI
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @223125 @223126 @Whenuserlickongenaredsnapshotfileitwillbeopeninthenewtab @Vrushali @LWC-SnapshotHistoryTestSuit
  Scenario Outline:When user click on genared snapshot file it will be open in the new tab
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    And I pause execution for "5" seconds
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see take snap shot getting saved with "Snapshot History"
    #223126
    And I click on saved snap shot "SnapShot"
    Then I see new tab is opened
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @278532 @Toverify,manuallygeneratedsnapshotisdisplayedonLWCcomponent-SPI
  Scenario:To verify, manually generated snapshot is displayed on the LWC component - SPI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Overview" sub tab
    When I click on "Menu" in the page details
    And I select "Take Snapshot" from dropdown
    When I click alert button "OK"
    When I navigate to "Overview" sub tab
    When I navigate to "History" sub tab
    And I refresh the page
    And I pause execution for "5" seconds
    Then I see take snap shot getting saved with "Snapshot History"



