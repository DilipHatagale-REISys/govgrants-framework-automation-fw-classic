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
    Then I see expected table with id "TmpActiveGrantsGridFlexToggle"

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
      | id                 | Type     | Name                 |
      | a0L1C00000WNaMrUAL | Checkbox | Multi-Picklist Field |
    When I login as "Automation" user
    When I pause execution for "5" seconds
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    When I select value as "Display 1" inside "fieldMulti_Picklist_Field__c" radio field
    When I select value as "Display 2" inside "fieldMulti_Picklist_Field__c" radio field
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    When I select value as "Display 1" inside "fieldMulti_Picklist_Field__c" radio field
    When I select value as "Display 2" inside "fieldMulti_Picklist_Field__c" radio field
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    When I select value as "Display 1" inside "fieldMulti_Picklist_Field__c" radio field
    When I select value as "Display 2" inside "fieldMulti_Picklist_Field__c" radio field
    When I click on "Save" in the page details
    And I pause execution for "10" seconds
    Then I see value as "Display 1" is selected at "Multi-Picklist Field" inside dynamic form
    Then I see value as "Display 2" is selected at "Multi-Picklist Field" inside dynamic form

  @105387 @verifyThatRadioButtonsAreDisplayedAtMultipicklistFieldAtFormsLayoutInViewMode
  Scenario:validate that radio button displayed at multipicklist field inside form layout
    Given I have "dynamicFieldConfig" configuration as below:
      | id                 | Type  | Name                 |
      | a0L1C00000WNaMrUAL | Radio | Multi-Picklist Field |
    And I update custom Dynamic Field setting changes:
      | id                 | Type  | Name                 |
      | a0L1C00000WNaMrUAL | Radio | Multi-Picklist Field |
    When I login as "Automation" user
    When I pause execution for "5" seconds
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
    When I pause execution for "7" seconds
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
    Then I select below checkbox options for field "fieldMulti_Picklist_Field__c"
      | Display 1 |
    And I pause execution for "3" seconds
    When I click on "Save" in the page details
    And I pause execution for "7" seconds
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
    When I pause execution for "8" seconds
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    When I click on "Edit" in the page details
    And I enter value "$@#" into field "fieldAcknowledgment2__c"
    When I click on "Save" button in right header
    And I pause execution for "10" seconds
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
    Then I see the following message in the page details contains:
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
    And I enter value "" into field "fieldProposedStartdate__c"
    When I click on "Save" button in right header
    Then I see the following message in the page details contains:
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
      | configurationCategory | fieldName               | fieldOrignalValue    | filterId         |
      | Forms                 | Page Redirect Behaviour | Save and Close Modal | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue  | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Page Redirect Behaviour | Save and Close | General Application Form |                           |                            |
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

  @125579 @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataAtFormsUnderEnhancedFormsTable
  Scenario:validate that users should be warned when they click on Cancel button with unsaved data at forms under enhanced forms table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Cover Page" inside flex table with id "FormEnhancedTable"
    When I enter value "test 1" into field "Subject__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @112163 @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClicknCancelButtonWithUnsavedDataAtFormsUnderBusinessFormsTable
  Scenario:validate that users should be warned when they click on Cancel button with unsaved data at forms under business forms table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    And I enter value "test" into field "SimpleQuestion1__c"
    Then I see "Are you sure you want to cancel?" message inside confirmation box is displayed on click "Cancel"

  @126480 @verifyThatByClickOnPreviewActionAtBusinessFormsItShouldGetOpensInNewTab-gApplications
  Scenario:validate business form is getting opens in new tab by click on preview action on it
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Preview" icon of form "General Application Form" program in flex table
    Then I see new tab is opened

  @126481 @verifyHelpTextIsDisplayedByClickOnPreviewActionAtBusinessForms-gApplications @skipOnJenkins
  Scenario:validate help text at page block is displayed at business form by click on preview action on it
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Preview" icon of form "General Application Form" program in flex table
    And I pause execution for "5" seconds
    When I hovering mouse on help text icon inside "APPLICANTS ORGANIZATION INFORMATION"
    Then I see "This section displays the information about applicants organization details." shown as help text

  @126482 @verifyThatByClickOnPreviewActionAtBusinessFormsOnlyPageBlockTitlesShouldDisplayAndNotTheBlockDetails-gApplications
  Scenario:validate at business form preview, only page block titles should display and not the block details fields
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Preview" icon of form "General Application Form" program in flex table
    Then I softly see "PROJECT INFORMATION" page block displayed
    Then I softly see "Demo_Title" is not displayed inside page block detail
    Then I softly see "AP-755-213" is not displayed inside page block detail

  @126483 @verifyThatByClickOnPreviewActionAtBusinessFormsOnlyStaticTextDisplayed-gApplications
  Scenario:validate at business form preview, only static text displayed
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Preview" icon of form "General Application Form" program in flex table
    Then I see the text :
      | I hereby certify that the information provided above is accurate and complete. |
      | Acknowledgement:                                                               |

  @126484 @verifyThatByClickOnPreviewActionAtBusinessFormsOnlyTableHeaderDisplayedAndNotRecordsDisplayed-gApplications
  Scenario:validate at business form preview, only table header displayed and not record
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Preview" icon of form "General Application Budget Form" program in flex table
    Then I softly do not see value "ASA-1327" for title "Name" inside table "ApplicationBudgetCategoriesbyBudgetPeriodFormFlexGrid"
    Then I softly see "Budget Details" page block displayed

  @126486 @verifyThatByClickOnPreviewActionAtBusinessFormsEditCancelAndSaveAcionsNotDisplayed-gApplications1
  Scenario:validate at business form preview, edit, cancel, save actions are not displayed at form layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Preview" icon of form "General Application Form" program in flex table
    Then I softly do not see "Cancel" button is displayed
    Then I softly do not see "Edit" button is displayed
    Then I softly do not see "Save" button is displayed

  @130102    @VerifyTitleLabelAndValueAtMiniPageLayoutIsDisplayedProperlyOnMouseHoverAtFormsLayout
  Scenario:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at form layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    When I hovering mouse on page block detail of label "Announcement ID" lookup field "AN-755-294"
    And I pause execution for "3" seconds
    Then I softly see "title" as "AN-755-294" inside mini page layout
    And I refresh the page
    When I hovering mouse on page block detail of label "Announcement ID" lookup field "AN-755-294"
    And I pause execution for "3" seconds
    Then I softly see "Label" as "Title" inside mini page layout
    And I refresh the page
    When I hovering mouse on page block detail of label "Announcement ID" lookup field "AN-755-294"
    And I pause execution for "3" seconds
    Then I softly see "Value" as "Demo_Title" inside mini page layout

  @132393 @verifyFormOpensInViewModeForExternalUser
  Scenario:validate that by click at View action, form displayed in view mode for external user - SPI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    And I click on "View" icon for "General Application Budget Form" inside flex table with id "---program:-:toggleFlexTableFormEnhancedTableId---"
    Then I see "Application Budget" shown as over view header

  @132394 @verifyFormOpensInEditModeForExternalUser
  Scenario:validate that by click at Edit action, form displayed for external user - SPI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Budget Form" inside flex table with id "FormEnhancedTable"
    Then I see "Application Budget" shown as over view header

  @132423 @verifyFormOpensInViewModeForAdminUser
  Scenario:validate that by click at View action, form displayed in view mode for admin user - SPI
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Budget Form" program in flex table
    Then I see "Application Budget" shown as over view header

  @132425 @verifyFormOpensInEditModeForAdminUser
  Scenario:validate that by click at Edit action, form displayed for admin user - SPI
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Budget Form" inside flex table with id "FormEnhancedTable"
    Then I see "Application Budget" shown as over view header

  @132406 @verifyFormOpensInViewModeEvenIfHideFromDropdownCheckBoxIsCheckedForAdminUser
  Scenario:validate that form opens in view mode even if hide from dropdown checkbox is checked for admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Hide From Dropdown | true          | General Application Cover Page |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly see dropdown with selected value as "General Application Budget Form" at form layout

  @132407 @verifyFormOpensInEditModeEvenIfHideFromDropdownCheckBoxIsCheckedForAdminUser
  Scenario:validate that form opens in edit mode even if hide from dropdown checkbox is checked for admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Hide From Dropdown | true          | General Application Cover Page |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly see dropdown with selected value as "General Application Budget Form" at form layout

  @132410 @verifyFormOpensInViewModeEvenIfHideFromDropdownCheckBoxIsCheckedForSPIUser
  Scenario:validate that form opens in view mode even if hide from dropdown checkbox is checked for SPI user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Hide From Dropdown | true          | General Application Cover Page |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly see dropdown with selected value as "General Application Budget Form" at form layout

  @132412 @verifyFormOpensInEditModeEvenIfHideFromDropdownCheckBoxIsCheckedForSPIUser
  Scenario:validate that form opens in edit mode even if hide from dropdown checkbox is checked for SPI user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField             | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Hide From Dropdown | true          | General Application Cover Page |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly see dropdown with selected value as "General Application Budget Form" at form layout

  @132413 @verifyFormOpensInViewModeAfterCheckingHideFromDropdownCheckBoxForMultipleFormsIsCheckedForAdminUser
  Scenario:validate that form opens in view mode if hide from dropdown checkbox for multiple forms is checked for admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:0 |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Hide From Dropdown | true          | General Application Cover Page  |                           |                            |
      | Forms:General         | Hide From Dropdown | true          | General Application Budget Form |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly do not see dropdown with selected value as "General Application Cover Page" at form layout
    Then I softly do not see dropdown with selected value as "General Application Budget Form" at form layout
    Then I softly see dropdown with selected value as "General Application Form" at form layout

  @132418 @verifyFormOpensInEditModeAfterCheckingHideFromDropdownCheckBoxForMultipleFormsIsCheckedForAdminUser
  Scenario:validate that form opens in edit mode if hide from dropdown checkbox for multiple forms is checked for admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:0 |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Hide From Dropdown | true          | General Application Cover Page  |                           |                            |
      | Forms:General         | Hide From Dropdown | true          | General Application Budget Form |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly do not see dropdown with selected value as "General Application Cover Page" at form layout
    Then I softly do not see dropdown with selected value as "General Application Budget Form" at form layout
    Then I softly see dropdown with selected value as "General Application Form" at form layout

  @132496 @verifyFormOpensInViewModeAfterCheckingHideFromDropdownCheckBoxForAllFormsIsCheckedForAdminUser
  Scenario:validate that form opens in view mode if hide from dropdown checkbox for all forms is checked for admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:0 |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:1 |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Hide From Dropdown | true          | General Application Cover Page  |                           |                            |
      | Forms:General         | Hide From Dropdown | true          | General Application Budget Form |                           |                            |
      | Forms:General         | Hide From Dropdown | true          | General Application Form        |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly do not see dropdown with selected value as "General Application Cover Page" at form layout
    Then I softly do not see dropdown with selected value as "General Application Budget Form" at form layout
    Then I softly do not see dropdown with selected value as "General Application Form" at form layout

  @132497 @verifyFormOpensInEditModeAfterCheckingHideFromDropdownCheckBoxForAllFormsIsCheckedForAdminUser
  Scenario:validate that form opens in edit mode if hide from dropdown checkbox for all forms is checked for admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:0 |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:1 |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Hide From Dropdown | true          | General Application Cover Page  |                           |                            |
      | Forms:General         | Hide From Dropdown | true          | General Application Budget Form |                           |                            |
      | Forms:General         | Hide From Dropdown | true          | General Application Form        |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly do not see dropdown with selected value as "General Application Cover Page" at form layout
    Then I softly do not see dropdown with selected value as "General Application Budget Form" at form layout
    Then I softly do not see dropdown with selected value as "General Application Form" at form layout


  @132498 @verifyFormOpensInViewModeAfterCheckingHideFromDropdownCheckBoxForAllFormsIsCheckedForSPIUser
  Scenario:validate that form opens in view mode if hide from dropdown checkbox for all forms is checked for SPI user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:0 |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:1 |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Hide From Dropdown | true          | General Application Cover Page  |                           |                            |
      | Forms:General         | Hide From Dropdown | true          | General Application Budget Form |                           |                            |
      | Forms:General         | Hide From Dropdown | true          | General Application Form        |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly do not see dropdown with selected value as "General Application Cover Page" at form layout
    Then I softly do not see dropdown with selected value as "General Application Budget Form" at form layout
    Then I softly do not see dropdown with selected value as "General Application Form" at form layout

  @132499 @verifyFormOpensInEditModeAfterCheckingHideFromDropdownCheckBoxForAllFormsIsCheckedForSPIUser
  Scenario:validate that form opens in edit mode if hide from dropdown checkbox for all forms is checked for SPI user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:0 |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:1 |
      | Forms                 | Hide From Dropdown | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Forms:General         | Hide From Dropdown | true          | General Application Cover Page  |                           |                            |
      | Forms:General         | Hide From Dropdown | true          | General Application Budget Form |                           |                            |
      | Forms:General         | Hide From Dropdown | true          | General Application Form        |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly do not see dropdown with selected value as "General Application Cover Page" at form layout
    Then I softly do not see dropdown with selected value as "General Application Budget Form" at form layout
    Then I softly do not see dropdown with selected value as "General Application Form" at form layout

  @135993 @verifyThatByClickOnViewActionAtBusinessFormsItShouldGetOpensInNewTab-gApplications
  Scenario:validate business form is getting opens in new tab by click on view action on it
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I see new tab is opened

  @135994 @verifyHelpTextIsDisplayedByClickOnViewActionAtBusinessForms-gApplications @skipOnJenkins
  Scenario:validate help text at page block is displayed at business form by click on view action on it
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I hovering mouse on help text icon inside "APPLICANTS ORGANIZATION INFORMATION"
    Then I see "This section displays the information about applicants organization details." shown as help text

  @135995 @verifyThatByClickOnViewActionAtBusinessFormsOnlyPageBlockTitlesShouldDisplayWithTheBlockDetails-gApplications
  Scenario:validate at business form View, page block titles should display with the block details fields
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I softly see "PROJECT INFORMATION" page block displayed
    Then I softly see field "Demo_Title" inside page block
    Then I softly see field "AP-755-213" inside page block

  @135996 @verifyThatByClickOnViewActionAtBusinessFormsBothTheStaticAndDynamicTextDisplayed-gApplications
  Scenario:validate at business form view,both the static and dynamic text displayed
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I see the text :
      | I hereby certify that the information provided above is accurate and complete. |
      | Acknowledgement:                                                               |
      | Bob Samuela                                                                    |

  @135997 @verifyThatByClickOnViewActionAtBusinessFormsThenTableWithAllRecordsDisplayed-gApplications
  Scenario:validate at business form view,table with records displayed
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Budget Form" program in flex table
    Then I softly see value "ASA-1327" for title "Name" inside table "inlineEditGridApplicationBudgetCategoriesbyBudgetPeriodForm"
    Then I softly see "Budget Details" page block displayed

  @135998 @verifyThatByClickOnViewActionAtBusinessFormsCancelAndSaveAcionsNotDisplayedBytEditAndBackDisplayed-gApplications1
  Scenario:validate at business form view cancel, save actions are not displayed but back and edit displayed at form layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I softly do not see "Cancel" button is displayed
    Then I softly see "Edit" button is displayed
    Then I softly do not see "Save" button is displayed
    Then I softly see "Back" button is displayed

  @146019 @verifyThatSaveButtonIsDisplayedAndFormEditLayoutAtTopAndBottom-gApplications
  Scenario:validate single Save button is displayed on Form Edit layout at Header & Footer
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    Then I softly see "Save" button at "Top" of  Modal window
    Then I softly see "Save" button at "Bottom" of  Modal window

  @148221 @verifyFormDropdownIsHiddenInEditModeIfHideFromDropdownCheckBoxIsCheckedForAdminUser
  Scenario:validate that form dropdown is hidden in edit mode if custom setting checkbox is checked for admin user
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | true         | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | true         | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Cover Page" inside flex table with id "FormEnhancedTable"
    Then I softly do not see dropdown with selected value as "General Application Cover Page" at form layout

  @148222 @verifyFormDropdownIsHiddenInEditModeIfHideFromDropdownCheckBoxIsCheckedForSPIUser
  Scenario:validate that form dropdown is hidden in edit mode if custom setting checkbox is checked for SPI user
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | true         | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | true         | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Cover Page" inside flex table with id "FormEnhancedTable"
    Then I softly do not see dropdown with selected value as "General Application Cover Page" at form layout

  @149711 @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClickOnBrowserBackButtonWithUnsavedDataAtForms
  Scenario:validate that users should be warned when they click on browser back button with unsaved data at forms
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    And I enter value "test123" into field "SimpleQuestion1__c"
    And I click on back arrow
    And I pause execution for "4" seconds
    Then I see alert popup box

  @149711 @verifyThatAlertPopUpShouldDisplayWhenUserClickOnBrowserBackButtonWithUnsavedDataAtBusinessForms
  Scenario:validate that users should be warned when they click on browser back button with unsaved data at business forms
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    And I enter value "test123" into field "SimpleQuestion1__c"
    And I click on back arrow
    And I pause execution for "4" seconds
    Then I see alert popup box

  @149714 @verifyThatUnsavedDataAtFormsCanBeSavedSuccessfullyByClickAtSaveButton
  Scenario:validate that unsaved data can be saved by click on form's Save Button
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    And I enter value "Test" into field "fieldAcknowledgment2__c"
    When I click on "Save" button in right header
    And I pause execution for "3" seconds
    Then I see for "Acknowledgment2" field value is "Test" inside dynamic form

  @149712 @verifyThatConfirmationMessageInPopUpShouldDisplayWhenUserClickOnBrowserRefreshWithUnsavedDataAtForms
  Scenario:validate that users should be warned when they click on browser refresh button with unsaved data at forms
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    And I enter value "test123" into field "SimpleQuestion1__c"
    And I refresh the page
    And I pause execution for "4" seconds
    Then I see alert popup box

  @148989 @verifyThatUnsavedDataAlertMessageDisplayedOnBrowserRefreshShouldGetDisappearedByClickAtCancelButtonAtForms
  Scenario:validate that alert msg  displayed on browser refresh for unsaved data is disappeared by click at Cancel button at forms
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    And I enter value "test123" into field "SimpleQuestion1__c"
    And I refresh the page
    And I pause execution for "4" seconds
    Then I see alert popup box
    When I click alert button "Cancel"
    Then I do not see alert popup box

  @146714 @verifyThatUnsavedDataAlertMessageDisplayedOnBrowserBackShouldGetDisappearedByClickAtCancelButtonAtForms
  Scenario:validate that alert msg displayed on browser back for unsaved data is disappeared by click at Cancel button at forms
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    And I enter value "test123" into field "SimpleQuestion1__c"
    And I click on back arrow
    And I pause execution for "4" seconds
    Then I see alert popup box
    When I click alert button "Cancel"
    Then I do not see alert popup box

  @149110 @verifyThatAlertPopUpShouldDisplayWhenUserClickOnBrowserBackButtonWithUnsavedDataAtAllForms
  Scenario:validate that users should be warned when they click on browser back button with unsaved data at ALL forms
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    And I enter value "test123" into field "SimpleQuestion1__c"
    And I click on back arrow
    And I pause execution for "4" seconds
    Then I see alert popup box

  @146713 @verifyThatAlertPopUpShouldDisplayWhenUserClickOnBrowserRefreshButtonWithUnsavedDataAtAllForms
  Scenario:validate that users should be warned when they click on browser refresh button with unsaved data at ALL forms
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form" inside flex table with id "FormEnhancedTable"
    And I enter value "test123" into field "SimpleQuestion1__c"
    And I refresh the page
    And I pause execution for "4" seconds
    Then I see alert popup box

  @191191 @sprint1 @userstory_184403
  Scenario:To verify, if the user views a Form in an Application record and then refreshes the page, the same correct phase should be highlighted
    When I login as "AUTOMATION-ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    And I click on "View" icon for "General Application Budget Form" inside flex table with id "---program:-:programTableDivId---"
    And I refresh the page
    Then I see "Applications" tab is highlighted for particular program

  @191193 @sprint1 @userstory_184403
  Scenario: To verify, if the user edits a Form in an Application record, the same correct phase should be highlighted
    When I login as "AUTOMATION-ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    And I click on "Edit" icon for "General Application Cover Page" inside flex table with id "---program:-:programTableDivId---"
    Then I see "Applications" tab is highlighted for particular program

  @191198 @sprint1  @userstory_184403
  Scenario: To verify, if the user views a Form in an Application record(Edit layout) and then refreshes the page, the same correct phase should be highlighted
    When I login as "AUTOMATION-ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    And I click on "Edit" icon for "General Application Cover Page" inside flex table with id "---program:-:programTableDivId---"
    And I refresh the page
    Then I see "Applications" tab is highlighted for particular program

  @191188 @sprint1  @userstory_184403
  Scenario:  To verify, if the user views a Form in an Application record, the same correct phase should be highlighted
    When I login as "AUTOMATION-ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    And I click on "View" icon for "General Application Budget Form" inside flex table with id "---program:-:programTableDivId---"
    Then I see "Applications" tab is highlighted for particular program

  @151586 @verifyThatPageIsNotRefreshedAfterClickAtCancelButtonAtConfirmationPop-UpAppearsOnFormLayoutForUnsavedData
  Scenario:validate that page is no refreshing by performing Cancel action at confirmation pop-up appears on form layout for unsaved data
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    And I click on "Edit" icon for "General Application Cover Page" inside flex table with id "---program:-:programTableDivId---"
    And I enter value "test data" into field "fieldSubject__c"
    When I select "General Application Form" from dropdown at forms
    When I click alert button "Cancel"
    Then I see "test data" text enter in field "fieldSubject__c"

  @148228 @verifyFormOpensInEditModeEvenIfHideFromDropdownCheckBoxIsCheckedForAdminUserForFirefox @firefox
  Scenario:validate that form opens in edit mode even if hide from dropdown checkbox is checked for admin user on firefox
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly see dropdown with selected value as "General Application Budget Form" at form layout

  @148227 @verifyFormOpensInViewModeEvenIfHideFromDropdownCheckBoxIsCheckedForAdminUserForFirefox @firefox
  Scenario:validate that form opens in view mode even if hide from dropdown checkbox is checked for admin user on firefox
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I softly see dropdown with selected value as "General Application Budget Form" at form layout

  @174502 @OldForms-ToverifythatinFormEditmode,theDynamicFormTitlesshouldnotbeconfigured @sprint20
  Scenario:  Old Forms - To verify that in Form Edit mode, the Dynamic Form Titles should not be configured
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordviewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordviewAction}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I see the header is "Application Cover Page 12" in the page details

  @174499 @OldForms-ToverifythatinViewmodeofForm,theDynamicFormTitlesshouldnotbeconfigurable @sprint20
  Scenario: Old Forms - To verify that in View mode of Form, the Dynamic Form Titles should not be configurable
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordviewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordviewAction}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I see the header is "Application Cover Page 12" in the page details

  @174501 @OldForms-ToverifythatinPreviewmodeofForm,theDynamicFormTitlesshouldbeconfigured
  Scenario: Old Forms - To verify that in preview mode of Form, the Dynamic Form Titles should not be configurable
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "{Framework_recordUsed:ApplicationStaticRecordviewAction}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationStaticRecordviewAction}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Preview" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I see the header is "test old form - Preview" in the page details

  @191194 @sprint1
  Scenario: To verify, if the user edits a Form in an Application record and then refreshes the page, the same correct phase should be highlighte
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon for "General Application Budget Form	" inside flex table with id "FormEnhancedTable"
    Then I see "Applications" tab is highlighted for particular program

  @191197 @sprint1
  Scenario: To verify, if the user in an Application record and edit a Form and change the from name from dropdown then  the same correct phase should be highlighted
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Budget Form	" inside flex table with id "FormEnhancedTable"
    Then I see "Applications" tab is highlighted for particular program

  @191371 @sprint1
  Scenario: To verify, if the user in an Application record and edit the form and change the from name from dropdown and save the form then  the same correct phase should be highlighted
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Form	" inside flex table with id "FormEnhancedTable"
    Then I see "Applications" tab is highlighted for particular program

  @191381 @sprint1
  Scenario:  To verify, if the user in an Application record and edit the form and change the from name from dropdown and save the form then  the same correct phase should be highlighte
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "General Application Cover Page	" inside flex table with id "FormEnhancedTable"
    Then I see "Applications" tab is highlighted for particular program