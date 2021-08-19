@DynamicForms-component @regression-test8 @dynamicForms
Business Need: dynamic forms Component Scenarios
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
    And I pause execution for "3" seconds
    And I clear value from "Section 1" page block :
      | Field          |
      | Rich Text Area |
    When I enter values into "Section 1" page block
      | Field          | Value                     |
      | Written        | Test Automation           |
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
      | Capture Item          | Question Applicable ?        |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Validation Button Visibility | Show          | CF-0000            |                           |                            |
      | Capture Item:General  | Question Applicable ?        |               | CI-0040            |                           |                            |
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
      | Date Required in Section Section 1 question not answered |

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
      | Field    | Value     |
      | Checkbox | unchecked |
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
      | Rich Text Area | Test  |
    And I pause execution for "3" seconds
    And I clear value from "Section 1" page block :
      | Field          |
      | Rich Text Area |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Rich Text Area is Required to save under Section 1. |

  @89855    @validateQuestionApplicableFieldAsRequiredForSaveAtRadioNewFieldTypeAtDynamicFormLayout @wip @changeInRequirement @invalidScenario
  Scenario: changing value of question applicable as required for save and checking error message for radio new field at dynamic form
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Capture Item          | Question Applicable ? |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Applicable ? | Required to save | CI-0040            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
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
      | Capture Section:General | Section Column | Vertical      | CS-0000            |                           |                            |
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

  @91527    @validateCancelButtonIsDisplayedAtBottomRightCornerInEditModeAtDynamicForm
  Scenario: validate that cancel button is displayed at bottom right corner at dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Edit" button in right header
    Then I can see bottom button "Cancel" in page detail

  @91529    @validateSaveButtonIsDisplayedAtBottomRightCornerInEditModeAtDynamicForm
  Scenario: validate that save button is displayed at bottom right corner at dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Edit" button in right header
    Then I can see bottom button "Save" in page detail

  @91364    @validateValidateButtonIsDisplayedAtBottomRightCornerInEditModeAtDynamicForm
  Scenario: validate that validate button is displayed at bottom right corner at dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I can see bottom button "Validate" in page detail

  @91360    @validateEditButtonIsDisplayedAtBottomRightCornerInEditModeAtDynamicForm
  Scenario: validate that edit button is displayed at bottom right corner at dynamic form layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I can see bottom button "Edit" in page detail

  @91363    @validateMaxScoreFieldIsDisplayedInsideFormAtAtDynamicFormLayout
  Scenario: validate that a max score field is displayed inside dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Capture Item          | Max Score | 50.00             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Max Score | 50.00         | CI-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Score (Max Score : 50.00)" inside "Section 1" at dynamic form

  @91757   @ValidateSpecialCharactersAtSectionNameAtDynamicFormInViewMode
  Scenario: validate special characters are accepted at section name in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Capture Section       | Section Name | Section 1         | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName    | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Name | test~!@#$%^&*()_+{}][?/><. | CS-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see section as "test~!@#$%^&*()_+{}][?/><." inside dynamic form layout

  @91796    @validateFormNameFieldAcceptsSpecialCharactersAtDynamicFormLayout
  Scenario: validate the form name with special characters is displayed at dynamic form view page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Capture Form          | Form Name | Dynamic Form      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Form Name | test~!@#$%^&*()_+{}][?/><. | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "test~!@#$%^&*()_+{}][?/><." inside table
    Then I see "test~!@#$%^&*()_+{}][?/><." shown as over view header

  @91797    @validateIfDynamicFormNameIsChangedFromCaptureFormConfigThenItShouldDisplayedInsideDynamicFormTableATAnnouncement
  Scenario: validate if dynamic form name is changed from config then that name should displayed inside dynamic form enhanced table at announcement detail
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Capture Form          | Form Name | Dynamic Form      | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Form Name | Test Automation Form | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    Then I see "Test Automation Form" value in flex table id "---program:-:flexGridDynamicFormTableId---"

  @92154    @validateAlertMessageIfInvalidDataInsertedAtDynamicFormFields
  Scenario: validate alert message if invalid data inserted in any field at dynamic form
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
      | Currency | abc   |
    When I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Please correct below errors. |

  @91998    @validateAlertMessageAtCurrencyFieldTypeIfInvalidDataInsertedAtDynamicFormLayout
  Scenario: validate alert message if invalid data inserted in currency field at dynamic form
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
      | Currency | abc   |
    When I click on "Save" in the page details
    Then I see message "Please enter valid number" below "Currency" field in form detail

  @92004    @validateAlertMessageAtNumberFieldTypeIfInvalidDataInsertedAtDynamicFormLayout
  Scenario: validate alert message if invalid data inserted in number field at dynamic form
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
      | Number | abc   |
    When I click on "Save" in the page details
    Then I see message "Please enter valid number" below "Number" field in form detail

  @92003    @validateAlertMessageAtPercentFieldTypeIfInvalidDataInsertedAtDynamicFormLayout
  Scenario: validate alert message if invalid data inserted in percent field at dynamic form
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
      | Percent | abc   |
    When I click on "Save" in the page details
    Then I see message "Please enter valid number" below "Percent" field in form detail

  @92055    @validateAlertMessageAtScoreFieldTypeIfMoreThanMaxScoreIsInsertedAtDynamicFormLayout
  Scenario: validate alert message if more than max score is inserted in percent field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field                     | Value |
      | Score (Max Score : 50.00) | 60    |
    When I click on "Save" in the page details
    Then I see message "Score value should not be greater than max score" below "Score (Max Score : 50.00)" field in form detail

  @92006    @validateAlertMessageAtMaxScoreFieldTypeIfInvalidDataInsertedAtDynamicFormLayout
  Scenario: validate alert message if invalid data inserted in max score field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field                     | Value |
      | Score (Max Score : 50.00) | abc   |
    When I click on "Save" in the page details
    Then I see message "Please enter valid number" below "Score (Max Score : 50.00)" field in form detail

  @92158    @ValidateHelpTextAtWrittenFieldInsideDynamicFormInViewMode
  Scenario: validate the help text is displayed at written field as configured in Question Help Text field in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Written Help | CI-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Written"
    Then I see "Test Automation Written Help" shown as help text

  @92441    @validateAlertMessageAtTopOfFormIfMoreThanMaxScoreIsInsertedAtDynamicFormLayout
  Scenario: validate alert message if more than max score is inserted in percent field at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field                     | Value |
      | Score (Max Score : 50.00) | 60    |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Score value should not be greater than max score |

  @92165    @ValidateHelpTextAtDateFieldInsideDynamicFormInViewMode
  Scenario: validate the help text is displayed at date field as configured in Question Help Text field in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Date Help | CI-0001            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Date"
    Then I see "Test Automation Date Help" shown as help text

  @92166    @ValidateHelpTextAtCurrencyFieldInsideDynamicFormInViewMode
  Scenario: validate the help text is displayed at Currency field as configured in Question Help Text field in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Currency Help | CI-0004            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Currency"
    Then I see "Test Automation Currency Help" shown as help text

  @92167    @ValidateHelpTextAtNumberFieldInsideDynamicFormInViewMode
  Scenario: validate the help text is displayed at Number field as configured in Question Help Text field in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Number Help | CI-0006            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Number"
    Then I see "Test Automation Number Help" shown as help text

  @92168    @ValidateHelpTextAtPercentFieldInsideDynamicFormInViewMode
  Scenario: validate the help text is displayed at percent field as configured in Question Help Text field in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Percent Help | CI-0005            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Percent"
    Then I see "Test Automation Percent Help" shown as help text

  @92169    @ValidateHelpTextAtPicklistFieldInsideDynamicFormInViewMode
  Scenario: validate the help text is displayed at picklist field as configured in Question Help Text field in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Picklist Help | CI-0006            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Picklist"
    Then I see "Test Automation Picklist Help" shown as help text

  @92172    @ValidateHelpTextAtRichTextAreaFieldInsideDynamicFormInViewMode
  Scenario: validate the help text is displayed at Rich Text Area field as configured in Question Help Text field in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Rich Text Area Help | CI-0010            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Rich Text Area"
    Then I see "Test Automation Rich Text Area Help" shown as help text

  @92171    @ValidateHelpTextAtCheckboxFieldInsideDynamicFormInViewMode
  Scenario: validate the help text is displayed at Checkbox field as configured in Question Help Text field in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Checkbox Help | CI-0008            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Checkbox"
    Then I see "Test Automation Checkbox Help" shown as help text

  @92170    @ValidateHelpTextAtRadioFieldInsideDynamicFormInViewMode
  Scenario: validate the help text is displayed at radio field as configured in Question Help Text field in view mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Radio Help | CI-0008            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Radio"
    Then I see "Test Automation Radio Help" shown as help text

  @92628    @ValidateHelpTextAtPercentFieldInsideDynamicFormInEditMode
  Scenario: validate the help text is displayed at percent field as configured in Question Help Text field in Edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Percent Help | CI-0005            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Percent"
    Then I see "Test Automation Percent Help" shown as help text

  @92624    @ValidateHelpTextAtCurrencyFieldInsideDynamicFormInEditMode
  Scenario: validate the help text is displayed at Currency field as configured in Question Help Text field in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Currency Help | CI-0004            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Currency"
    Then I see "Test Automation Currency Help" shown as help text

  @92625    @ValidateHelpTextAtNumberFieldInsideDynamicFormInEditMode
  Scenario: validate the help text is displayed at Number field as configured in Question Help Text field in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Number Help | CI-0006            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Number"
    Then I see "Test Automation Number Help" shown as help text

  @92630    @ValidateHelpTextAtDateFieldInsideDynamicFormInEditMode
  Scenario: validate the help text is displayed at date field as configured in Question Help Text field in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Date Help | CI-0001            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Date"
    Then I see "Test Automation Date Help" shown as help text

  @92623    @ValidateHelpTextAtWrittenFieldInsideDynamicFormInEditMode
  Scenario: validate the help text is displayed at written field as configured in Question Help Text field in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Written Help | CI-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Written"
    Then I see "Test Automation Written Help" shown as help text

  @92641    @ValidateHelpTextAtCheckboxFieldInsideDynamicFormInEditMode
  Scenario: validate the help text is displayed at Checkbox field as configured in Question Help Text field in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Checkbox Help | CI-0008            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Checkbox"
    Then I see "Test Automation Checkbox Help" shown as help text

  @92640    @ValidateHelpTextAtRichTextAreaFieldInsideDynamicFormInEditMode
  Scenario: validate the help text is displayed at Rich Text Area field as configured in Question Help Text field in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Rich Text Area Help | CI-0010            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Rich Text Area"
    Then I see "Test Automation Rich Text Area Help" shown as help text

  @92639    @ValidateHelpTextAtRadioFieldInsideDynamicFormInEditMode
  Scenario: validate the help text is displayed at radio field as configured in Question Help Text field in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Radio Help | CI-0009            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Radio"
    Then I see "Test Automation Radio Help" shown as help text

  @92637    @ValidateHelpTextAtPicklistFieldInsideDynamicFormInEditMode
  Scenario: validate the help text is displayed at picklist field as configured in Question Help Text field in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Capture Item          | Question Help Text |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Help Text | Test Automation Picklist Help | CI-0006            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I hovering mouse on help text icon inside page block detail "Picklist"
    Then I see "Test Automation Picklist Help" shown as help text

  @93717   @validateCommentApplicableForLongTextAreaValueAtWrittenFieldInsideDynamicFormInEditMode
  Scenario: validate Comment Applicable? field for long text area in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Capture Item          | Comment Applicable? |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Comment Applicable? | Long TextArea Applicable | CI-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    Then I see comment box displayed as "Long Text Area"

  @93716   @validateCommentApplicableForRichTextAreaValueAtWrittenFieldInsideDynamicFormInEditMode
  Scenario: validate Comment Applicable? field for rich text area in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Capture Item          | Comment Applicable? |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Comment Applicable? | Rich TextArea Applicable | CI-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    Then I see comment box displayed as "Rich Text Area"

  @93718   @validateCommentApplicableForNotApplicableValueAtWrittenFieldInsideDynamicFormInEditMode
  Scenario: validate Comment Applicable? field for not applicable value in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Capture Item          | Comment Applicable? |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Comment Applicable? | Not Applicable | CI-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    Then I softly do not see comment box displayed as "Rich Text Area"
    Then I softly do not see comment box displayed as "Long Text Area"

  @93711   @validateCommentApplicableForNoneValueAtWrittenFieldInsideDynamicFormInEditMode
  Scenario: validate Comment Applicable? field for none value in edit mode on dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Capture Item          | Comment Applicable? |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Comment Applicable? |               | CI-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    Then I softly do not see comment box displayed as "Rich Text Area"
    Then I softly do not see comment box displayed as "Long Text Area"

  @93781    @ValidateThatValidateButtonIsNotDisplayedAtDynamicFormLayoutInEditModeOnMultipleSectionsForm
  Scenario: validate the validate button is not displayed in edit mode if Validation Button Visibility is set as Show from config at dynamic form with multiple sections
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                    | fieldOrignalValue | filterId         |
      | Capture Form          | Validation Button Visibility | Show              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Validation Button Visibility | Show          | CF-0006            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Validate" button is not displayed

  @88160    @validateThatAllPresentSectionsAreDisplayedAtDynamicFormLayoutInViewMode
  Scenario: validate that a single section is displayed inside dynamic form layout in view mode
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly see section as "Section 1" inside dynamic form layout
    Then I softly see section as "Section 2" inside dynamic form layout
    Then I softly see section as "Section 3" inside dynamic form layout
    Then I softly see section as "Section 4" inside dynamic form layout

  @93861    @validateThatAllPresentSectionsAreDisplayedAtDynamicFormLayoutInEditMode
  Scenario: validate that a single section is displayed inside dynamic form layout in edit mode
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see section as "Section 1" inside dynamic form layout
    Then I softly see section as "Section 2" inside dynamic form layout
    Then I softly see section as "Section 3" inside dynamic form layout
    Then I softly see section as "Section 4" inside dynamic form layout

  @94006   @validateDependentQuestionJsonFieldByHidingCurrencyFieldOnTheBasisOfWrittenFieldInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding currency field on the basisi of written field in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MnyL                                     | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCurrencyUsingWrittenFieldValue | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                     | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I do not see "Currency" inside "Section 1" at dynamic form

  @94007   @validateDependentQuestionJsonFieldByHidingCurrencyFieldOnTheBasisOfWrittenFieldInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding currency field on the basisi of written field in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MnyL                                     | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCurrencyUsingWrittenFieldValue | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                     | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Currency" field inside "Section 1" is hidden

  @94014   @validateDependentQuestionJsonFieldByDisablingCurrencyFieldOnTheBasisOfWrittenFieldInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by disabling currency field on the basis of written field in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MnyL                                         | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisabledCurrencyUsingWrittenFieldValue | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                         | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Currency" inside "Section 1" at dynamic form

  @94015   @validateDependentQuestionJsonFieldByDisablingCurrencyFieldOnTheBasisOfWrittenFieldInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling currency field on the basis of written field in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MnyL                                         | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisabledCurrencyUsingWrittenFieldValue | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                         | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Currency" field inside "Section 1" is disabled

  @94037   @validateDependentQuestionJsonFieldByUsingShowRequiredForCurrencyFieldOnTheBasisOfWrittenFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by providing show required in JSON to make currency field required to save on the basis of written field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MnyL                                             | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowRequiredCurrencyUsingWrittenFieldValue | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                             | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 1" page block
      | Field    | Value |
      | Currency |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Currency is Required to save under Section 1. |

  @94055   @validateDependentQuestionJsonFieldAndProvidingUniqueFieldNameInQuestionIdentifierFieldInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding currency field on the basis of written field value and providing unique field name in Question Identifier in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                   | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCurrencyUsingWrittenFieldValueByProvidingNameOfField | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                                           | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Currency" field inside "Section 1" is hidden

  @94038   @validateDependentQuestionJsonFieldAndProvidingUniqueFieldNameInQuestionIdentifierFieldInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding currency field on the basis of written field value and providing unique field name in Question Identifier in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MnyL                                                           | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCurrencyUsingWrittenFieldValueByProvidingNameOfField | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                                           | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I do not see "Currency" inside "Section 1" at dynamic form

  @94066   @validateDependentQuestionJsonFieldAndProvidingUniqueFieldNameInQuestionIdentifierFieldByDisablingFieldInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling currency field on the basis of written field value and providing unique field name in Question Identifier in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                      | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyUsingWrittenFieldValueByProvidingNameOfField | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                                              | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Currency" field inside "Section 1" is disabled

  @93779   @validateSectionsAreExpandedByDefaultAtDynamicFormLayoutInEditMode
  Scenario: validate sections are expanded by default inside dynamic form in edit mode
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly do not see "Section: Section 1" block is collapsed
    Then I softly do not see "Section: Section 4" block is collapsed

  @93780   @validateSectionsAreExpandedByDefaultAtDynamicFormLayoutInViewMode
  Scenario: validate sections are expanded by default inside dynamic form in view mode
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly do not see "Section: Section 1" block is collapsed
    Then I softly do not see "Section: Section 4" block is collapsed

  @94223   @validateDependentQuestionJsonFieldAndProvidingUniqueFieldNameInQuestionIdentifierFieldByDisablingFieldInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by disabling currency field on the basis of written field value and providing unique field name in Question Identifier in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                      | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyUsingWrittenFieldValueByProvidingNameOfField | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                                              | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Currency" inside "Section 1" at dynamic form

  @94224   @validateQuestionIdentifierFieldForShowRequiredJSONInsideDynamicFormInEditMode
  Scenario: validate Question Identifier field for show required in JSON in dynamic form edit layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                           | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowRequiredCurrencyUsingWrittenFieldValueByProvidingNameOfField | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                                                   | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 1" page block
      | Field    | Value |
      | Currency |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Currency is Required to save under Section 1. |

  @94226   @validateDependentQuestionJsonFieldByHidingAndDisablingNumberAndCurrencyFieldOnTheBasisOfWrittenFieldInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding currency and number field using written field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                  | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableNumberAndHideCurrencyFieldUsingWrittenFieldValue | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                                          | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MnzO                                                          | CI-0023            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Currency" field inside "Section 1" is hidden
    Then I softly see "Number" field inside "Section 1" is disabled

  @94233    @validateDependentQuestionJsonFieldByHidingAndDisablingNumberAndCurrencyFieldOnTheBasisOfWrittenFieldInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding currency and number field using written field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                  | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableNumberAndHideCurrencyFieldUsingWrittenFieldValue | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                                          | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MnzO                                                          | CI-0023            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly do not see "Currency" inside "Section 1" at dynamic form
    Then I softly see "Number" inside "Section 1" at dynamic form

  @94253   @validateDependentQuestionJsonFieldByShowRequiredCurrencyAndDisablingNumberFieldOnTheBasisOfWrittenFieldInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by show required currency and disabling number field using written field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                             | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableAndHideMultipleFieldsUsingWrittenFieldValue | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000Mnyf                                                     | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MnzO                                                     | CI-0023            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" field inside "Section 1" is disabled
    When I enter values into "Section 1" page block
      | Field    | Value |
      | Currency |       |
    When I click on "Save" in the page details
    Then I softly see the following message in the page details :
      | Currency is Required to save under Section 1. |

  @94416   @validateDependentQuestionJsonFieldByHidingWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding written field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                   | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideWrittenUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                  | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Written" field inside "Section 1" is hidden

  @94417   @validateDependentQuestionJsonFieldByHidingWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding written field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                   | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideWrittenUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                  | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I do not see "Written" inside "Section 1" at dynamic form

  @94227   @validateDependentQuestionJsonFieldByDisablingWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling written field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                       | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisabledWrittenUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                      | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Written" field inside "Section 1" is disabled

  @94228   @validateDependentQuestionJsonFieldByDisablingWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by disabling written field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                       | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisabledWrittenUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                      | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Written" inside "Section 1" at dynamic form

  @94431   @validateDependentQuestionJsonFieldByMakingWrittenFieldAsRequiredUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by making written field as required on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                           | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowRequiredWrittenUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                          | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 1" page block
      | Field   | Value |
      | Written |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Written is Required to save under Section 1. |

  @94451   @validateDependentQuestionJsonFieldByHidingWrittenFieldUsingNumberFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding written field on the basis of number field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                 | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideWrittenUsingNumberFieldValueByProvidingNameOfField | CI-0023            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                                  | CI-0023            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Written" field inside "Section 1" is hidden

  @94455   @validateDependentQuestionJsonFieldByHidingWrittenFieldUsingNumberFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding written field on the basis of number field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                 | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideWrittenUsingNumberFieldValueByProvidingNameOfField | CI-0023            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                                  | CI-0023            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I do not see "Written" inside "Section 1" at dynamic form

  @94456   @validateDependentQuestionJsonFieldByDisableWrittenFieldUsingNumberFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling written field on the basis of number field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                    | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableWrittenUsingNumberFieldValueByProvidingNameOfField | CI-0023            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                                     | CI-0023            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Written" field inside "Section 1" is disabled

  @94457   @validateDependentQuestionJsonFieldByHidingWrittenFieldUsingNumberFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding written field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                    | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableWrittenUsingNumberFieldValueByProvidingNameOfField | CI-0023            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                                     | CI-0023            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Written" inside "Section 1" at dynamic form

  @94458   @validateDependentQuestionJsonFieldByMakingWrittenFieldAsRequiredUsingNumberFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by making written field as required on the basis of number field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                         | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowRequiredWrittenUsingNumberFieldValueByProvidingNameOfField | CI-0023            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                                          | CI-0023            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 1" page block
      | Field   | Value |
      | Written |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Written is Required to save under Section 1. |

  @94537   @validateDependentQuestionJsonFieldByHidingCurrencyFieldUsingPercentFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding currency field on the basis of percent field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                  | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCurrencyUsingPercentFieldValueByProvidingNameOfField | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                   | CI-0024            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Currency" field inside "Section 1" is hidden

  @94538   @validateDependentQuestionJsonFieldByHidingCurrencyFieldUsingPercentFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding currency field on the basis of percent field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                  | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCurrencyUsingPercentFieldValueByProvidingNameOfField | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                   | CI-0024            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I do not see "Currency" inside "Section 1" at dynamic form

  @94548   @validateDependentQuestionJsonFieldByDisablingCurrencyFieldUsingPercentFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by Disabling currency field on the basis of percent field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                     | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyUsingPercentFieldValueByProvidingNameOfField | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                      | CI-0024            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Currency" field inside "Section 1" is disabled

  @94550   @validateDependentQuestionJsonFieldByDisablingCurrencyFieldUsingPercentFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by Disabling currency field on the basis of percent field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                     | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyUsingPercentFieldValueByProvidingNameOfField | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                      | CI-0024            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Currency" inside "Section 1" at dynamic form

  @91190    @validateQuestionApplicableFieldAsRequiredForSaveAtPicklistFieldTypeAtDynamicFormLayout @wip @changeInRequirement @invalidScenario
  Scenario: changing value of question applicable as required for save and checking error message for picklist field at dynamic form
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Capture Item          | Question Applicable ? |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Applicable ? | Required to save | CI-0034            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I click on "Save" in the page details
    Then I see the following message in the page details contains:
      | Picklist(Required Field) is Required to save under Section 1. |

  @94563   @validateDependentQuestionJsonFieldByDisablingCurrencyFieldUsingRichTextAreaFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by Disabling currency field on the basis of richTextArea field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                          | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyUsingRichTextAreaFieldValueByProvidingNameOfField | CI-0026            |                           |                            |
      | Capture Item:General  | Question Identifier     | Rich Text area                                                                    | CI-0026            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Currency" field inside "Section 1" is disabled

  @94564   @validateDependentQuestionJsonFieldByDisablingCurrencyFieldUsingRichTextAreaFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by Disabling currency field on the basis of richTextArea field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                          | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyUsingRichTextAreaFieldValueByProvidingNameOfField | CI-0026            |                           |                            |
      | Capture Item:General  | Question Identifier     | Rich Text area                                                                    | CI-0026            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Currency" inside "Section 1" at dynamic form

  @94561   @validateDependentQuestionJsonFieldByHidingCurrencyFieldUsingRichTextAreaFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by Disabling currency field on the basis of richTextArea field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                       | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCurrencyUsingRichTextAreaFieldValueByProvidingNameOfField | CI-0026            |                           |                            |
      | Capture Item:General  | Question Identifier     | Rich Text area                                                                 | CI-0026            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I do not see "Currency" inside "Section 1" at dynamic form

  @94559   @validateDependentQuestionJsonFieldByHidingCurrencyFieldUsingRichTextAreaFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by Disabling currency field on the basis of richTextArea field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                       | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCurrencyUsingRichTextAreaFieldValueByProvidingNameOfField | CI-0026            |                           |                            |
      | Capture Item:General  | Question Identifier     | Rich Text area                                                                 | CI-0026            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Currency" field inside "Section 1" is hidden

  @94551   @validateDependentQuestionJsonFieldByMakingCurrencyFieldAsRequiredUsingPercentFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by making currency field as required on the basis of percent field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                          | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowRequiredCurrencyUsingPercentFieldValueByProvidingNameOfField | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                           | CI-0024            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 1" page block
      | Field    | Value |
      | Currency |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Currency is Required to save under Section 1. |

  @94567   @validateDependentQuestionJsonFieldByMakingCurrencyFieldAsRequiredUsingRichTextAreaFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by making currency field as required on the basis of rich text area field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                               | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowRequiredCurrencyUsingRichTextAreaFieldValueByProvidingNameOfField | CI-0026            |                           |                            |
      | Capture Item:General  | Question Identifier     | Rich Text area                                                                         | CI-0026            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 1" page block
      | Field    | Value |
      | Currency |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Currency is Required to save under Section 1. |

  @94686   @validateDependentQuestionJsonFieldByHidingPicklistFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding picklist field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Picklist                                                                   | CI-0027            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HidePicklistUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                   | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Picklist" field inside "Section 1" is hidden

  @94687   @validateDependentQuestionJsonFieldByHidingPercentFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding picklist field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Picklist                                                                   | CI-0027            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HidePicklistUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                   | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I do not see "Picklist" inside "Section 1" at dynamic form

  @94692   @validateDependentQuestionJsonFieldByDisablingPicklistFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling picklist field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Picklist                                                                      | CI-0027            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisablePicklistUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                      | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Picklist" field inside "Section 1" is disabled

  @94695   @validateDependentQuestionJsonFieldByHidingPercentFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding picklist field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Picklist                                                                   | CI-0027            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HidePicklistUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                   | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I do not see "Picklist" inside "Section 1" at dynamic form

  @94697   @validateDependentQuestionJsonFieldByMakingPicklistFieldAsRequiredUsingCurrencyFieldValueInsideDynamicFormInEditMode @wip @changeInRequirement @invalidScenario
  Scenario: validate Dependent Question Json Field by making picklist field as required on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Picklist(Required Field)                                                           | CI-0034            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowRequiredPicklistUsingCurrencyFieldValueByProvidingNameOfField | CI-0004            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                           | CI-0004            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Picklist(Required Field) is Required to save under Section 1. |

  @94961   @validateDependentQuestionJsonFieldByHidingRadioFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding radio field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Radio                                                                   | CI-0025            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideRadioUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Radio" field inside "Section 1" is hidden

  @94962   @validateDependentQuestionJsonFieldByHidingRadioFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding radio field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Radio                                                                   | CI-0025            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideRadioUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I do not see "Radio" inside "Section 1" at dynamic form

  @95133   @validateDependentQuestionJsonFieldByHidingCheckboxFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding checkbox field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Checkbox                                                                   | CI-0028            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCheckboxUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                   | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Checkbox" field inside "Section 1" is hidden

  @95134   @validateDependentQuestionJsonFieldByHidingCheckboxFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding checkbox field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Checkbox                                                                   | CI-0028            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideCheckboxUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                   | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I do not see "Checkbox" inside "Section 1" at dynamic form

  @95137   @validateDependentQuestionJsonFieldByDisablingCheckboxFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling checkbox field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Checkbox                                                                      | CI-0028            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCheckboxUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                      | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Checkbox" field inside "Section 1" is disabled

  @95142   @validateDependentQuestionJsonFieldByDisablingCheckboxFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by disabling checkbox field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Checkbox                                                                      | CI-0028            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCheckboxUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                      | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Checkbox" inside "Section 1" at dynamic form

  @95143   @validateDependentQuestionJsonFieldByMakingCheckboxFieldAsRequiredUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by making checkbox field as required on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Checkbox                                                                           | CI-0028            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowRequiredCheckboxUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                           | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field    | Value     |
      | Checkbox | unchecked |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Checkbox is Required to save under Section 1. |

  @93778   @ValidateValidationMessageAtDynamicFormHavingMultipleSectionsInOneForm
  Scenario: validate that validation message should display by click on validate button on dynamic form layout having multiple sections
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                    | fieldOrignalValue | filterId         |
      | Capture Form          | Validation Button Visibility | Show              | ApiGeneratedId:0 |
      | Capture Item          | Question Applicable ?        |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Validation Button Visibility | Show          | CF-0000            |                           |                            |
      | Capture Item:General  | Question Applicable ?        |               | CI-0020            |                           |                            |
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
      | Date Required in Section Section 1 question not answered |

  @94966   @validateDependentQuestionJsonFieldByDisablingRadioFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling radio field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Radio                                                                      | CI-0025            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableRadioUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                   | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Radio" field inside "Section 1" is disabled

  @94967   @validateDependentQuestionJsonFieldByDisablingRadioFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by disabling radio field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Radio                                                                      | CI-0025            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableRadioUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                   | CI-0022            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Radio" inside "Section 1" at dynamic form

  @94968   @validateDependentQuestionJsonFieldByMakingRadioFieldAsRequiredUsingCurrencyFieldValueInsideDynamicFormInEditMode @wip @changeInRequirement @invalidScenario
  Scenario: validate Dependent Question Json Field by making radio field as required on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Radio                                                                           | CI-0040            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowRequiredRadioUsingCurrencyFieldValueByProvidingNameOfField | CI-0004            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                        | CI-0004            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Radio New is Required to save under Section 1. |

  @95444   @validateDependentQuestionJsonFieldByHidingNumberAndDisablingPercentFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding number and disabling percent field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                    | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideNumberAndDisablePercentUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                  | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                   | CI-0024            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" field inside "Section 1" is hidden
    Then I softly see "Percent" field inside "Section 1" is disabled

  @95447   @validateDependentQuestionJsonFieldByDisablingNumberAndHidingPercentFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling number and hiding percent field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                    | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableNumberAndHidePercentUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                  | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                   | CI-0024            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" field inside "Section 1" is disabled
    Then I softly see "Percent" field inside "Section 1" is hidden

  @95448   @validateDependentQuestionJsonFieldByHidingNumberDisablingPercentAndWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding number and disabling percent and written field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                                   | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideNumberAndDisablePercentAndWrittenFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                 | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                  | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                                  | CI-0018            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" field inside "Section 1" is hidden
    Then I softly see "Percent" field inside "Section 1" is disabled
    Then I softly see "Written" field inside "Section 1" is disabled

  @95449   @validateDependentQuestionJsonFieldByDisablingNumberPercentAndWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling number, percent and written field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                            | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableNumberPercentAndWrittenFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                          | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                           | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                           | CI-0018            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" field inside "Section 1" is disabled
    Then I softly see "Percent" field inside "Section 1" is disabled
    Then I softly see "Written" field inside "Section 1" is disabled

  @95493   @validateDependentQuestionJsonFieldByHidingNumberPercentAndWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding number, percent and written field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                         | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideNumberPercentAndWrittenFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                       | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                        | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                        | CI-0018            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" field inside "Section 1" is hidden
    Then I softly see "Percent" field inside "Section 1" is hidden
    Then I softly see "Written" field inside "Section 1" is hidden

  @95494   @validateDependentQuestionJsonFieldByHidingNumberPercentAndWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding number, percent and written field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                         | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideNumberPercentAndWrittenFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                       | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                        | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                        | CI-0018            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly do not see "Number" inside "Section 1" at dynamic form
    Then I softly do not see "Percent" inside "Section 1" at dynamic form
    Then I softly do not see "Written" inside "Section 1" at dynamic form

  @95498   @validateDependentQuestionJsonFieldByHidingNumberPercentAndWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding number, percent and written field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                                 | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowRequiredNumberPercentAndWrittenFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                               | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                                | CI-0018            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 1" page block
      | Field   | Value |
      | Number  |       |
      | Percent |       |
      | Written |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Number is Required to save under Section 1.  |
      | Percent is Required to save under Section 1. |
      | Written is Required to save under Section 1. |

  @95499   @validateDependentQuestionJsonFieldByHidingNumberPercentAndWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by hiding number, percent and written field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                            | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableNumberPercentAndWrittenFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                          | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                           | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                           | CI-0018            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" inside "Section 1" at dynamic form
    Then I softly see "Percent" inside "Section 1" at dynamic form
    Then I softly see "Written" inside "Section 1" at dynamic form

  @95144  @validateIfResponseIsClearOutThenWrittenFieldShouldDisplayEmptyInsideDynamicFormInViewLayout
  Scenario: validate if response is removed from written field then a field with blank value is displayed in form view layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 2" page block
      | Field             | Value        |
      | Written Section 2 | Demo Testing |
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    When I enter values into "Section 2" page block
      | Field             | Value |
      | Written Section 2 |       |
    When I click on "Save" in the page details
    Then I see "Written Section 2" field displayed with blank value at dynamic form

  @95145   @validateIfResponseIsClearOutThenWrittenFieldShouldDisplayEmptyInsideDynamicFormInEditLayout
  Scenario: validate if response is removed from written field then a field with blank value is displayed in form edit layout
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 2" page block
      | Field             | Value        |
      | Written Section 2 | Demo Testing |
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    When I enter values into "Section 2" page block
      | Field             | Value |
      | Written Section 2 |       |
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I see "Written Section 2" field displayed with blank value at dynamic form

  @95521   @validateDependentQuestionJsonFieldByDisablingNumberPercentAndWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling number, percent and written field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                                | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableNumberPercentDateAndWrittenFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                              | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                               | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                               | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Date                                                                                                  | CI-0019            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" field inside "Section 1" is disabled
    Then I softly see "Percent" field inside "Section 1" is disabled
    Then I softly see "Written" field inside "Section 1" is disabled
    Then I softly see "Date" field inside "Section 1" is disabled

  @93705    @validateSortOrderFieldAtDynamicFormLayoutInViewMode
  Scenario: validate that
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Written" field is shown at position "0" in "Section 1"

  @93707    @validateSortOrderFieldAtDynamicFormLayoutInEditMode
  Scenario: validate sort order field at capture items in dynamic form layout in edit mode
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Written" field is shown at position "0" in "Section 1"

  @9552   @validateDependentQuestionJsonFieldByDisablingNumberPercentAndWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by disabling number, percent and written field on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                         | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                                | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableNumberPercentDateAndWrittenFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                              | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                               | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                               | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Date                                                                                                  | CI-0019            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" inside "Section 1" at dynamic form
    Then I softly see "Percent" inside "Section 1" at dynamic form
    Then I softly see "Written" inside "Section 1" at dynamic form
    Then I softly see "Date" inside "Section 1" at dynamic form

  @96395   @validateDependentQuestionJsonFieldByShowRequiredNumberPercentFieldAndDisablingWrittenFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by making required number, percent field and disabling written field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                                       | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShwRequiredNumberPercentAndDisableWrittenFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                     | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                      | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                                      | CI-0018            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Written" field inside "Section 1" is disabled
    When I enter values into "Section 1" page block
      | Field   | Value |
      | Number  |       |
      | Percent |       |
    When I click on "Save" in the page details
    Then I softly see the following message in the page details :
      | Number is Required to save under Section 1.  |
      | Percent is Required to save under Section 1. |

  @96396   @validateDependentQuestionJsonFieldByShowRequiredNumberPercentFieldAndDisablingWrittenPicklistRadioFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by making required number, percent field and disabling written, radio, picklist field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                                                    | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShwRequiredNumberPercentAndDisableWrittenPicklistRadioFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                                  | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                                   | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                                                   | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Picklist                                                                                                                  | CI-0027            |                           |                            |
      | Capture Item:General  | Question Identifier     | Radio                                                                                                                     | CI-0025            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Written" field inside "Section 1" is disabled
    Then I softly see "Picklist" field inside "Section 1" is disabled
    Then I softly see "Radio" field inside "Section 1" is disabled
    When I enter values into "Section 1" page block
      | Field   | Value |
      | Number  |       |
      | Percent |       |
    When I click on "Save" in the page details
    Then I softly see the following message in the page details :
      | Number is Required to save under Section 1.  |
      | Percent is Required to save under Section 1. |

  @96397   @validateDependentQuestionJsonFieldByDisablingNumberPercentWrittenPicklistRadioFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by making number, percent, written, radio, picklist field disabled on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                                       | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisabledNumberPercentWrittenPicklistRadioFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                     | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                      | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                                      | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Picklist                                                                                                     | CI-0027            |                           |                            |
      | Capture Item:General  | Question Identifier     | Radio                                                                                                        | CI-0025            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" field inside "Section 1" is disabled
    Then I softly see "Percent" field inside "Section 1" is disabled
    Then I softly see "Written" field inside "Section 1" is disabled
    Then I softly see "Picklist" field inside "Section 1" is disabled
    Then I softly see "Radio" field inside "Section 1" is disabled

  @96398   @validateDependentQuestionJsonFieldByHidingNumberPercentWrittenPicklistRadioFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by making number, percent, written, radio, picklist field hide on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                                   | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideNumberPercentWrittenPicklistRadioFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                 | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                  | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                                  | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Picklist                                                                                                 | CI-0027            |                           |                            |
      | Capture Item:General  | Question Identifier     | Radio                                                                                                    | CI-0025            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" field inside "Section 1" is hidden
    Then I softly see "Percent" field inside "Section 1" is hidden
    Then I softly see "Written" field inside "Section 1" is hidden
    Then I softly see "Picklist" field inside "Section 1" is hidden
    Then I softly see "Radio" field inside "Section 1" is hidden

  @96399   @validateDependentQuestionJsonFieldByHidingNumberPercentWrittenPicklistRadioFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by making number, percent, written, radio, picklist field hide on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                                   | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideNumberPercentWrittenPicklistRadioFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                 | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                  | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                                  | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Picklist                                                                                                 | CI-0027            |                           |                            |
      | Capture Item:General  | Question Identifier     | Radio                                                                                                    | CI-0025            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly do not see "Number" inside "Section 1" at dynamic form
    Then I softly do not see "Percent" inside "Section 1" at dynamic form
    Then I softly do not see "Written" inside "Section 1" at dynamic form
    Then I softly do not see "Picklist" inside "Section 1" at dynamic form
    Then I softly do not see "Radio" inside "Section 1" at dynamic form

  @96510   @validateDependentQuestionJsonFieldByShowRequiredNumberPercentWrittenPicklistRadioFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by making required number, percent, written, radio, picklist field on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                                          | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShwRequiredNumberPercentWrittenPicklistRadioFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                        | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                         | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                                         | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Radio Required Field                                                                                            | CI-0031            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 1" page block
      | Field   | Value |
      | Number  |       |
      | Percent |       |
      | Written |       |
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Number is Required to save under Section 1.  |
      | Percent is Required to save under Section 1. |
      | Written is Required to save under Section 1. |

  @96512   @validateDependentQuestionJsonFieldByHidingNumberPercentWrittenPicklistRadioAndDisablingCheckboxFieldUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by making number, percent, written, radio, picklist field hide and checkbox field as disabled on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:0 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideNumberPercentWrittenPicklistRadioAndDisableCheckboxFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                                                                                     | CI-0023            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                                   | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                                    | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                                                    | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Picklist                                                                                                                   | CI-0027            |                           |                            |
      | Capture Item:General  | Question Identifier     | Radio                                                                                                                      | CI-0025            |                           |                            |
      | Capture Item:General  | Question Identifier     | Checkbox                                                                                                                   | CI-0028            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Number" field inside "Section 1" is hidden
    Then I softly see "Percent" field inside "Section 1" is hidden
    Then I softly see "Written" field inside "Section 1" is hidden
    Then I softly see "Picklist" field inside "Section 1" is hidden
    Then I softly see "Radio" field inside "Section 1" is hidden
    Then I softly see "Checkbox" field inside "Section 1" is disabled

  @96518   @validateDependentQuestionJsonFieldByHidingNumberPercentWrittenPicklistRadioAndDisablingCheckboxFieldUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by making number, percent, written, radio, picklist field hide and checkbox field as disabled on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Number                                                                                                                     | CI-0023            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideNumberPercentWrittenPicklistRadioAndDisableCheckboxFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                                   | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                                    | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                                                    | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Picklist                                                                                                                   | CI-0027            |                           |                            |
      | Capture Item:General  | Question Identifier     | Radio                                                                                                                      | CI-0025            |                           |                            |
      | Capture Item:General  | Question Identifier     | Checkbox                                                                                                                   | CI-0028            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly do not see "Number" inside "Section 1" at dynamic form
    Then I softly do not see "Percent" inside "Section 1" at dynamic form
    Then I softly do not see "Written" inside "Section 1" at dynamic form
    Then I softly do not see "Picklist" inside "Section 1" at dynamic form
    Then I softly do not see "Radio" inside "Section 1" at dynamic form
    Then I softly see "Checkbox" inside "Section 1" at dynamic form

  @91319   @ValidateByClickOnViewLessOptionSectionInstructionTextGetsCollapsedAndDisplayedAtDynamicFormInViewMode
  Scenario Outline: validate that by click on view less button section instructions text is getting collapsed on dynamic form layout
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
    And I click on "view less" hyperlink in page instruction block
    Then I see the instruction text is as follows :
  """
   {LongText:SectionInstructionCollapsed-Text}
  """
    Examples:
      | enterNewInstruction                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
      | Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since thee 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum |

  @89825    @validateQuestionApplicableFieldAsRequiredForSaveAtTextFieldTypeAtDynamicFormLayout
  Scenario: changing value of question applicable as required for save and checking error message for written field at dynamic form
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Capture Item          | Question Applicable ? |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Applicable ? | Required to save | CI-0032            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I click on "Save" in the page details
    Then I see the following message in the page details :
      | Date Required is Required to save under Section 1. |

  @96619   @validateSortOrderAtSectionsAtDynamicFormLayoutInEditMode
  Scenario: validate sort order field at capture section in dynamic form layout -edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Capture Section       | Order     | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Order     | 1             | CS-0009            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Section 1" shown at number "0" inside detail page

  @96620   @validateSortOrderAtSectionsAtDynamicFormLayoutInViewMode
  Scenario: validate sort order field at capture section in dynamic form layout -view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Capture Section       | Order     | 1                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Order     | 1             | CS-0009            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Section 1" shown at number "0" inside detail page

  @96635   @validatePicklistFieldDropdownOptionsShouldDisplayedAsGivenInQuestionFieldAtCaptureItem
  Scenario: validate drop down options from picklist field if question is given in picklist capture items config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Capture Item          | Options   | Forms;Items       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Options   | Forms;Items;List | CI-0027            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I click dropdown field "Picklist"
    When I pause execution for "3" seconds
    Then I see only the following ordered options in dropdown field "Picklist" :
      | Forms | Items | List |

  @96644   @validateDynamicFormOpensInModalWindowByClickOnEditAction
  Scenario Outline: validate by click on edit action at flex table a dynamic form is opened in overaly.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | Edit                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "DynamicFormTable" displayed in modal

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=Edit | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalEdit |

  @96645 @validateByClickOnCloseIconAtModalThenModalIsGettingClosed-HomePhase
  Scenario Outline: Verify that a modal is getting closed by lick on cross button at modal - home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | Edit                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I close modal by clicking the top right x button
    Then I see "DynamicFormTable" modal window with id "---program:-:DynamicFormTableModalId---" is not displayed

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=Edit | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalEdit |

  @97050   @validateDynamicFormOpensInModalWindowByClickOnViewAction
  Scenario Outline: validate by click on View action at flex table a dynamic form is opened in overaly.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly see "View Window" displayed in modal
    Then I softly see "Edit" button is displayed

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @97054   @validateByClickOnCrossIconAtFormOpenedInModalAModalIsGettingClosed
  Scenario Outline: validate by click on cross icon at modal window a dynamic form modal is getting closed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    When I close modal by clicking the top right x button
    Then I see "View Window" modal is closed

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @97076   @validateByClickOnEditActionAtDynamicFormItOpensDynamicFormInEitMode
  Scenario Outline: validate by click on edit action modal it opens modal in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | Edit                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I do not see "Edit" button is displayed

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=Edit | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalEdit |

  @97079   @validateByClickOnCancelActionAtFormOpenedInModalAModalIsGettingClosed
  Scenario Outline: validate by click on cancel action at modal window a dynamic form modal is getting closed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    When I click on "Edit" button in right header
    When I click on "Cancel" button in right header
    Then I see "Edit" button is displayed

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @97564   @validateByClickOnViewActionAtFormOpenedInModalAnEditActionIsDisplayed
  Scenario Outline: validate by click on view action at dynamic form an edit action is displayed on modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Edit" button is displayed

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @97566   @validateByClickOnViewActionAtFormOpenedInModalAnEditActionIsDisplayedAtBottom
  Scenario Outline: validate by click on view action at dynamic form an edit action is displayed at bottom of modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    And I pause execution for "7" seconds
    Then I see "Edit" button at "Bottom" of  Modal window

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @97567   @validateSectionsAreExpandedByDefaultAtDynamicFormLayoutViewModeOpensInModal
  Scenario Outline: validate sections are expanded by default inside dynamic form view mode opens in modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly do not see "Section: Section 1" block is collapsed
    Then I softly do not see "Section: Section 4" block is collapsed

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @97576   @ValidateMessageAppearsByClickOnValidateButtonAtDynamicFormInViewModeOpensInModal
  Scenario Outline: validate a message should display by click on header validate button on dynamic form view mode opens in modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    When I click on "Validate" button in right header
    Then I see the following message in the page details :
      | Written Section 2 in Section Section 2 question not answered |

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @97578   @ValidateMessageAppearsByClickOnValidateButtonAtBottomOfDynamicFormInViewModeOpensInModal
  Scenario Outline: validate a message should display by click on footer validate button on dynamic form opens in modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    When I click on "Validate" button in right footer
    Then I see the following message in the page details :
      | Written Section 2 in Section Section 2 question not answered |

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @97574   @validateEditButtonIsDisplayedAtTopRightCornerInViewModeAtDynamicFormOpensInModal
  Scenario Outline: validate that Edit button is displayed at top right corner at dynamic form layout opens in modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Edit" button at "Top" of  Modal window

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @97575   @validateValidateButtonIsDisplayedAtTopRightCornerInViewModeAtDynamicFormOpensInModal
  Scenario Outline: validate that validate button is displayed at top right corner at dynamic form layout opens in modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see "Validate" button at "Top" of  Modal window

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @97580   @validateThatFormIsOpenedInEditModeByClickOnEditButtonAtFooterAtDynamicFormOpensInModal
  Scenario Outline: validate that form is opened in edit mode by click on bottom edit button at dynamic form layout opens in modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    When I click on "Edit" button in right footer
    Then I see "Cancel" button at "Bottom" of  Modal window

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @97583   @validateSaveButtonIsDisplayedAtBottomRightCornerInViewModeAtDynamicFormOpensInModal
  Scenario Outline: validate that save button is displayed at bottom right corner at dynamic form layout opens in modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    When I click on "Edit" button in right footer
    Then I see "Save" button at "Bottom" of  Modal window

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @96639   @validateOptionsAtRadioFieldAreDisplayedIfOptionsAreConfiguredAtCaptureItemInViewMode
  Scenario: validate options are displayed below radio field if configured at radio field capture item
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Capture Item          | Options   | Yes;No            | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Options   | Yes;Test      | CI-0025            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see radio button as "Yes" at "Radio" field in form layout
    Then I softly see radio button as "Test" at "Radio" field in form layout

  @97586   @validateByClickOnEditActionAtDynamicFormSaveButtonDisplayedInsideModalOfDynamicForm
  Scenario Outline: validate by click on edit action a save button is displayed inside dynamic form modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | Edit                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see "Save" button is displayed

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=Edit | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalEdit |

  @97588   @validateAPicklistFieldIsEditableAndSvaesTheGivenValueInsideModalOfDynamicForm
  Scenario Outline: validate that picklist field is ediatble and it saves the given value inside dynamic form modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongOldValue> | DynamicFormTable   | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | NewTab                  | DynamicFormTable   | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ? | Modal                   | DynamicFormTable   | Name                      | Edit                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I enter values into "Section 1" page block
      | Field    | Value |
      | Picklist | Items |
    When I click on "Save" button in right header
    Then I see for "Picklist" field value is "Items" inside dynamic form

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=Edit | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalEdit |

  @100110    @ValidateDisplayOfValidateButtonAtDynamicFormLayoutInEditMode
  Scenario: validate the display of validate button in edit mode if Validation Button Visibility is set as shown from config at dynamic form layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                    | fieldOrignalValue | filterId         |
      | Capture Form          | Validation Button Visibility | Show              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Validation Button Visibility | Show          | CF-0006            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I do not see "Validate" button is displayed

  @100107    @validateThatByClickOnCancelButtonAFormIsGettingDisplayedInViewMode
  Scenario: validate that by click on cancel button a form is displayed in view mode
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I click on "Cancel" button in right header
    When I pause execution for "3" seconds
    Then I see "UFormView" in current url

  @100108    @validateThatByClickOnSaveButtonAFormIsGettingDisplayedInViewMode
  Scenario: validate that by click on save button a form is displayed in view mode
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    When I click on "Save" button in right header
    When I pause execution for "2" seconds
    Then I see "uformview" in current url

  @100112   @validateDependentQuestionJsonFieldByDisablingCurrencyFieldFromMultipleSectionsUsingWrittenFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling currency from section 1 and section 3 on the basis of written field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                           | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyFieldUsingWrittenFieldValueByProvidingNameOfField | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                          | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoXz                                                                   | CI-0035            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyFieldUsingWrittenFieldValueByProvidingIdOfField   | CI-0035            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY4                                                                   | CI-0036            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Currency" field inside "Section 1" is disabled
    Then I softly see "Currency Section 3" field inside "Section 3" is disabled

  @100126   @validateDependentQuestionJsonFieldByHidingNumberAndWrittenFieldFromMultipleSectionsUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding number and written from section 1 and section 3 on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                             | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideNumberFieldUsingCurrencyFieldValueByProvidingNameOfField        | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                                               | CI-0023            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                              | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY4                                                                      | CI-0036            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideWrittenNumberFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0036            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoYE                                                                      | CI-0038            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoXz                                                                      | CI-0035            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Written" field inside "Section 1" is hidden
    Then I softly see "Number" field inside "Section 1" is hidden
    Then I softly see "Written Section 3" field inside "Section 3" is hidden
    Then I softly see "Number Section 3" field inside "Section 3" is hidden

  @100113   @validateDependentQuestionJsonFieldByDisablingCurrencyAndHidingPercentFromSection1And3UsingWrittenFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling currency and hiding percent from section 1 and 3 on the basis of written field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                                                   | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyAndHidingPercentFieldSection1UsingWrittenFieldValueByProvidingNameOfField | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                  | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                   | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoXz                                                                                           | CI-0035            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyAndHidingPercentFieldSection3UsingWrittenFieldValueByProvidingNameOfField | CI-0035            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY4                                                                                           | CI-0036            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY9                                                                                           | CI-0037            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Currency" field inside "Section 1" is disabled
    Then I softly see "Percent" field inside "Section 1" is hidden
    Then I softly see "Currency Section 3" field inside "Section 3" is disabled
    Then I softly see "Percent Section 3" field inside "Section 3" is hidden

  @100115   @validateDependentQuestionJsonFieldByDisablingCurrencyAndHidingPercentFromSection1And3UsingWrittenFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by disabling currency and hiding percent from section 1 and 3 on the basis of written field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                                                   | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyAndHidingPercentFieldSection1UsingWrittenFieldValueByProvidingNameOfField | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                  | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                   | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoXz                                                                                           | CI-0035            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyAndHidingPercentFieldSection3UsingWrittenFieldValueByProvidingNameOfField | CI-0035            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY4                                                                                           | CI-0036            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY9                                                                                           | CI-0037            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly see "Currency" inside "Section 1" at dynamic form
    Then I softly do not see "Percent" inside "Section 1" at dynamic form
    Then I softly see "Currency Section 3" inside "Section 3" at dynamic form
    Then I softly do not see "Percent Section 3" inside "Section 3" at dynamic form

  @100118   @validateDependentQuestionJsonFieldByReqCurrencyAndHidingPercentFromSection1And3UsingWrittenFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by making currency req and hiding percent from section 1 and 3 on the basis of written field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                                             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                                                   | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowReqCurrencyAndHidingPercentFieldSection1UsingWrittenFieldValueByProvidingNameOfField | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                                                  | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Percent                                                                                                   | CI-0024            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoXz                                                                                           | CI-0035            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:ShowReqCurrencyAndHidingPercentFieldSection3UsingWrittenFieldValueByProvidingNameOfField | CI-0035            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY4                                                                                           | CI-0036            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY9                                                                                           | CI-0037            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Percent" field inside "Section 1" is hidden
    Then I softly see "Percent Section 3" field inside "Section 3" is hidden
    When I enter values into "Section 1" page block
      | Field    | Value |
      | Currency |       |
    When I enter values into "Section 3" page block
      | Field              | Value |
      | Currency Section 3 |       |
    When I click on "Save" in the page details
    Then I softly see the following message in the page details :
      | Currency is Required to save under Section 1.           |
      | Currency Section 3 is Required to save under Section 3. |

  @100123   @validateDependentQuestionJsonFieldByDisablingNumberAndWrittenFieldFromMultipleSectionsUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by disabling number and written from section 1 and section 3 on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                                | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableNumberFieldUsingCurrencyFieldValueByProvidingNameOfField        | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                                                  | CI-0023            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                 | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY4                                                                         | CI-0036            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableWrittenNumberFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0036            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoYE                                                                         | CI-0038            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoXz                                                                         | CI-0035            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I softly see "Written" field inside "Section 1" is disabled
    Then I softly see "Number" field inside "Section 1" is disabled
    Then I softly see "Written Section 3" field inside "Section 3" is disabled
    Then I softly see "Number Section 3" field inside "Section 3" is disabled

  @100124   @validateDependentQuestionJsonFieldByDisablingNumberAndWrittenFieldFromMultipleSectionsUsingCurrencyFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by disabling number and written from section 1 and section 3 on the basis of currency field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                                | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableNumberFieldUsingCurrencyFieldValueByProvidingNameOfField        | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                                                  | CI-0023            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                                 | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY4                                                                         | CI-0036            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableWrittenNumberFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0036            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoYE                                                                         | CI-0038            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoXz                                                                         | CI-0035            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly see "Written" inside "Section 1" at dynamic form
    Then I softly see "Number" inside "Section 1" at dynamic form
    Then I softly see "Written Section 3" inside "Section 3" at dynamic form
    Then I softly see "Number Section 3" inside "Section 3" at dynamic form

  @100125   @validateDependentQuestionJsonFieldByHidingNumberAndWrittenFieldFromMultipleSectionsUsingCurrencyFieldValueInsideDynamicFormInEditMode
  Scenario: validate Dependent Question Json Field by hiding number and written from section 1 and section 3 on the basis of currency field value in form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:4 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:5 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:6 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Currency                                                                             | CI-0022            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideNumberFieldUsingCurrencyFieldValueByProvidingNameOfField        | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | Number                                                                               | CI-0023            |                           |                            |
      | Capture Item:General  | Question Identifier     | Written                                                                              | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY4                                                                      | CI-0036            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:HideWrittenNumberFieldUsingCurrencyFieldValueByProvidingNameOfField | CI-0036            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoYE                                                                      | CI-0038            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoXz                                                                      | CI-0035            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly do not see "Written" inside "Section 1" at dynamic form
    Then I softly do not see "Number" inside "Section 1" at dynamic form
    Then I softly do not see "Written Section 3" inside "Section 3" at dynamic form
    Then I softly do not see "Number Section 3" inside "Section 3" at dynamic form

  @100128   @validateDependentQuestionJsonFieldByDisablingCurrencyFieldFromMultipleSectionsUsingWrittenFieldValueInsideDynamicFormInViewMode
  Scenario: validate Dependent Question Json Field by disabling currency from section 1 and section 3 on the basis of written field value in form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:0 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:1 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:2 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:3 |
      | Capture Item          | Dependent Question Json |                   | ApiGeneratedId:4 |
      | Capture Item          | Question Identifier     |                   | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Item:General  | Question Identifier     | Written                                                                           | CI-0018            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyFieldUsingWrittenFieldValueByProvidingNameOfField | CI-0018            |                           |                            |
      | Capture Item:General  | Question Identifier     | Currency                                                                          | CI-0022            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoXz                                                                   | CI-0035            |                           |                            |
      | Capture Item:General  | Dependent Question Json | govgrants_config:DisableCurrencyFieldUsingWrittenFieldValueByProvidingIdOfField   | CI-0035            |                           |                            |
      | Capture Item:General  | Question Identifier     | a4Cg0000000MoY4                                                                   | CI-0036            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I softly see "Currency" inside "Section 1" at dynamic form
    Then I softly see "Currency Section 3" inside "Section 3" at dynamic form

  @100446    @validateEnablePdfDownloadFromMenuFromDynamicFormLayoutViewMode
  Scenario: validating Download as pdf option is displayed inside burger menu at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    Then I see "Download as PDF" options is displayed

  @100450    @validateDisablingOfPdfDownloadFromMenuFromDynamicFormLayout
  Scenario: validating Download as pdf option is not displayed inside burger menu at dynamic form
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | true          | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Menu" action is not displayed at the "Dynamic Form" modal

  @100451    @validateEnablePdfDownloadFromMenuFromDynamicFormLayoutEditMode
  Scenario: validating Download as pdf option is not displayed inside burger menu at dynamic form edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    Then I see "Save" button is displayed

  @100456    @validateEnablingOfPdfDownloadFromMenuFromDynamicFormViewModalWindow
  Scenario Outline: validating Download as pdf option is displayed inside burger menu at dynamic form view modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue       | filterId         |
      | Capture Form          | Hide Pdf Download | false                   | ApiGeneratedId:0 |
      | Flex Table Action     | Action URL Long   | <actionUrlLongOldValue> | ApiGeneratedId:1 |
      | Flex Table Action     | Where To Open ?   | NewTab                  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false                   | CF-0000            |                           |                            |
      | Flex Table Action     | Action URL Long   | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ?   | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" action at the "Dynamic Form" modal
    Then I see "Download as PDF" options is displayed

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @100460    @validateDisablingOfPdfDownloadOptionAtDynamicFormViewModalWindow
  Scenario Outline: validating Menu button for Download as pdf option is not displayed inside burger menu at dynamic form view modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue       | filterId         |
      | Capture Form          | Hide Pdf Download | false                   | ApiGeneratedId:0 |
      | Flex Table Action     | Action URL Long   | <actionUrlLongOldValue> | ApiGeneratedId:1 |
      | Flex Table Action     | Where To Open ?   | NewTab                  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | true                    | CF-0000            |                           |                            |
      | Flex Table Action     | Action URL Long   | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | View                       |
      | Flex Table Action     | Where To Open ?   | Modal                   | DynamicFormTable   | Name                      | View                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    Then I see "Menu" action is not displayed at the "Dynamic Form" modal

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=View | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalView |

  @100462    @validateDisablingOfPdfDownloadFromMenuFromDynamicFormEditModalWindow
  Scenario Outline: validating Menu button for Download as pdf option is not displayed inside burger menu at dynamic form edit modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue       | filterId         |
      | Capture Form          | Hide Pdf Download | false                   | ApiGeneratedId:0 |
      | Flex Table Action     | Action URL Long   | <actionUrlLongOldValue> | ApiGeneratedId:1 |
      | Flex Table Action     | Where To Open ?   | NewTab                  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false                   | CF-0000            |                           |                            |
      | Flex Table Action     | Action URL Long   | <actionUrlLongNewValue> | DynamicFormTable   | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ?   | Modal                   | DynamicFormTable   | Name                      | Edit                       |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    Then I see "Save" button is displayed

    Examples:
      | actionUrlLongOldValue                                                 | actionUrlLongNewValue                                                      |
      | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=Edit | /apex/DynamicFormRedirect?packageId={!CapturePackage__c.Id}&mode=ModalEdit |

  @115550    @validateThatDownloadAsPDFOptionIsDisplayedAtDynamicFormFlexTableByLoginAsAdminUser
  Scenario: verify that download as PDF button is displayed at dynamic form flex table by login as admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on parallel lines menu bar with data target value "#DynamicFormTableFlexToggle"
    Then I see "Download as PDF" inside flex table with id "DynamicFormTablegrid"

  @115551    @validateThatDownloadAsPDFOptionIsDisplayedAtDynamicFormFlexTableByLoginAsPMUser
  Scenario: verify that download as PDF button is displayed at dynamic form flex table by login as PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on parallel lines menu bar with data target value "#DynamicFormTableFlexToggle"
    Then I see "Download as PDF" inside flex table with id "DynamicFormTablegrid"

  @147325    @validateEnablePdfDownloadOptionDisappearsFromMenuAtDynamicFormLayoutViewMode
  Scenario: validating Download as pdf option is disappears from menu at dynamic form view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Capture Form          | Hide Pdf Download | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Form:General  | Hide Pdf Download | false         | CF-0000            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form" inside table
    When I click on "Menu" in the page details
    Then I see "Download as PDF" options is displayed

  @149135    @verifyAnAlertMessageIsDisplayedByClickedAtBrowserRefreshButtonForUnsavedFieldDataAtDynamicFormLayout
  Scenario: validate the alert message is displayed for unsaved field data, by click on browser refresh button at dynamic form
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form" inside table
    When I enter values into "Section 1" page block
      | Field   | Value      |
      | Written | Test Value |
    And I refresh the page
    And I pause execution for "2" seconds
    Then I see alert popup box

  @164803 @ValidateSectionColumnAsVerticalEditModeWhenScoreCommentsEnableForQuestion
  Scenario: Validate Section Column As Vertical Edit Mode When Score Comments Enable For Question
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Capture Section       | Section Column | Horizontal        | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Column | Vertical      | CS-0009            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see section column is "vertically" aligned
  @164802 @ValidateSectionColumnAsVerticalViewModeWhenScoreCommentsEnableForQuestion
  Scenario: Validate Section Column As Vertical View Mode When Score Comments Enable For Question
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Capture Section       | Section Column | Horizontal        | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Column | Vertical      | CS-0009            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see section column is "vertically" aligned
  @164805 @ValidateSectionColumnAsHorizontalViewModeWhenScoreCommentsEnableForQuestion
  Scenario: Validate Section Column As Horizontal View Mode When Score Comments Enable For Question
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Capture Section       | Section Column | Horizontal        | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Column | Horizontal    | CS-0009            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "View" icon for "Dynamic Form 1" inside table
    Then I see section column is "horizontally" aligned
  @164804 @ValidateSectionColumnAsHorizontalEditModeWhenScoreCommentsEnableForQuestion
  Scenario: Validate Section Column As Horizontal Edit Mode When Score Comments Enable For Question
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Capture Section       | Section Column | Horizontal        | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Capture Section:General | Section Column | Horizontal    | CS-0009            |                           |                            |
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Announcements - All"
    When I perform quick search for "AnnouncementTest"
    When I click on "View" icon for "AnnouncementTest" inside table
    When I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Dynamic Form 1" inside table
    Then I see section column is "horizontally" aligned