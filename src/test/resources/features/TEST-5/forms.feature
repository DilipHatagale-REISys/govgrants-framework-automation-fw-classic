@forms-component @regression-test5
Business Need: Forms Component Scenarios
  Test all forms component based scenarios
  As a configuration manager i make different configurational changes in forms component and will validate them.

  @35185    @validateBusinessFormsRemoval-gApplication
  Scenario: Validate disabling of business form from config and validating inside Application view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | false         | ApplicationView    | GNT__PageBlockTitle__c    | Business Forms             |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    Then I see Business Form section is not displayed

  @35189    @hidingPreviewActionItemForUsersInsideBusinessForms-gApplication @smoke
  Scenario: Validate disabling preview of business form action item from config and validating inside Application view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Rule       | Hide For User |                   | ApplicationView    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide For User | Internal      | ApplicationView    | Name                      | preview rule               |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Preview" action item is not displayed inside business form

  @35193    @hidingViewActionItemForUsersInsideBusinessForms-gApplication
  Scenario: Validate disabling View of business form action item from config and validating inside Application view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Rule       | Hide For User |                   | ApplicationView    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide For User | Internal      | ApplicationView    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    Then I see "View" action item is not displayed inside business form

  @35271    @changeLabelOfEditFormPageLayoutActionItem-gApplication @smoke
  Scenario: Validate label change of edit action button at form page layout action from config and validating inside Application form view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Name | Edit              | Application Cover Page | Name                      | Edit Automation            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue   | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Name | Edit Automation | Application Cover Page | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Cover Page" program in flex table
    Then I see changed label as "Edit Automation" of action item inside form page layout

  @35290    @hidingOfEditFormPageLayoutActionItemForUser-gApplication
  Scenario: Validate disabling of edit action button at form page layout action from config and validating inside Application form view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide For User |                   | Application Cover Page | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide For User | Internal      | Application Cover Page | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Cover Page" program in flex table
    Then I see "Edit" of action item inside form page layout is not displayed

  @37856    @headerFieldAtFormLayout-gApplication @smoke
  Scenario: Changing header name for particular form inside application phase from config and validating it at application form detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue  | filterId         |
      | Page Layout           | Header    | Application Simple | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Header    | Test Automation | Application - Simple |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I see "Test Automation" shown as over view header

  @83501 @verifyEnhancedGridWithHeaderIsDisplayedOnFormPreviewPage-gAnnouncement
  Scenario:validate that enhanced grid with header is displayed on forms preview layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I see "Monitoring Schedule For All Active Grants" shown as inside "---program:-:enhancedGridTableId---"

  @83505 @verifyEnhancedDataTableWithHeaderIsDisplayedOnFormPreviewPage-gAnnouncement
  Scenario:validate that enhanced data table with header is displayed on forms preview layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Budget Form" program in flex table
    Then I see "Monitoring Schedule For All Active Grants" shown as inside "---program:-:TmpActiveGrantsGridTableId---"

  @102056 @verifyTheSwitchKeywordIsDisplayedCorrectlyInsideConfirmationBoxAtFormPreviewPage-gAnnouncement
  Scenario:validate switch is displayed correctly in confirmation box on forms preview layout
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | true         | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | false        | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    When I select "General Application Cover Page" from dropdown at forms
    Then I see the text containing :
      | switch |

  @102060 @verifyThatOKKeywordIsDisplayedCorrectlyInsideConfirmationBoxAtFormPreviewPage-gAnnouncement
  Scenario:validate OK is displayed correctly in confirmation box on forms preview layout
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | true         | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | false        | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    When I select "General Application Cover Page" from dropdown at forms
    Then I see the text containing :
      | Ok |

  @102058 @verifyThatDifferentWordIsDisplayedCorrectlyInsideConfirmationBoxAtFormPreviewPage-gAnnouncement
  Scenario:validate different is displayed correctly in confirmation box on forms preview layout
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | true         | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | false        | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    When I select "General Application Cover Page" from dropdown at forms
    Then I see the text containing :
      | different |

  @103084 @verifyThatEnhancedGridIsDisplayedAtFormPreviewPage-gApplications
  Scenario:validate enhanced grid is displayed at forms preview layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Preview" icon of form "General Application Form" program in flex table
    Then I see expected table with id "---program:-:tmpActiveGrantsGridTableId---"

  @103092 @verifyThatEnhancedGridIsDisplayedAtFormViewPage-gApplications
  Scenario:validate enhanced grid is displayed at forms view layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I see expected table with id "---program:-:tmpActiveGrantsGridTableId---"

  @103093 @verifyThatEnhancedGridIsDisplayedAtFormEditPage-gApplications
  Scenario:validate enhanced grid is displayed at forms edit layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    Then I see expected table with id "---program:-:tmpActiveGrantsGridTableId---"

  @105382 @verifyValueSavedUnderMultipicklistRadioButtonAtFormLayout
  Scenario:validate that saved value is displayed inside multi picklist field at form layout
    Given I have "dynamicFieldConfig" configuration as below:
      | id                 | Type  | Name                 |
      | a0L1C00000WNaMrUAL | Radio | Multi-Picklist Field |
    And I update custom Dynamic Field setting changes:
      | id                 | Type  | Name                 |
      | a0L1C00000WNaMrUAL | Radio | Multi-Picklist Field |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    When I select value as "Display 1" inside "fieldMulti_Picklist_Field__c" radio field
    When I click on "Save" in the page details
    Then I see value as "Display 1" is selected at "Multi-Picklist Field" inside dynamic form

  @105387 @verifyThatRadioButtonsAreDisplayedAtMultipicklistFieldAtFormsLayoutInViewMode
  Scenario:validate that radio button displayed at multipicklist field inside form layout
    Given I have "dynamicFieldConfig" configuration as below:
      | id                 | Type  | Name                 |
      | a0L1C00000WNaMrUAL | Radio | Multi-Picklist Field |
    And I update custom Dynamic Field setting changes:
      | id                 | Type  | Name                 |
      | a0L1C00000WNaMrUAL | Radio | Multi-Picklist Field |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    Then I see radio buttons for "Multi-Picklist Field" field inside form

  @105740 @verifyThatFlexTableIsDisplayedAtFormViewPage-gApplications
  Scenario:validate flex table is displayed at forms view layout
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | true          | Application - Simple | Name                      | PB-1852                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I see expected table with id "---program:-:toggleFlexTableBudgetCategoriesId---"

  @106159 @verifyValueSavedUnderMultipicklistRadioButtonAtFormLayout
  Scenario:validate that saved value is displayed inside multi picklist field at form layout
    Given I have "dynamicFieldConfig" configuration as below:
      | id                 | Type  | Name                 |
      | a0L1C00000WNaMrUAL | Radio | Multi-Picklist Field |
    And I update custom Dynamic Field setting changes:
      | id                 | Type     | Name                 |
      | a0L1C00000WNaMrUAL | Checkbox | Multi-Picklist Field |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    Then I select below checkbox options for field "Multi-Picklist Field"
      | Display 1 |
    When I click on "Save" in the page details
    Then I see value as "Display 1" is selected at "Multi-Picklist Field" inside dynamic form

  @105844 @verifyByClickAtCancelButtonAtFormLayoutItShouldRedirectToApplicationDetailPage
  Scenario:validate that by click on form layout, it is re-directed to application detail page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    When I click on "Cancel" in the page details
    Then I see "Application" shown as over view header

  @112014 @verifySpecialCharacterAtFormLayoutByPMUser
  Scenario:validate special characters are displayed inside form layout by login as pm user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    Then I see for "Acknowledgment2" field value is "$@#" inside dynamic form

  @112036 @verifySpecialCharacterArAcceptedAtFormLayoutInEdit
  Scenario:validate special characters are accepted in edit mode and displayed inside form layout
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    And I enter value "$@#" into field "fieldAcknowledgment2__c"
    When I click on "Save" button in right header
    And I pause execution for "3" seconds
    Then I see for "Acknowledgment2" field value is "$@#" inside dynamic form

  @118850 @verifyAlertMessageAtFormLayoutInEditMode
  Scenario:validate alert message displayed for required field at form layout in edit mode
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    And I enter value "" into field "SimpleQuestion1__c"
    When I click on "Save" button in right header
    Then I see the following message in the page details :
      | 1. Describe In Detail The Applicant’s Overall Plan To Focus On The Key Priorities For This Program. is required to save. |

  @119860  @validateFieldMessageDisplayedAtHeaderForRequiredForSubmitAndSaveFieldsForAdminUserAtFormEdit-gPlanning
  Scenario: validate field message displayed for required for save and submit Field at page header for admin user at form edit
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @119861 @verifyRequiredForSaveFieldAlertMessageAtFormLayoutInEditMode
  Scenario:validate required for save alert message displayed if data from required field is missing at form layout in edit mode
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField   | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior |                   | Application - Simple | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Application - Simple | Name                      | PBD-4188                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    And I enter value "" into field "ProposedStartdate__c"
    When I click on "Save" button in right header
    Then I see the following message in the page details :
      | Proposed Start Date : is required to save. |

  @120398 @verifyErrorMessageIsNotDisplayedAtFormLayoutWhileClickOnSaveButton
  Scenario:validate error message is not displayed if user click on save button by changing form data
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    And I enter value "test" into field "SimpleQuestion1__c"
    When I click on "Save" button in right header
    Then I cannot see the following message in the page details :
      | Invalid Id : |

  @120968 @verifyFormViewPageIsDisplayedByClickOnFormCancelButton
  Scenario:validate form view page is displayed by click on form cancel button
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    When I click on "Cancel" button in right header
    Then I see "DynamicFormView" in current url

  @122002    @VerifyAtFormsIfClickOnCancelButtonThenUserIsRedirectedToFormViewPageWhenPageRedirectBehaviourIsSetToSaveAndContinue
  Scenario: Validate that a form view page is displayed by click on cancel button at forms if page redirected behaviour is set to save and continue
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Forms                 | Page Redirect Behaviour | Save              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue     | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Page Redirect Behaviour | Save and Continue | General Application Form |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    And I click on "Cancel" in the page details
    Then I see "Application" shown as over view header