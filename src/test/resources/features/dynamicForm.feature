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

  @88124    @validateTitleOfFormAtDynamicFormLayout
  Scenario: validate the title of form at dynamic form view page
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Dynamic Form" shown as over view header

  @88126    @validateAFormIsDisplayedInViewModeByClickOnViewActionAtDynamicForm
  Scenario: validate that a form is displayed in view mode and edit button is displayed by clicking on view action
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Edit" button is displayed

  @88130    @validateAFormIsDisplayedInEditModeByClickOnEditActionAtDynamicForm
  Scenario: validate that a form is displayed in edit mode and edit button is not displayed by clicking on edit action
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    Then I see "Edit" button is not displayed

  @88132    @validateAFormIsDisplayedInDownloadedPDF
  Scenario: validate that a form is displayed in downloaded PDF
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on parallel lines menu bar with data target value "#DynamicFormTableFlexToggle"
    And I select "Download as PDF" from parallel lines dropdown of "Dynamic form"
    And I download the file
    Then I see "Dynamic Form" on page "1" of "govgrants" pdf file

  @88276    @validateAWrittenFieldIsDisplayedInsideFormAtAtDynamicFormLayout
  Scenario: validate that a written field is displayed inside dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Written" inside "Section 1" at dynamic form

  @88277    @validateDateFieldIsDisplayedInsideFormAtAtDynamicFormLayout
  Scenario: validate that a date field is displayed inside dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Date" inside "Section 1" at dynamic form

  @88278    @validateCurrencyFieldIsDisplayedInsideFormAtAtDynamicFormLayout
  Scenario: validate that a currency field is displayed inside dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Currency" inside "Section 1" at dynamic form

  @88281    @validatePercentFieldIsDisplayedInsideFormAtAtDynamicFormLayout
  Scenario: validate that a percent field is displayed inside dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Percent" inside "Section 1" at dynamic form