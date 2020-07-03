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
    When I enter value as "Test Automation" into field "Written" of type "Text" at dynamic forms layout
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
    When I enter value as "12.00" into field "Currency" of type "Integer" at dynamic forms layout
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
    When I enter value as "12.00" into field "Number" of type "Integer" at dynamic forms layout
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
    When I enter value as "12.00" into field "Percent" of type "Integer" at dynamic forms layout
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

  @88282    @validateNumberFieldIsDisplayedInsideFormAtAtDynamicFormLayout
  Scenario: validate that a number field is displayed inside dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Number" inside "Section 1" at dynamic form

  @88283    @validatePicklistFieldIsDisplayedInsideFormAtAtDynamicFormLayout
  Scenario: validate that a picklist field is displayed inside dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Picklist" inside "Section 1" at dynamic form

  @88284    @validateRadioFieldIsDisplayedInsideFormAtAtDynamicFormLayout
  Scenario: validate that a radio field is displayed inside dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Radio" inside "Section 1" at dynamic form

  @88285    @validateRadioFieldIsDisplayedInsideFormAtAtDynamicFormLayout
  Scenario: validate that a radio field is displayed inside dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Radio" inside "Section 1" at dynamic form

  @88286    @validateRichTextAreaFieldIsDisplayedInsideFormAtDynamicFormLayout
  Scenario: validate that a rich text area field is displayed inside dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Rich Text Area" inside "Section 1" at dynamic form

  @89702    @validateByEnteringValueInCheckboxFieldAResponseIsGettingSavedAndDisplayedAtDynamicFormLayout
  Scenario: Entering value into checkbox field and click on save , a value is getting saved into checkbox field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I switch to tab number "1"
    When I enter value as "checked" into field "Checkbox" of type "Checkbox" at dynamic forms layout
    When I click on "Save" in the page details
    Then I see for "Checkbox" field value is "Checked" inside dynamic form

  @89704    @validateByEnteringValueInRadioFieldAResponseIsGettingSavedAndDisplayedAtDynamicFormLayout
  Scenario: Entering value into radio field and click on save , a value is getting saved into radio field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter value as "Yes" into field "Radio" of type "Radio" at dynamic forms layout
    When I click on "Save" in the page details
    Then I see for "Radio" field value is "Yes" inside dynamic form

  @89700    @validateByEnteringValueInPicklistFieldAResponseIsGettingSavedAndDisplayedAtDynamicFormLayout
  Scenario: Entering value into picklist field and click on save , a value is getting saved into picklist field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter value as "YES" into field "Picklist" of type "Picklist" at dynamic forms layout
    When I click on "Save" in the page details
    Then I see for "Picklist" field value is "YES" inside dynamic form

  @89705    @validateByEnteringValueInRichTextAreaFieldAResponseIsGettingSavedAndDisplayedAtDynamicFormLayout
  Scenario: Entering value into rich text area field and click on save , a value is getting saved into rich text area field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter value as "Test Automation Rich Text" into field "Rich Text Area" of type "Rich Text Area" at dynamic forms layout
    When I click on "Save" in the page details
    Then I see for "Rich Text Area" field value is "Test Automation Rich Text" inside dynamic form

  @88147    @validateThatASingleSectionIsDisplayedAtDynamicFormLayout
  Scenario: validate that a single section is displayed inside dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see section as "Section 1" inside dynamic form layout

  @88104    @validateThatDynamicFormIsDisplayedInsideDynamicFormTableATAnnouncement
  Scenario: validate that a linked dynamic form is displayed inside dynamic form enhanced table at announcement detail
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    Then I see "Dynamic Form" value in flex table id "---program:-:flexGridDynamicFormTableId---"