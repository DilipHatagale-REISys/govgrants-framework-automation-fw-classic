@LWC_LoadingIcon-Component @regression-LWC @LoadingIconLWC
Business Need: Loading icon for all the operations Component Scenarios
  Test all Loading icon component based scenarios
  As a configuration manager i make different configurational changes in LoadingIcon component and will validate them.

  @256805 @256806 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on page layout in edit mode (PM)
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    And I click on "Save" in the page details
    Then loading icon is display on the contacts flex table
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @256801 @256807 @sprint-19 @us-250617 @dilip
  Scenario: To verify whether loading icon displayed on page layout in edit mode (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "New" in tableName "Contacts@1234567890!@#$%^&*()"
    Then I see loading icon at lwc modal
    And I close LWC modal by clicking the top right x button
    And I click on "Save" in the page details
    Then I see loading icon at lwc modal


  @256937 @256942 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on contacts flex table when user clicks on save button on new contacts modal window (Admin) and PM
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I navigate to "Overview" sub tab
    And I click on top right button "New" in tableName "Contacts@1234567890!@#$%^&*()"
    Then loading icon is display on the contacts flex table
    And I fill the mandatory field randomly "FirstName2" and "LastName1" and "Emaila@gmail.com" address
    And I click on "Save" in the page details
    Then I see loading icon at lwc modal
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @257351 @257352 @257358 @257365 @257366 @257399 @257400 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on contacts flex table when click on 'New' button (PM)
   # Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    And I close LWC modal window
    And I click on "checkbox" before the "Full Name" column
    And I click on top right button "Associate" in tableName "Associate table"
    And I close LWC modal by clicking the top right x button
    And I refresh the page
    #257399 #257400
    Then I see loading icon at lwc modal
    #257351 #257352
    And I click on "Action" button and select "Edit" option
    Then I see loading icon at lwc modal
    And I close LWC modal by clicking the top right x button
    And I pause execution for "5" seconds
    #257358 #257365 #257366
    And I click on "Action" button and select "Remove" option
    And I click on "Yes" button on confirmation table
    Then I see loading icon at lwc modal
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @257353 @257367 @257401 @sprint-19 @us-250617 @dilip
  Scenario:To verify whether loading icon displayed on contacts flex table when user clicks on row level action 'edit' (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Overview" sub tab
    #257401
    Then I see loading icon at lwc modal
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I click on top right button "Associate" in tableName "Associate table"
    And I close LWC modal by clicking the top right x button
    And I refresh the page
    #257353
    And I click on "Action" button and select "Edit" option
    Then I see loading icon at lwc modal
    And I close LWC modal by clicking the top right x button
    #257367
    And I refresh the page
    And I click on "Action" button and select "Remove" option
    And I click on "Yes" button on confirmation table
    Then I see loading icon at lwc modal

  @257765 @257766 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on flex table when row grouping is applied and the page is refreshed in the edit page layout (Admin) and PM
       # Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I navigate to "Overview" sub tab
    And I click on top right button "New" in tableName "Contacts@1234567890!@#$%^&*()"
    Then I see loading icon at lwc modal
    Then I fill the mandatory field randomly "FirstN" and "LastName1" and "Emailp@gmail.com" address
    And I click on "Save" in the page details
    Then the position of loading icon is "center" on the LWC flex table
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @257015 @257017 @256995 @256997 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on contacts flex table when user clicks  on 'Associate' button on associate contacts modal window (Admin) and PM
   # Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I navigate to "Overview" sub tab
    #256995 #256997
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    Then I see loading icon at lwc modal
    And I click on "checkbox" before the "Full Name" column
    And I click on top right button "Associate" in tableName "Associate table"
    #257017 #257015
    Then I see loading icon at lwc modal
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @257019 @256999 @sprint-19 @us-250617 @dilip
  Scenario: To verify whether loading icon displayed on contacts flex table when user clicks  on 'Associate' button on associate contacts modal window (SPI),
  To verify whether loading icon displayed on contacts flex table when user clicks  on 'Associate' button on contacts flex table (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Overview" sub tab
    #256999
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    Then I see loading icon at lwc modal
    And I click on "checkbox" before the "Full Name" column
    And I click on top right button "Associate" in tableName "Associate table"
    Then I see loading icon at lwc modal

  @256660 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on page layout in edit mode (Admin) or PM
   # Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    Then I click on "Save" in the page details
    Then I see loading icon at lwc modal
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @257401 @sprint-19 @us-250617 @dilip
  Scenario: To verify whether loading icon displayed on contacts flex table when user clicks on row level action action 'edit' and then click on the 'Save' button (SPI),To verify whether loading icon displayed on contacts flex table when user clicks on row level action 'Remove' and then click on the 'Yes' button (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Overview" sub tab
    #257401
    And I refresh the page
    Then I see loading icon at lwc modal
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I click on top right button "Associate" in tableName "Associate table"
    And I close LWC modal by clicking the top right x button
    And I refresh the page
    #257367
    And I click on "Action" button and select "Remove" option
    And I click on "Yes" button on confirmation table
    Then I see loading icon at lwc modal

  @257769 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify while loading icon processing user should not be able to click anywhere on that table  (Admin) or PM
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I navigate to "Overview" sub tab
    And I click on top right button "New" in tableName "Contacts@1234567890!@#$%^&*()"
    Then loading icon is display on the contacts flex table
    And I fill the mandatory field randomly "FirstName2" and "LastName1" and "Emaila@gmail.com" address
    And I click on "Save" in the page details
    Then I could not be able to click anywhere on that table
    Examples:
      | User  |
      | PM    |
      | ADMIN |

    ########################User Story 266977: LWC - QA Only - Addition of Loading icon for all the operations pe#########
  @271477 @sprint-24 @us-266977 @dilip
  Scenario:Admin user clicks on Send Email  LWC then loading icon is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see loading icon at lwc modal

  @271526 @sprint-24 @us-266977 @dilip
  Scenario: Admin user clicks on Reply LWC then loading icon is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I see and check "To" field dropdown is displayed with "External" value
    And I see and check "To" field dropdown is displayed with "External" value
    When I fill the details in field To "dilip.hatagale@reisystems.in" CC "dilip.hatagale@reisystems.in" Subject "subject" in send email LWC
    And I enter the value "Test Description" inside body content
    And I click on "Send" button in Email LWC Modal
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see loading icon at lwc modal

  @271480 @sprint-24 @us-266977 @dilip
  Scenario:Internal user clicks on Send Email LWC then loading icon is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see loading icon at lwc modal

  @271482 @sprint-24 @us-266977 @dilip
  Scenario:External user clicks on Send Email  LWC then loading icon is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see loading icon at lwc modal

  @271484 @sprint-24 @us-266977 @dilip
  Scenario: Admin user clicks on select file action  then loading icon is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "7" seconds
    And I click on "Select Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271485 @sprint-24 @us-266977 @dilip
  Scenario:Internal user clicks on select file action then loading icon is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    And I click on "Select Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271486 @sprint-24 @us-266977 @dilip
  Scenario:External user clicks on select file action then loading icon is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    And I click on "Select Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271488 @sprint-24 @us-266977 @dilip
  Scenario:Admin user clicks on RESET action  then loading icon is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Reset" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271490 @sprint-24 @us-266977 @dilip
  Scenario: Internal  user clicks on RESET  action  then loading icon is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    And I click on "Reset" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271491 @sprint-24 @us-266977 @dilip
  Scenario: External user clicks on upload files action then loading icon is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    And I click on "Upload Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271493 @sprint-24 @us-266977 @dilip
  Scenario:Internal user clicks on upload files action then loading icon is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    And I click on "Upload Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271494 @sprint-24 @us-266977 @dilip
  Scenario: Admin user clicks on upload files   action  then loading icon is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---"
    When I click on "View" icon for "---LWC_StaticRecords:-:AutomationProgramforLWCTesting---" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "5" seconds
    And I click on "Upload Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271497 @sprint-24 @us-266977 @dilip
  Scenario: Admin user clicks on Send  action  then loading icon is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271500 @sprint-24 @us-266977 @dilip
  Scenario: Internal user clicks on Send action then loading icon is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I pause execution for "5" seconds
    And I click on "Send" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271501 @sprint-24 @us-266977 @dilip
  Scenario: External user clicks on Send action then loading icon is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271515 @sprint-24 @us-266977 @dilip
  Scenario: Internal user clicks on Reply LWC then loading icon is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see loading icon at lwc modal

  @271516 @sprint-24 @us-266977 @dilip
  Scenario: Admin user clicks on Reply LWC then loading icon is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see loading icon at lwc modal

  @271519 @sprint-24 @us-266977 @dilip
  Scenario: External user clicks on Reply LWC then loading icon is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see loading icon at lwc modal

  @271524 @sprint-24 @us-266977 @dilip
  Scenario:Admin user clicks on View LWC then loading icon is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I click on "View LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see loading icon at lwc modal

  @271525 @sprint-24 @us-266977 @dilip
  Scenario:Internal user clicks on View LWC then loading icon is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I click on "View LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see loading icon at lwc modal

  @271526 @sprint-24 @us-266977 @dilip
  Scenario: External user clicks on View LWC then loading icon is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I click on "View LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see loading icon at lwc modal

  @271546 @sprint-24 @us-266977 @dilip
  Scenario: Admin user clicks on select file action on reply modal   then loading icon is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271547 @sprint-24 @us-266977 @dilip
  Scenario: Send Email Loading icon -Internal  user clicks on select file action on reply modal   then loading icon is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271548 @sprint-24 @us-266977 @dilip
  Scenario: Send Email Loading icon -External user clicks on select file action on reply modal then loading icon is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Select Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271549
  Scenario: Send Email Loading icon-Internal user clicks on upload files action  on reply modal then loading icon is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I close LWC modal window
    And I refresh the page
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Upload Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271551
  Scenario: Send Email Loading icon-Admin user clicks on upload files action on reply moda then loading icon is displayed
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I close LWC modal window
    And I refresh the page
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Upload Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271552
  Scenario: Send Email Loading icon-External user clicks on upload files action on reply modal then loading icon is displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Collab" sub tab
    And I click on top right button "Send Email LWC" in flex table with id "---program:-:communicationHistoryTableId---"
    When I fill the details in field To "automation.exe@yopmail.com" CC "automationadmin@yopmail.com" Subject "Subject" in send email LWC
    And I click on "Send" button in Email LWC Modal
    And I close LWC modal window
    And I refresh the page
    And I click on "Reply LWC" icon for "Subject" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I click on "Upload Files" button in Email LWC Modal
    Then I see loading icon at lwc modal

  @271984
  Scenario:Approval History Loading icon-Admin user clicks on Send back action then loading icon is displayed,
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I pause execution for "3" seconds
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "7" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I refresh the page
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Send back" in the approval decision
    Then I see loading icon at lwc modal

  @271989
  Scenario: Approval History Loading icon-Internal  user clicks on Approve action then loading icon is displayed
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I pause execution for "3" seconds
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "7" seconds
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I refresh the page
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I see Loading icon in Approval History