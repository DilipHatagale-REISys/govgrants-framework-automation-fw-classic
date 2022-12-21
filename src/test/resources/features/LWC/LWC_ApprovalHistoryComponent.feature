@SendEmail-Component @regression-LWC @SendEmailLWC
Business Need: SendEmailLWC Component Scenarios
  Test all SendEmailLWC component based scenarios
  As a configuration manager i make different configurational changes in SendEmailLWC component and will validate them.


  ##### LWC-Approval History component #####
    @219663 @219664 @219665 @219671 @219668 @219670
    @219767 @219769 @219771 @219779 @219791 @219796
  Scenario Outline:
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    #219671 #219796
    Then I see "up" arrow is displayed on "Approval History" table expanded & not shrinked
    And I click on "up" arrow in "Approval History" table
    #219664 #219769
    Then I do not see "Approval History" table
    And I pause execution for "5" seconds
    And I click on "down" arrow in "Approval History" table
    #219663 #219767
    Then Approval history table get expanded and all available "stepName" or records get displayed.
    #219665 #219771
    Then I see columnName "Assigned To" is Displayed on "Approval History" table
    Then I see columnName "Date" is Displayed on "Approval History" table
    Then I see columnName "Actual Approver" is Displayed on "Approval History" table
    Then I see columnName "Comments" is Displayed on "Approval History" table
    Then I see columnName "Status" is Displayed on "Approval History" table
    Then I see columnName "Overall Status" is Displayed on "Approval History" table
        ##I can not capture helptext #219668 #219779
    When I hover mouse over "Date" column names.
    Then I see columnName "Date" is Displayed on "Approval History" table
    And I pause execution for "5" seconds
    When I hover mouse over "Actual Approver" column names.
    Then I see columnName "Actual Approver" is Displayed on "Approval History" table
    When I hover mouse over "Comments" column names.
    Then I see columnName "Comments" is Displayed on "Approval History" table
    When I hover mouse over "Status" column names.
    Then I see columnName "Status" is Displayed on "Approval History" table
    When I hover mouse over "Overall Status" column names.
    Then I see columnName "Overall Status" is Displayed on "Approval History" table
        #219670 #219791
    Then style and font size of each value in each record is similar and as expected.
    Then I see the font size of "stepName" is "13px" Approval History table
    Then I see the font size of "Overall Status" is "13px" Approval History table
    Then I see the font size of "Date" is "13px" Approval History table
    Then I see the font size of "Assigned To" is "13px" Approval History table
    Then I see the font size of "Approver" is "13px" Approval History table
    Then I see the font size of "Comments" is "13px" Approval History table
    Then I see the font size of "Status" is "13px" Approval History table
    #I can not validate by using driver.findElement(By.id("id2")).getLocation().x;
    Then alignment of each column data is to the left side
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @SampleProgram
  Scenario: ABC
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    #219671 #219796
    Then I see "up" arrow is displayed on "Approval History" table expanded & not shrinked
    And I click on "up" arrow in "Approval History" table
    #219664 #219769
    Then I do not see "Approval History" table
    And I pause execution for "5" seconds
    And I click on "down" arrow in "Approval History" table

  @219816 @219817
  Scenario Outline: To verify that when there is no any record to be displayed in Approval history table, then empty table with column header and "No records found" message displayed there
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "<EGMS ID>"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I see "No Records Found" massage under Approval History
    Examples:
      | User  | EGMS ID     |
      | ADMIN | PG-REI-0234 |
      | PM    | PG-A11-0391 |

  @219819 @219820 @220068 @220069
  Scenario Outline: Validate Approval Request Submitted,Submitted for approval.,Started values in column
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    #219819 #219820
    Then I see "Approval Request Submitted" and comments is changed "Submitted for approval." in Approval history table
    #220068 #220069
    Then I see step "Approval Request Submitted" and Comments column "Submitted for approval." and status "Started" displayed for Owner
    Examples:
      | User  |
      | ADMIN |
      | PM    |


  @219666 @219773
  Scenario Outline:PM or ADMIN user To verify that background color structure/theme is same as that of expected.
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    When I perform quick search for "PG-A11-0175"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
      #219666 #219773
    Then I see Overall Status is "Approved" and color background color is "Mint Green"
    Then I see Overall Status is "Rejected" and color background color is "light red"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @219818
  Scenario: To verify that when there is no any record to be displayed in Approval history table, then empty table with column header and "No records found" message displayed there
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I see "No Records Found" massage under Approval History

  @219822
  Scenario: To verify that respective assigned approver name displayed in "Assigned To" and "Actual Approver" columns when status changed to "Submitted for Approval".
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
