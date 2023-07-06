@stepprogressbar-component @regression-test5
Business Need: Step Progress Bar Component Scenarios
  Test all step progress bar component based scenarios
  As a configuration manager i make different configurational changes in step progress bar component and will validate them.

  @34347    @disablingRenderingOfProgressBarForCustomApp-gPlanning @smoke
  Scenario Outline: validate after disabling of progress bar for grantor planning and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName              | fieldOrignalValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for Application | <defaultcustomApp> | PB-0108            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for Application |               | PB-0108            |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    And I click on back arrow
    Then I do not see step progress bar is displayed

    Examples:
      | defaultcustomApp |
      | Grantor          |

  @34348    @disablingRenderingOfProgressBarForUser-gPlanning
  Scenario Outline: validate after disabling of progress bar for internal user and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for User | <defaultuser>     | PB-0108            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for User |               | PB-0108            |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    And I click on back arrow
    Then I do not see step progress bar is displayed

    Examples:
      | defaultuser |
      | Internal    |

  @34349    @disablingRenderingOfParticularStatusProgressBarForUser-gPlanning @smoke
  Scenario Outline: validate after disabling of submit for approval status from progress bar for internal user and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName      | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | Hide For Users |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName      | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | Hide For Users | <changedUser> | Program Progress Bar | Name                      | Submitted for Approval     |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    And I click on back arrow
    Then I see "Submitted for Approval" is not displayed inside step progress bar

    Examples:
      | changedUser |
      | Internal    |

  @34350    @sequenceChangeOfStatusStepInsideStepProgressBar-gPlanning @smoke
  Scenario: validate after changin sequence of submit for approval status to zero and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | Sequence  | 2                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | Sequence  | 0             | Program Progress Bar | Name                      | Submitted for Approval     |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    Then I see "Submitted for Approval" status shown at number "0" in step progress bar

  @34351    @colorFieldOfStepProgressBar-gPlanning @smoke
  Scenario: validate after changing color of created status to different and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName      | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Complete Color | #3ba10b           | PB-0108            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Complete Color | #0b0ba0       | PB-0108            |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I pause execution for "60" seconds
    Then I see status in Progress-bar is "Created" and is "Blue"

  @34593    @negativeFieldOfStepProgressBar-gPlanning @smoke
  Scenario: validate after enabling negative field for submit for approval step progress bar and validating its appearence on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName     | fieldOrignalValue | filterId         |
      | Step Progressbar Detail                | Negative Path | false             | ApiGeneratedId:1 |
      | Step Progressbar Header Config:General | Reject Color  | #E60000           | PB-0108          |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField                                         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                                | Status        | Created       | Test program for automation -  SA mode only - Not approved |                           |                            |
      | Step Progressbar Detail                | Negative Path | true          | Program Progress Bar                                       | Name                      | Submitted for Approval     |
      | Step Progressbar Header Config:General | Reject Color  | #E60000       | PB-0108                                                    |                           |                            |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    When I click on "Submit For Approval" in the page details
    Then I see status in Progress-bar is "Submitted for Approval" and is "Red"

  @37316    @rejectColorFieldAtStepProgressBar-gPlanning
  Scenario: validate after changing color of rejected status to different color and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName    | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Reject Color | #E60000           | PB-0108            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Reject Color | #0b0ba0       | PB-0108            |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Rejected"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    Then I see status in Progress-bar is "Rejected" and is "Blue"

  @37318    @incompleteColorFieldAtStepProgressBar-gPlanning
  Scenario: validate after changing color of rejected status to different color and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName        | fieldOrignalValue | coreComponentField |
      | Step Progressbar Header Config:General | Incomplete Color | #a0a0a0           | PB-0108            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Incomplete Color | #0b0ba0       | PB-0108            |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    Then I see status in Progress-bar is "Submitted for Approval" and is "Green"

  @37324    @displayValueFieldAtStepProgressBAr-gPlanning
  Scenario: validate after changing display value of created disabling of submit for approval status from progress bar for internal user and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName     | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | Display Value | Created           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName     | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | Display Value | Automation    | Program Progress Bar | Name                      | Created                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    Then I see changed display name as "ADMIN" inside step progress bar

  @37328    @isCreatedFieldAtStepProgressBar-gPlanning
  Scenario: validate hover text of submit for approval status from progress bar for internal user and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | IsCreated | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField                                         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                 | Status    | Created       | Test program for automation -  SA mode only - Not approved |                           |                            |
      | Step Progressbar Detail | IsCreated | true          | Program Progress Bar                                       | Name                      | Submitted for Approval     |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I hovering mouse on Status inside step progress bar "Submitted for Approval"
    Then I see "By : Nauman Shahid" shown as help text
    Then I see "Date : 11/27/2018 1:15 AM" shown as help text

  @151271    @validateStepProgressBarIsDisplayedAtPageLayoutForAdminUser
  Scenario: validate step progress bar is displayed at page layout for admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    Then I see step progress bar is displayed

  @151276  @validateExpressionJSONAtStepProgressBarDetailConfigOnStandardObjectorUserTypeOperator
  Scenario: validate Hide expression JSON on step progress bar detail config for standard object using user type operator
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName            | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | HIDE EXPRESSION JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName            | fieldNewValue                                                         | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | HIDE EXPRESSION JSON | govgrants_config:HideStepProgressBarDetailsUsingUserTypeOnStandardObj | Account Progress Bar | Name                      | Level 1                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    Then I see "Level 1" is not displayed inside step progress bar

  @151278  @validateExpressionJSONAtStepProgressBarDetailConfigOnStandardObjectorProfileOperator
  Scenario: validate Hide expression JSON on step progress bar detail config for standard object using profile operator
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName            | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | HIDE EXPRESSION JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName            | fieldNewValue                                                        | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | HIDE EXPRESSION JSON | govgrants_config:HideStepProgressBarDetailsUsingProfileOnStandardObj | Account Progress Bar | Name                      | Level 1                    |
   When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    Then I see "Level 1" is not displayed inside step progress bar

  @151280  @validateExpressionJSONAtStepProgressBarDetailConfigOnStandardObjectUsingContextOperator
  Scenario: validate Hide expression JSON on step progress bar detail config for standard object using context=view operator
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName            | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | HIDE EXPRESSION JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName            | fieldNewValue                                                              | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | HIDE EXPRESSION JSON | govgrants_config:HideStepProgressBarDetailsUsingContextAsViewOnStandardObj | Account Progress Bar | Name                      | Level 1                    |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    Then I see "Level 1" is not displayed inside step progress bar

  @151281  @validateExpressionJSONAtStepProgressBarDetailConfigOnStandardObjectUsingUserAppOperator
  Scenario: validate Hide expression JSON on step progress bar detail config for standard object using user app operator
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName            | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | HIDE EXPRESSION JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName            | fieldNewValue                                                              | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | HIDE EXPRESSION JSON | govgrants_config:HideStepProgressBarDetailsUsingUserAppAsViewOnStandardObj | Account Progress Bar | Name                      | Level 1                    |
   When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    Then I see "Level 1" is not displayed inside step progress bar

  @151284  @validateExpressionJSONAtStepProgressBarDetailConfigOnStandardObjectUsing$UserOperator
  Scenario: validate Hide expression JSON on step progress bar detail config for standard object using $user operator
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName            | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | HIDE EXPRESSION JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName            | fieldNewValue                                                            | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | HIDE EXPRESSION JSON | govgrants_config:HideStepProgressBarDetailsUsing$UserAsViewOnStandardObj | Account Progress Bar | Name                      | Level 1                    |
   When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    Then I see "Level 1" is not displayed inside step progress bar

  @151287  @validateExpressionJSONAtStepProgressBarDetailConfigOnStandardObjectUsingFieldOperator
  Scenario: validate Hide expression JSON on step progress bar detail config for standard object using Field operator
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName            | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | HIDE EXPRESSION JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName            | fieldNewValue                                                             | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | HIDE EXPRESSION JSON | govgrants_config:HideStepProgressBarDetailsUsingFieldsAsViewOnStandardObj | Account Progress Bar | Name                      | Level 1                    |
   When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    Then I see "Level 1" is not displayed inside step progress bar

  @151290  @validateExpressionJSONAtStepProgressBarDetailConfigOnStandardObjectUsingFieldAndProfileOperator
  Scenario: validate Hide expression JSON on step progress bar detail config for standard object using Field and profile operator
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName            | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | HIDE EXPRESSION JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName            | fieldNewValue                                                                       | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | HIDE EXPRESSION JSON | govgrants_config:HideStepProgressBarDetailsUsingFieldsAndProfileAsViewOnStandardObj | Account Progress Bar | Name                      | Level 1                    |
   When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    Then I see "Level 1" is not displayed inside step progress bar

  @151291  @validateExpressionJSONAtStepProgressBarDetailConfigOnStandardObjectUsingUserAndProfileOperator
  Scenario: validate Hide expression JSON on step progress bar detail config for standard object using user and profile operator
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName            | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | HIDE EXPRESSION JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName            | fieldNewValue                                                                     | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | HIDE EXPRESSION JSON | govgrants_config:HideStepProgressBarDetailsUsingUserAndProfileAsViewOnStandardObj | Account Progress Bar | Name                      | Level 1                    |
   When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    Then I see "Level 1" is not displayed inside step progress bar

  @151293  @validateExpressionJSONAtStepProgressBarDetailConfigOnStandardObjectUsingProfileWithOROperator
  Scenario: validate Hide expression JSON on step progress bar detail config for standard object using profile with OR operator
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName            | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | HIDE EXPRESSION JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName            | fieldNewValue                                                                      | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | HIDE EXPRESSION JSON | govgrants_config:HideStepProgressBarDetailsUsingProfileWithOROperatorOnStandardObj | Account Progress Bar | Name                      | Level 1                    |
   When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    Then I see "Level 1" is not displayed inside step progress bar

  @151294  @validateExpressionJSONAtStepProgressBarDetailConfigOnStandardObjectUsingFieldProfileAndUserTypeWithOROperator
  Scenario: validate Hide expression JSON on step progress bar detail config for standard object using field,profile and user type with OR operator
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName            | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | HIDE EXPRESSION JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName            | fieldNewValue                                                                                      | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | HIDE EXPRESSION JSON | govgrants_config:HideStepProgressBarDetailsUsingFieldProfileAndUserTypeWithOROperatorOnStandardObj | Account Progress Bar | Name                      | Level 1                    |
   When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    When I navigate to "Internal Organization(s)" content inside "Organizations" subheader on left panel
    When I click on "View" icon for "Secretary of Health" inside table
    Then I see "Level 1" is not displayed inside step progress bar