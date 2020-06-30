@DynamicForms-component @regression @dynamicForms
Feature: dynamic forms Component Scenarios
  Test all dynamic forms component based scenarios
  As a configuration manager i make different configurational changes in dynamic forms component and will validate them.

  @89693    @validateByEnteringValueInTextFieldAResponseIsGettingSavedAndDisplayedAtDynamicFormLayout
  Scenario: Entering value into text field and click on save , a value is getting saved into written field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I switch to tab number "1"
    When I enter value as "Test Automation" into "Written" field at dynamic forms layout
    When I click on "Save" in the page details
    Then I see for "Written" field value is "Test Automation" inside dynamic form

  @89696    @validateByEnteringValueInCurrencyFieldAResponseIsGettingSavedAndDisplayedAtDynamicFormLayout
  Scenario: Entering value into currency field and click on save , a value is getting saved into currency field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I switch to tab number "1"
    When I enter value as "12.00" into "Currency" field at dynamic forms layout
    When I click on "Save" in the page details
    Then I see for "Currency" field value is "$12.00" inside dynamic form

  @89697    @validateByEnteringValueInNumberFieldAResponseIsGettingSavedAndDisplayedAtDynamicFormLayout
  Scenario: Entering value into number field and click on save , a value is getting saved into number field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I switch to tab number "1"
    When I enter value as "12.00" into "Number" field at dynamic forms layout
    When I click on "Save" in the page details
    Then I see for "Number" field value is "12.00" inside dynamic form

  @89698    @validateByEnteringValueInPercentFieldAResponseIsGettingSavedAndDisplayedAtDynamicFormLayout
  Scenario: Entering value into percent field and click on save , a value is getting saved into percent field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I switch to tab number "1"
    When I enter value as "12.00" into "Percent" field at dynamic forms layout
    When I click on "Save" in the page details
    Then I see for "Percent" field value is "12.00%" inside dynamic form