@StepProgressBar-component @regression-QA
Business Need: Step Progress Bar Component Scenarios
  Test all step progress bar component based scenarios
  As a configuration manager i make different configurational changes in step progress bar component and will validate them.

  @37328 @382833 @201810 @201811 @Sanity  @SanityStepProgressBar
  Scenario: validate hover text of submit for approval status from progress bar for internal user and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | IsCreated | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      #| Program                 | Status    | Created       | Test program for automation -  SA mode only - Not approved |                           |                            |
      | Step Progressbar Detail | IsCreated | false         | Program Progress Bar | Name                      | Submitted for Approval     |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Created By" as "OWNER"
    And I save the field labeled "Created Date" as "DATE"
    #201810 #201811
    Then I see "By : {SavedValue:OWNER}" shown as help text
    Then I see "Date : {SavedValue:DATE}" shown as help text
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "15" seconds
    And I click on "Submit For Approval" in the page details
    When I hovering mouse on Status inside step progress bar "Submitted for Approval"
    And I pause execution for "5" seconds
    Then I see "{SavedValue:OWNER}" shown as help text
    Then I see "{SavedValue:DATE}" shown as help text

  @34347    @disablingRenderingOfProgressBarForCustomApp-gPlanning @oldsmoke
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
      | configurationCategory                  | fieldName              | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for Application | <defaultuser>     | PB-0108            |                           |                            |
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
      | defaultuser |
      | Internal    |

  @34349    @disablingRenderingOfParticularStatusProgressBarForUser-gPlanning @oldsmoke
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

  @34350    @sequenceChangeOfStatusStepInsideStepProgressBar-gPlanning @oldsmoke
  Scenario: validate after changin sequence of submit for approval status to zero and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | Sequence  | 2                 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | Sequence  | 0             | Program Progress Bar | Name                      | Submitted for Approval     |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
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

  @34351    @colorFieldOfStepProgressBar-gPlanning @oldsmoke
  Scenario: validate after changing color of created status to different and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName      | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Complete Color | #3ba10b           | PB-0093            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Complete Color | #0b0ba0       | PB-0093            |                           |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    Then I see status in Progress-bar is "Created" and is "Blue"

  @34593    @negativeFieldOfStepProgressBar-gPlanning @oldsmoke
  Scenario: validate after enabling negative field for submit for approval step progress bar and validating its appearence on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName     | fieldOrignalValue | filterId |
      | Step Progressbar Detail Detail         | Negative Path | false             | PB-0108  |
      | Step Progressbar Header Config:General | Reject Color  | #E60000           | PB-0108  |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail Detail         | Negative Path | true          | Program Progress Bar | Name                      | Submitted for Approval     |
      | Step Progressbar Header Config:General | Reject Color  | #E60000       | PB-0108              |                           |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
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
    When I click on "Submit For Approval" in the page details
    Then I see status in Progress-bar is "Submitted for Approval" and is "Red"

  @37316    @rejectColorFieldAtStepProgressBar-gPlanning
  Scenario: validate after changing color of rejected status to different color and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName    | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Reject Color | #E60000           | PB-0093            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Reject Color | #0b0ba0       | PB-0093            |                           |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
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
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "default" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table
    When I select radio button "Reject" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see status in Progress-bar is "Rejected" and is "Blue"

  @37318    @incompleteColorFieldAtStepProgressBar-gPlanning
  Scenario: validate after changing color of rejected status to different color and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName    | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Reject Color | #E60000           | PB-0093            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Reject Color | #0b0ba0       | PB-0093            |                           |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
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
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "default" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table
    When I select radio button "Reject" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see status in Progress-bar is "Rejected" and is "Blue"

  @37324    @displayValueFieldAtStepProgressBAr-gPlanning
  Scenario: validate after changing display value of created disabling of submit for approval status from progress bar for internal user and validating it on program detail page-programs
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName     | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | Display Value | Created           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName     | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | Display Value | Automation    | Program Progress Bar | Name                      | Created                    |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Created state change Automation"
    When I click on "View" icon for "Created state change Automation" inside table
    Then I see changed display name as "Automation" inside step progress bar

  @151271    @validateStepProgressBarIsDisplayedAtPageLayoutForAdminUser
  Scenario: validate step progress bar is displayed at page layout for admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    When I perform quick search for "Automation Program For Test"
    And I click on "View" icon for "Automation Program For Test" inside table
    Then I see step progress bar is displayed

  @201457 @201458 @382797 @382798 @Sanity  @SanityStepProgressBar
  Scenario Outline: Steps- Admin- Config- Verify all steps displaying in correct sequence under ‘Step Progress bar’ on UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Home" tab
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    When I perform quick search for "Automation Program For Test"
    And I click on "View" icon for "Automation Program For Test" inside table
    Then I see "Created" step is on step progress bar at "0" position
    Then I see "Submitted for Approval" step is diplayed on step progress bar
    Then I see "Approved" step is diplayed on step progress bar
    Then I see "Active" step is diplayed on step progress bar
    Then I see "Closed" step is diplayed on step progress bar

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @201813 @201814 @382714 @382716 @382832 @Sanity  @SanityStepProgressBar
  Scenario Outline: IsCreated- Admin- Config- Verify Admin can configure ‘IsCreated’ support for the step progress bar and  can view the last updated date, time and user name
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | IsCreated | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | IsCreated | true          | Program Progress Bar | Name                      | Created                    |
    Given I delete the record "Automation Internal Announcement for Testing" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
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
    And I save the field labeled "Created By" as "OWNER"
    And I save the field labeled "Project Period Start Date" as "DATE"
    When I hovering mouse on Status inside step progress bar "Created"
    And I pause execution for "5" seconds
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
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    #201813 #201814
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    #201813 #201814
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I click on "Activate" in the page details
    And I pause execution for "3" seconds
    #382814 #382716
    Then I softly see status in Progress-bar is "Active" and is "Green"

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @201459 @382795 @382799 @Sanity  @SanityStepProgressBar
  Scenario: Steps- SPI- UI- Verify all steps displaying in correct sequence under ‘Step Progress bar’ on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    Then I see "Created" step is on step progress bar at "0" position
    Then I see "Submitted" step is diplayed on step progress bar
    Then I see "Converted to Award" step is diplayed on step progress bar

  @201812 @382834 @Sanity  @SanityStepProgressBar
  Scenario: IsCreated- SPI- UI- Verify user can view the last updated date, time and user name
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName | fieldOrignalValue | filterId         |
      | Step Progressbar Detail | IsCreated | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName | fieldNewValue | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail | IsCreated | true          | External Application Progress Bar | Name                      | Created                    |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    And I save the field labeled "Created By" as "CREATEDBY"
    And I save the field labeled "Created Date" as "CREATEDDATE"
    When I hovering mouse on Status inside step progress bar "Created"
    And I pause execution for "5" seconds
    Then I see "{SavedValue:CREATEDBY}" shown as help text
    Then I see "{SavedValue:CREATEDDATE}" shown as help text

  @201815
  Scenario:

  ################# Step Progress Bar ######################
  @201445 @201446 @201454 @201455 @382794 @Sanity  @SanityStepProgressBar
  Scenario Outline: Decision field -Admin -config- Verify Step progress bar should display the step with respect to status
  Color Code Settings - PM- UI- Verify progress bar should should follow given color codes
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
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
    #201454 #201455
    Then I softly see status in Progress-bar is "Created" and is "Green"
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
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted for Approval" and is "Green"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I navigate to "History" sub tab
    When I re-login to "As a Grantor" app as "PM" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "View" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I click on "Activate" in the page details
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Active" and is "Green"
    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @201438 @382792 @Sanity  @SanityStepProgressBar
  Scenario Outline: Steps Progress Bar- Admin -config- Verify admin can configure Step Progress Bar
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName              | fieldOrignalValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for Application | <defaultcustomApp> | PB-0108            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName              | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for Application | <defaultcustomApp> | PB-0108            |                           |                            |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    Then I see step progress bar is displayed

    Examples:
      | defaultcustomApp |
      | Grantor          |

  @201449 @201448 @doubtedonUI
  Scenario Outline:Render Config- PM- UI- Verify progress bar should not be visible for non selected application (eg. Grantee, Grantor, Recipient)
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName              | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for Application | <defaultuser>     | PB-0108            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for Application |               | PB-0108            |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    Then I do not see step progress bar is displayed

    Examples:
      | User  | defaultuser |
      | ADMIN | Grantor     |
      | PM    | Grantor     |

  @201451 @201452 @doubtedonUI
  Scenario Outline: Render Config- Admin- Config- Verify progress bar should not be visible for non selected users (eg. Internal, External, Reviewer)
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for User | <defaultuser>     | PB-0108            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for User |               | PB-0108            |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    Then I do not see step progress bar is displayed

    Examples:
      | User  | defaultuser |
      | ADMIN | Internal    |
      | PM    | Internal    |

  @201439 @201440 @notcleared
  Scenario Outline: sObject Name -Admin – Config- Verify if we can find step progress bar under expected object type
    Given I have "default" configuration as below:
      | configurationCategory                  | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config:General | Render for User | <defaultuser>     | PB-0108            |                           |                            |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Header Config Sobject | Render for User |               | PB-0108            |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    And I click on back arrow
    Then I do not see step progress bar is displayed

    Examples:
      | User  | defaultuser |
      | ADMIN | Internal    |
      | PM    | Internal    |

  @201442 @201443 @notcleared
  Scenario Outline: Steps- Admin- Config- Verify all steps having same ‘Step Progress bar Header’ are getting displayed on UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "View" icon in flex table for first draft record
    And I click on back arrow
    Then I see step progress bar is displayed
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @382819 @382821 @Sanity  @SanityStepProgressBar
  Scenario Outline: Sanity -TC-Admin-To verify whether the display values colors are getting changed to red  with a cross mark if any  record is  rejected
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
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
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "default" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table
    When I select radio button "Reject" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see status in Progress-bar is "Rejected" and is "Red"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

    @382827 @382829 @Sanity  @SanityStepProgressBar
    Scenario Outline:Sanity-TC-Admin-To verify whether the step progress bar is getting back to its original display value if any record is sent back to its owner
      Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
      Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
      Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
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
      And I pause execution for "10" seconds
      And I click on "Submit For Approval" in the page details
      When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
      And I navigate to "Home" tab
      And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
      When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
      And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
      And I "Send back" in the approval decision
      And I refresh the page
      Then I see status in Progress-bar is "Created" and is "Green"

      Examples:
        | User  |
        | ADMIN |
        | PM    |

