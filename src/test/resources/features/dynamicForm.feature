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
    When I enter values into "Section 1" page block
      | Field   | Value           |
      | Written | Test Automation |
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
    When I enter values into "Section 1" page block
      | Field    | Value |
      | Currency | 12.00 |
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
    When I enter values into "Section 1" page block
      | Field  | Value |
      | Number | 12.00 |
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
    When I enter values into "Section 1" page block
      | Field   | Value |
      | Percent | 12.00 |
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
    When I enter values into "Section 1" page block
      | Field    | Value   |
      | Checkbox | checked |
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
    When I enter values into "Section 1" page block
      | Field | Value |
      | Radio | Yes   |
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
    When I enter values into "Section 1" page block
      | Field    | Value |
      | Picklist | YES   |
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
    When I enter values into "Section 1" page block
      | Field          | Value                     |
      | Rich Text Area | Test Automation Rich Text |
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

  @89922    @ValidatePageInstructionTextAtDynamicFormInViewMode
  Scenario: validate the page instructions text apears as configured in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Capture Form          | Form Instruction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Form Instruction | Demo Testing form Instruction | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see the instruction text is as follows :
  """
   {LongText:FormInstructionSmall-Text}
  """

  @89923    @ValidatePageInstructionTextAtDynamicFormInEditMode
  Scenario: validate the page instructions text apears as configured in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Capture Form          | Form Instruction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Form Instruction | Demo Testing form Instruction | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    Then I see the instruction text is as follows :
  """
   {LongText:FormInstructionSmall-Text}
  """

  @89932    @ValidateDisplayOfValidateButtonAtDynamicFormLayoutInViewMode
  Scenario: validate the display of validate button in view mode if Validation Button Visibility is set as shown from config at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                    | fieldOrignalValue | filterId         |
      | Capture Form          | Validation Button Visibility | Show              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Validation Button Visibility | Show          | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Validate" button is displayed

  @89934    @ValidateThatValidateButtonIsHiddenAtDynamicFormLayoutInViewMode
  Scenario: validate the validate button is hidden if Validation Button Visibility is set as Hide from config at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                    | fieldOrignalValue | filterId         |
      | Capture Form          | Validation Button Visibility | Show              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Validation Button Visibility | Hide          | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Validate" button is not displayed

  @89925    @ValidateByClickOnViewMoreOptionAllPageInstructionTextIsDisplayedAtDynamicFormInViewMode
  Scenario Outline: validate that by click on view more button at page instructions text , all text is getting displayed on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Capture Form          | Form Instruction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Form Instruction | <enterNewInstruction> | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    And I click on "view more" hyperlink in page instruction block
    Then I see the instruction text is as follows :
  """
   {LongText:FormInstruction-Text}
  """

    Examples:
      | enterNewInstruction                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
      | Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  |

  @90786    @ValidateThatValidateButtonIsNotDisplayedAtDynamicFormLayoutInEditMode
  Scenario: validate the validate button is not displayed in edit mode if Validation Button Visibility is set as Show from config at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                    | fieldOrignalValue | filterId         |
      | Capture Form          | Validation Button Visibility | Show              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Validation Button Visibility | Show          | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    Then I see "Validate" button is not displayed

  @90787    @ValidateThatValidateButtonIsNotDisplayedAtDynamicFormLayoutInEditMode
  Scenario: validate the validate button is not displayed in edit mode if Validation Button Visibility is set as Hide from config at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                    | fieldOrignalValue | filterId         |
      | Capture Form          | Validation Button Visibility | Show              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Validation Button Visibility | Hide          | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    Then I see "Validate" button is not displayed

  @89927    @ValidateByClickOnViewLessOptionPageInstructionTextShouldGetCollapsedAtDynamicFormInViewMode
  Scenario Outline: validate that by click on view less button at page instructions text, it should get collapsed on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Capture Form          | Form Instruction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Form Instruction | <enterNewInstruction> | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    And I click on "view more" hyperlink in page instruction block
    And I click on "view less" hyperlink in page instruction block
    Then I see the instruction text is as follows :
  """
   {LongText:FormInstructionCollapse-Text}
  """

    Examples:
      | enterNewInstruction                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
      | Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum |

  @90062    @ValidateSectionInstructionTextAtDynamicFormInViewMode
  Scenario: validate the section instructions text apears as configured in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue        | filterId         |
      | Capture Section       | Section Instruction | Demo Section instruction | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName           | fieldNewValue                       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Instruction | Demo Section instruction Automation | CS-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see the instruction text is as follows :
  """
   {LongText:SectionInstruction-Text}
  """

  @90978    @ValidateSectionInstructionTextAtDynamicFormInEditMode
  Scenario: validate the section instructions text apears as configured in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue        | filterId         |
      | Capture Section       | Section Instruction | Demo Section instruction | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName           | fieldNewValue                       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Instruction | Demo Section instruction Automation | CS-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    Then I see the instruction text is as follows :
  """
   {LongText:SectionInstruction-Text}
  """

  @90060    @ValidateSectionHelpTextFieldAtDynamicFormInViewMode
  Scenario: validate the section help text apears as configured in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Section       | Section Help Text | Demo Testing      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName         | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Help Text | Demo Section help text | CS-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon at "Section 1" inside dynamic form
    Then I see "Demo Section help text" shown as help text

  @90984    @ValidateSectionHelpTextFieldAtDynamicFormInEditMode
  Scenario: validate the section help text apears as configured in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Section       | Section Help Text | Demo Testing      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName         | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Help Text | Demo Section help text | CS-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon at "Section 1" inside dynamic form
    Then I see "Demo Section help text" shown as help text

  @89936   @ValidateValidationMessageAtDynamicFormInViewMode
  Scenario: validate that validation message should display by click on validate button on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                    | fieldOrignalValue | filterId         |
      | Capture Form          | Validation Button Visibility | Show              | ApiGeneratedId:0 |
      | Capture Item          | Question Applicable ?        |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Validation Button Visibility | Show          | CF-0000            |                           |                            |
      | Capture Item:General  | Question Applicable ?        |               | CI-0016            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I click on "Save" button in right header
    When I click on "Validate" button in right header
    Then I see the following message in the page details :
      | Radio New in Section Section 1 question not answered |

  @90063    @ValidateSectionNameAtDynamicFormInViewMode
  Scenario: validate the section name apears as configured in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Capture Section       | Section Name | Section 1         | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName    | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Name | Automation Title | CS-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see section as "Automation Title" inside dynamic form layout

  @90997    @ValidateByClickOnViewMoreOptionAllSectionInstructionTextIsDisplayedAtDynamicFormInViewMode
  Scenario Outline: validate that by click on view more button at section instructions text , all text is getting displayed on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue        | filterId         |
      | Capture Section       | Section Instruction | Demo Section instruction | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName           | fieldNewValue         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Instruction | <enterNewInstruction> | CS-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    And I click on "view more" hyperlink in page instruction block
    Then I see the instruction text is as follows :
  """
   {LongText:SectionInstructionLong-Text}
  """
    Examples:
      | enterNewInstruction                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
      | Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. |

  @89694    @validateByEnteringValueInDateFieldAResponseIsGettingSavedAndDisplayedAtDynamicFormLayout
  Scenario: Entering value into date field and click on save , a value is getting saved into date field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I switch to tab number "1"
    When I enter values into "Section 1" page block
      | Field | Value     |
      | Date  | 6/30/2020 |
    When I click on "Save" in the page details
    Then I see for "Date" field value is "6/30/2020" inside dynamic form

  @89823    @validateQuestionApplicableFieldAsRequiredForSaveAtTextFieldTypeAtDynamicFormLayout
  Scenario: changing value of question applicable as required for save and checking error message for written field at dynamic form
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Capture Item          | Question Applicable ? | Required to save  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Applicable ? | Required to save | CI-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field   | Value |
      | Written |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Written is Required to save under Section 1. |

  @89833    @validateQuestionApplicableFieldAsRequiredForSaveAtCurrencyFieldTypeAtDynamicFormLayout
  Scenario: changing value of question applicable as required for save and checking error message for currency field at dynamic form
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Capture Item          | Question Applicable ? | Required to save  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Applicable ? | Required to save | CI-0004            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field    | Value |
      | Currency |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Currency is Required to save under Section 1. |

  @89834    @validateQuestionApplicableFieldAsRequiredForSaveAtPercentFieldTypeAtDynamicFormLayout
  Scenario: changing value of question applicable as required for save and checking error message for percent field at dynamic form
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Capture Item          | Question Applicable ? | Required to save  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Applicable ? | Required to save | CI-0005            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field   | Value |
      | Percent |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Percent is Required to save under Section 1. |

  @89836    @validateQuestionApplicableFieldAsRequiredForSaveAtNumberFieldTypeAtDynamicFormLayout
  Scenario: changing value of question applicable as required for save and checking error message for number field at dynamic form
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Capture Item          | Question Applicable ? | Required to save  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Applicable ? | Required to save | CI-0006            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field  | Value |
      | Number |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Number is Required to save under Section 1. |

  @89843    @validateQuestionApplicableFieldAsRequiredForSaveAtCheckboxFieldTypeAtDynamicFormLayout
  Scenario: changing value of question applicable as required for save and checking error message for checkbox field at dynamic form
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Capture Item          | Question Applicable ? | Required to save  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Applicable ? | Required to save | CI-0008            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field    | Value |
      | Checkbox |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Checkbox is Required to save under Section 1. |

  @89859    @validateQuestionApplicableFieldAsRequiredForSaveAtRichTextAreaFieldTypeAtDynamicFormLayout
  Scenario: changing value of question applicable as required for save and checking error message for rich text area field at dynamic form
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Capture Item          | Question Applicable ? | Required to save  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Applicable ? | Required to save | CI-0010            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field          | Value |
      | Rich Text Area |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Rich Text Area is Required to save under Section 1. |

  @89855    @validateQuestionApplicableFieldAsRequiredForSaveAtRadioNewFieldTypeAtDynamicFormLayout
  Scenario: changing value of question applicable as required for save and checking error message for radio new field at dynamic form
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Capture Item          | Question Applicable ? | Required to save  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Applicable ? | Required to save | CI-0016            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field     | Value |
      | Radio New |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Radio New is Required to save under Section 1. |

  @90043   @ValidateAlignmentOfSectionColumnIfSetAsVeticallyAtDynamicFormLayout
  Scenario: validate alignment of section column if selected as vertically at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Capture Section       | Section Column | Vertical          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Column | Vertical    | CS-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see section column is "vertically" aligned

  @90042   @ValidateAlignmentOfSectionColumnIfSetAsHorizontallyAtDynamicFormLayout
  Scenario: validate alignment of section column if selected as horizontally at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Capture Section       | Section Column | Vertical          | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Column | Horizontal    | CS-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see section column is "horizontally" aligned

  @91526    @validateCancelButtonIsDisplayedAtTopRightCornerInEditModeAtDynamicForm
  Scenario: validate that cancel button is displayed at top right corner at dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Edit" button in right header
    Then I see "Cancel" button is displayed

  @91528    @validateSaveButtonIsDisplayedAtTopRightCornerInEditModeAtDynamicForm
  Scenario: validate that save button is displayed at top right corner at dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Edit" button in right header
    Then I see "Save" button is displayed