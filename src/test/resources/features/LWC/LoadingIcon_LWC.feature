@LWC_LoadingIcon-Component @regression-LWC @LoadingIconLWC
Business Need: Loading icon for all the operations Component Scenarios
  Test all Loading icon component based scenarios
  As a configuration manager i make different configurational changes in LoadingIcon component and will validate them.


  @257288 @sprint-19 @us-250617 @dilip
  Scenario: To verify whether loading icon displayed on contacts flex table when user clicks on page size to show 5 entries (Admin)
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I click on top right button "New" in tableName "Contacts@1234567890!@#$%^&*()"
    Then loading icon is display on the contacts flex table


  @256805 @256806 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on page layout in edit mode (PM)
    #Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    Then I click on "Save" in the page details
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
    Then loading icon is display on the contacts flex table
    And I close LWC modal by clicking the top right x button
    And I click on "Save" in the page details
    Then loading icon is display on the contacts flex table


  @256937 @256942 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on contacts flex table when user clicks on save button on new contacts modal window (Admin) and PM
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I navigate to "Overview" sub tab
    And I click on top right button "New" in tableName "Contacts@1234567890!@#$%^&*()"
    Then loading icon is display on the contacts flex table
    Then I fill the mandatory field randomly "FirstName2" and "LastName1" and "Emaila@gmail.com" address
    And I click on "Save" in the page details
    Then loading icon is display on the contacts flex table
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @257351 @257352 @257358 @257365 @257366 @257399 @257400 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on contacts flex table when click on 'New' button (PM)
   # Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I click on top right button "Associate" in tableName "Associate table"
    And I close LWC modal by clicking the top right x button
    And I refresh the page
    #257399 #257400
    Then loading icon is display on the contacts flex table
    #257351 #257352
    And I click on "Action" button and select "Edit" option
    Then loading icon is display on the contacts flex table
    And I close LWC modal by clicking the top right x button
    And I pause execution for "5" seconds
    #257358 #257365 #257366
    And I click on "Action" button and select "Remove" option
    And I click on "Yes" button on confirmation table
    Then loading icon is display on the contacts flex table
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
    Then loading icon is display on the contacts flex table
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I click on top right button "Associate" in tableName "Associate table"
    And I close LWC modal by clicking the top right x button
    And I refresh the page
    #257353
    And I click on "Action" button and select "Edit" option
    Then loading icon is display on the contacts flex table
    And I close LWC modal by clicking the top right x button
    #257367
    And I refresh the page
    And I click on "Action" button and select "Remove" option
    And I click on "Yes" button on confirmation table
    Then loading icon is display on the contacts flex table

  @257765 @257766 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on flex table when row grouping is applied and the page is refreshed in the edit page layout (Admin) and PM
       # Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I navigate to "Overview" sub tab
    And I click on top right button "New" in tableName "Contacts@1234567890!@#$%^&*()"
    Then loading icon is display on the contacts flex table
    Then I fill the mandatory field randomly "FirstN" and "LastName1" and "Emailp@gmail.com" address
    And I click on "Save" in the page details
    Then the position of loading icon is "center" on the LWC flex table
    Examples:
      | User |
      | PM   |
      | ADMIN |

  @257015 @257017 @256995 @256997 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on contacts flex table when user clicks  on 'Associate' button on associate contacts modal window (Admin) and PM
   # Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I navigate to "Overview" sub tab
    #256995 #256997
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    Then loading icon is display on the contacts flex table
    And I click on "checkbox" before the "Full Name" column
    And I click on top right button "Associate" in tableName "Associate table"
    #257017 #257015
    Then loading icon is display on the contacts flex table
    Examples:
      | User  |
      | PM    |
      | ADMIN |

  @257019 @256999 @sprint-19 @us-250617 @dilip
  Scenario: To verify whether loading icon displayed on contacts flex table when user clicks  on 'Associate' button on associate contacts modal window (SPI)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationInCreatedStateOnlyForSPI}" inside table
    When I navigate to "Overview" sub tab
    #256999
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    Then loading icon is display on the contacts flex table
    And I click on "checkbox" before the "Full Name" column
    And I click on top right button "Associate" in tableName "Associate table"
    Then loading icon is display on the contacts flex table

  @256660 @256798 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify whether loading icon displayed on page layout in edit mode (Admin) or PM
   # Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    Then I click on "Save" in the page details
    Then loading icon is display on the contacts flex table
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
    Then loading icon is display on the contacts flex table
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I click on top right button "Associate" in tableName "Associate table"
    And I close LWC modal by clicking the top right x button
    And I refresh the page
    #257367
    And I click on "Action" button and select "Remove" option
    And I click on "Yes" button on confirmation table
    Then loading icon is display on the contacts flex table

  @257769 @sprint-19 @us-250617 @dilip
  Scenario Outline: To verify while loading icon processing user should not be able to click anywhere on that table  (Admin) or PM
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "History" sub tab
    When I navigate to "Overview" sub tab
    And I click on top right button "New" in tableName "Contacts@1234567890!@#$%^&*()"
    Then loading icon is display on the contacts flex table
    Then I fill the mandatory field randomly "FirstName2" and "LastName1" and "Emaila@gmail.com" address
    And I click on "Save" in the page details
    Then I could not be able to click anywhere on that table
    Examples:
      | User  |
      | PM    |
      | ADMIN |