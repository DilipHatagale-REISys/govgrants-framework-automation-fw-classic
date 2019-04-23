@stepprogressbar-component @regression
Feature: Step Progress Bar Component Scenarios
  Test all step progress bar component based scenarios
  As a configuration manager i make different configurational changes in step progress bar component and will validate them.

  @34347    @disablingRenderingOfProgressBarForCustomApp-gPlanning @smoke
  Scenario Outline: validate after disabling of progress bar for grantor planning and validating it on program detail page-programs
    Given I have default configuration as below:
      | configurationCategory                  | fieldName              | fieldOrignalValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for Application | <defaultcustomApp> | PB-0016            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for Application |               | PB-0016            |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see step progress bar is not displayed

    Examples:
      | defaultcustomApp |
      | Grantor          |

  @34348    @disablingRenderingOfProgressBarForUser-gPlanning
  Scenario Outline: validate after disabling of progress bar for internal user and validating it on program detail page-programs
    Given I have default configuration as below:
      | configurationCategory                  | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for User | <defaultuser>     | PB-0016            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for User |               | PB-0016            |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see step progress bar is not displayed

    Examples:
      | defaultuser |
      | Internal    |

  @34349    @disablingRenderingOfParticularStatusProgressBarForUser-gPlanning @smoke
  Scenario Outline: validate after disabling of submit for approval status from progress bar for internal user and validating it on program detail page-programs
    Given I have default configuration as below:
      | configurationCategory   | fieldName      | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | Hide For Users |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName      | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | Hide For Users | <changedUser> | Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar

    Examples:
      | changedUser |
      | Internal    |

  @34350    @sequenceChangeOfStatusStepInsideStepProgressBar-gPlanning @smoke
  Scenario: validate after changin sequence of submit for approval status to zero and validating it on program detail page-programs
    Given I have default configuration as below:
      | configurationCategory   | fieldName | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | Sequence  | 2                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | Sequence  | 0             | Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" status shown at number "0" in step progress bar

  @34351    @colorFieldOfStepProgressBar-gPlanning @smoke
  Scenario: validate after changing color of created status to different and validating it on program detail page-programs
    Given I have default configuration as below:
      | configurationCategory                  | fieldName      | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Complete Color | #3ba10b           | PB-0016            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Complete Color | #0b0ba0       | PB-0016            |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see status in Progress-bar is "Created" and is "Blue"

  @34593    @negativeFieldOfStepProgressBar-gPlanning @smoke
  Scenario: validate after enabling negative field for submit for approval step progress bar and validating its appearence on program detail page-programs
    Given I have default configuration as below:
      | configurationCategory   | fieldName     | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | Negative Path | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName     | fieldNewValue | coreComponentField                                         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                 | Status        | Created       | Test program for automation -  SA mode only - Not approved |                           |                            |
      | Step Progressbar Detail | Negative Path | true          | Program Progress Bar                                       | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    Then I see status in Progress-bar is "Submitted for Approval" and is "Red"

  @37316    @rejectColorFieldAtStepProgressBar-gPlanning
  Scenario: validate after changing color of rejected status to different color and validating it on program detail page-programs
    Given I have default configuration as below:
      | configurationCategory                  | fieldName    | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Reject Color | #E60000           | PB-0016            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Reject Color | #0b0ba0       | PB-0016            |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I select "Rejected Programs" from double headed dropdown inside admin portal
    When I perform quick search for "Test Program For Automation Reject"
    When I click on "View Program Details" icon for "Test Program For Automation Reject" inside table
    Then I see status in Progress-bar is "Rejected" and is "Blue"

  @37318    @incompleteColorFieldAtStepProgressBar-gPlanning
  Scenario: validate after changing color of rejected status to different color and validating it on program detail page-programs
    Given I have default configuration as below:
      | configurationCategory                  | fieldName        | fieldOrignalValue | coreComponentField |
      | Step Progressbar Header Config:General | Incomplete Color | #a0a0a0           | PB-0016            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Incomplete Color | #0b0ba0       | PB-0016            |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I select "Draft Programs" from double headed dropdown inside admin portal
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see status in Progress-bar is "Submitted for Approval" and is "Blue"

  @37324    @displayValueFieldAtStepProgressBAr-gPlanning
  Scenario: validate after changing display value of created disabling of submit for approval status from progress bar for internal user and validating it on program detail page-programs
    Given I have default configuration as below:
      | configurationCategory   | fieldName     | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | Display Value | Created           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName     | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | Display Value | Automation    | Program Progress Bar | Name                      | Created                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see changed display name as "Automation" inside step progress bar

  @37328    @isCreatedFieldAtStepProgressBar-gPlanning
  Scenario Outline: validate hover text of submit for approval status from progress bar for internal user and validating it on program detail page-programs
    Given I have default configuration as below:
      | configurationCategory   | fieldName | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | IsCreated | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField                                         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Program                 | Status    | Created       | Test program for automation -  SA mode only - Not approved |                           |                            |
      | Step Progressbar Detail | IsCreated | true          | Program Progress Bar                                       | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I hovering mouse on Status inside step progress bar "Submitted for Approval"
    Then I see "<textInsideStatus>" shown as help text

    Examples:
      | textInsideStatus   |
      | By : Nauman Shahid |