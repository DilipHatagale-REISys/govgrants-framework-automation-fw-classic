@approvalprocess-PATCHcomponent @regression-PATCH @approvalProcess
Business Need: Approval Process Component Scenarios
  Test all approval process component based scenarios
  As a configuration manager i make different configurational changes in approval process component and will validate them.

   @ovi @34307  @383943 @383944 @381946 @383947 @381949 @381950 @changeApproveOptionSequence-Programs @SanityPATCH @SanityPATCHApprovalProcess
  Scenario Outline: Changing sequence of Approve option from configuration and validating its sequence in pending tasks approval decision
  Sanity TC_PM_To verify that Start action is visible for submitted for approval record, under Pending task table(381944)
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName             | fieldOrignalValue | filterId         |
      | Approval Decision Action | Sequence              | 1                 | ApiGeneratedId:1 |
      | Approval Decision Action | Action Label Override | Approve           | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName             | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Sequence              | 5             | ADAC-0156          |
      | Approval Decision Action:General | Action Label Override | Approve       | ADAC-0156          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    #Then I softly can see row level action button "Start" against "{SavedValue:PEGMSID}" in flex table with id "---program:-:HomePendingTasksTableId---"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table
    Then I see only the following ordered radio buttons in the approval decision :
      | Reject | Forward | Send back | Approve |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @34306    @labelChangeOfApprovalDecision-Programs
  Scenario: Changing label of approve radio button text from configuration and validating its changed label in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName             | fieldOrignalValue | filterId         |
      | Approval Decision Action | Action Label Override | Approve           | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName             | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Action Label Override | Approved      | ADAC-0156          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    Then I can see the radio button "Approve" in the approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName             | fieldOrignalValue | filterId         |
      | Approval Decision Action | Action Label Override | Approve           | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName             | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Action Label Override | Approve       | ADAC-0156          |

  @34309  @34314 @202383 @202386 @201946 @201948 @34308 @confirmationMessageBoxPopupForApproveApprovalDecisionAction-Programs
  Scenario Outline: Setup confirmation message inside confirmation message box from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Required    | true              | ApiGeneratedId:0 |
      | Approval Decision Action | Confirmation Title   |                   | ApiGeneratedId:1 |
      | Approval Decision Action | Confirmation Message |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                        | coreComponentField |
      | Approval Decision Action:General | Comments Required    | true                                 | ADAC-0156          |
      | Approval Decision Action:General | Confirmation Title   | Confirmation                         | ADAC-0156          |
      | Approval Decision Action:General | Confirmation Message | Do you want to approve this program? | ADAC-0156          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I can see the radio button "Approve" in the approval decision
    When I select radio button "Approve" in the approval decision
    And I submit the approval in the approval decision
    #34308
    Then I can see the message "Comments are Required." in the approval decision
    #201946
    Then I see comment box displayed as "Enter Your Comments"
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Do you want to approve this program?" is displayed

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @34310    @filterCriteriaForUserReassignForApprovalDecisionAction-Programs
  Scenario Outline: Entering filter criteria for user reassign using forward action from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName                         | fieldOrignalValue        | filterId         |
      | Approval Decision Action | Filter Criteria for User Reassign | <oldFilterCriteriaValue> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName                         | fieldNewValue            | coreComponentField |
      | Approval Decision Action:General | Filter Criteria for User Reassign | <newFilterCriteriaValue> | ADAC-0154          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I select radio button "Forward" in the approval decision
    Then I can see user "Automation PM" in the user lookup in the approval decision
    Examples:
      | oldFilterCriteriaValue                                               | newFilterCriteriaValue |
      | IsActive = true and Id != '{!User.Id}' and Profile.Name != 'Auditor' | Name='Automation PM'   |

  @34311 @wip @automationNotRequired @approverTaskNotCreatedPrograms-Programs
  Scenario: Change approver setting for not receiveing approve task in configuration and validate that pending approver task is not displayed
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName      | fieldOrignalValue  | filterId         |
      | Approval Process Steps Cache | Field API Name | ProgramApprover__c | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName      | fieldNewValue | coreComponentField |
      | Approval Process Steps Cache:General | Field API Name |               | Step1              |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    Then I see approval with subject as "{SavedValue:PEGMSID}" is not displayed

  @q1 @34313    @successEmailSentToProgramOwner-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for program approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName            | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Email Field API Name | OwnerID           | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName            | fieldNewValue | coreComponentField |
      | Approval Process Steps Cache:General | Email Field API Name | OwnerID       | Grantor_Program_V1 |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "FO" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I re-login to "As Administrator" app as "PM" user on "PATCH" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    Then I see email is generated with template "Program_Approved_Email_Template"

  @34317    @taskAssignmentNotificationForProgramSubmissionThroughMail-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for program submitted for approval
#    Given I have "default" configuration as below:
#      | configurationCategory   | fieldName                          | fieldOrignalValue | filterId         |
#      | Task Config:Task Action | Send Task Assignment Notification? | false             | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory   | fieldName                          | fieldNewValue | coreComponentField |
#      | Task Config:Task Action | Send Task Assignment Notification? | true          | Approve Program    |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "5" seconds
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 2  | Step 2       | Step 2 | Step 2 | Step 2                  | Step 2   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As Administrator" app as "PM" user on "PATCH" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    Then I see email is generated with template "TaskReminderTemplateMultiple"

  @34316    @completeOnViewForSendToOwnerTaskConfig-Programs
  Scenario: Setup complete on view checkbox to true from send to owner task configuration and validating it by owner user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Task Config           | Complete On View? | false             | ApiGeneratedId:0 |
      | Page Tabs Config      | Is Active         | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Task Config:Task Action             | Complete On View? | true          | Approve Program       |                           |                            |
      | Page Tabs Config:Page Layout Action | Is Active         | false         | Grantor State Program | Name                      | TAB-1724                   |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I "Send back" in the approval decision
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see approval with subject as "Program Sent To Owner" is not displayed

  @37348 @37506 @202418 @202420 @201939 @201941  @rejectConfirmationMessageFieldAtApprovalProcess-Programs
  Scenario: Setup confirmation message inside confirmation message box for reject from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | coreComponentField | filterId         |
      | Approval Decision Action | Confirmation Title   |                   | ADAC-0157          | ApiGeneratedId:0 |
      | Approval Decision Action | Confirmation Message |                   | ADAC-0157          | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                  | coreComponentField |
      | Approval Decision Action:General | Confirmation Title   | Confirmation                   | ADAC-0157          |
      | Approval Decision Action:General | Confirmation Message | Do you want to Reject Program? | ADAC-0157          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Reject" in the approval decision
    #201939 #201941
    Then I see comment box displayed as "Enter Your Comments"
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Do you want to Reject Program?" is displayed

  @37431 @37523 @41058 @202470 @202492 @381960 @SanityPATCH @SanityPATCHApprovalProcess
  Scenario Outline: Setup confirmation message inside confirmation message box for reassign from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Required    | true              | ApiGeneratedId:0 |
      | Approval Decision Action | Confirmation Title   |                   | ApiGeneratedId:1 |
      | Approval Decision Action | Confirmation Message |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                         | coreComponentField |
      | Approval Decision Action:General | Comments Required    | true                                  | ADAC-0154          |
      | Approval Decision Action:General | Confirmation Title   | Confirmation                          | ADAC-0154          |
      | Approval Decision Action:General | Confirmation Message | Do you want to reassign this program? | ADAC-0154          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I can see the radio button "Forward" in the approval decision
    When I select radio button "Forward" in the approval decision
    And I select user "Automation PM" in the approval decision
    And I submit the approval in the approval decision
    #41058
    Then I can see the message "Comments are Required." in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Do you want to reassign this program?" is displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @37539    @commentsFieldAPINameFieldForApproveAction-Programs
  Scenario: Setup comments as FederalProgramCFDA__c inside comments field API field using Approval decision action config from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName               | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Field API Name |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName               | fieldNewValue         | coreComponentField |
      | Approval Decision Action:General | Comments Field API Name | FederalProgramCFDA__c | ADAC-0156          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I "Approve" in the approval decision
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside table
    Then I see field "Automation Testing" inside page block

  @38847 @202448 @202451 @37433  @confirmationMessageBoxPopupForSendToOwnerApprovalDecisionAction-Programs
  Scenario Outline: Setup confirmation message inside confirmation message box for send back approval decision action using Approval Decision Action from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Confirmation Title   |                   | ApiGeneratedId:0 |
      | Approval Decision Action | Confirmation Message |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                          | coreComponentField |
      | Approval Decision Action:General | Confirmation Title   | Confirmation                           | ADAC-0155          |
      | Approval Decision Action:General | Confirmation Message | Do you want to send back this program? | ADAC-0155          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Send back" in the approval decision
    When I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Do you want to send back this program?" is displayed
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @37540    @viewPageProfileFieldForApprovalProcess-Programs @AutomationNotRequired @wip
  Scenario Outline: Changing user inside profile field inside task config from config validating it at program approval page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Task Config           | View Page Profiles | <oldProfiles>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName          | fieldNewValue | coreComponentField |
      | Task Config:Task Action | View Page Profiles | <newProfiles> | Approve Program    |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    Then I see approval with subject as "Automation Internal Program for Testing" is not displayed

    Examples:
      | oldProfiles                                                                                                         | newProfiles                                                                                                     |
      | ADT; CON; CTR; DA; DEV; EPOC; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND | ADT; CON; CTR; DA; DEV; EPOC; EXE; FD; FO; GA; GMO; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND |

  @37645   @BugId_163309 @wip
  Scenario: Verify Approve Email Template field for approve action
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName              | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Approve Email Template | false             | ApiGeneratedId:0 |
      | Page Tabs Config             | Is Active              | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName              | fieldNewValue                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Email Template Name    | Program Approved Email Template | Program Approved Email Template |                           |                            |
      | Approval Process Steps Cache:General | Approve Email Template | true                            | Program_Manager_Approver        |                           |                            |
      | Page Tabs Config:Page Layout Action  | Is Active              | false                           | Grantor State Program           | Name                      | TAB-1724                   |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I re-login to "As Administrator" app as "ADMIN" user on "default" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    And I pause execution for "10" seconds
    Then I see email is generated with template "Program_Rejected_Email_Template"

  @37646    @rejectEmailSentWithApproveTemplateToProgramOwner-Programs @BugId_163309 @wip
  Scenario: Setup email setting in configuration and validate that program owner receiving email for rejection with approve email template for program approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName             | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reject Email Template | ApiGeneratedId:0  | ApiGeneratedId:2 |
      | Page Tabs Config             | Is Active             | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName             | fieldNewValue                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Email Template Name   | Program Rejected Email Template | Program Rejected Email Template |                           |                            |
      | Approval Process Steps Cache:General | Reject Email Template | ApiGeneratedId:1                | Program_Manager_Approver        |                           |                            |
      | Page Tabs Config:Page Layout Action  | Is Active             | false                           | Grantor State Program           | Name                      | TAB-1724                   |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I "Reject" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    When I re-login to "As Administrator" app as "PM" user on "PATCH" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    Then I see email is generated with template "Program_Approved_Email_Template"

  @37656    @reassignedEmailSentWithApproveTemplateToProgramOwner-Programs @wip
  Scenario: Setup email setting in configuration and validate that program owner receiving email for reassign with approve email template for program approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                 | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reassigned Email Template |                   | ApiGeneratedId:1 |
      | Page Tabs Config             | Is Active                 | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Reassigned Email Template | true          | Step1                 | GNT__ApprovalDefinitionId__c | 04a4T000000PFvoQAG         |
      | Page Tabs Config:Page Layout Action  | Is Active                 | false         | Grantor State Program | Name                         | TAB-1724                   |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Forward" to user "Automation PM" in the approval decision
    When I re-login to "As Administrator" app as "PM" user on "default" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    Then I see email is generated with template "Program_Approved_Email_Template"

  @37666    @sendToOwnerEmailSentWithApproveTemplateToProgramOwner-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for reassign with approve email template for program approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                    | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Send To Owner Email Template | a0R3I000000Aqkh   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                       | fieldName                    | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:Email Template | Send To Owner Email Template | a0R3I000000Aqkh | a0R3I000000Aqkh    | GNT__ApprovalDefinitionId__c | 04a4T000000PFvoQAG         |
     # | Approval Process Steps Cache:General        | Send To Owner Email Template | Program Approver Sent Back | Step1                    |                           |                            |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I "Send back" in the approval decision
    When I re-login to "As Administrator" app as "ADMIN" user on "PATCH" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    Then I see email is generated with template "Program_Approved_Email_Template"

  @41059    @commentsFieldAPINameFieldForReassignAction-Programs
  Scenario: Setup comments as FederalProgramCFDA__c inside comments field API field using Approval decision action config from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName               | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Field API Name |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName               | fieldNewValue         | coreComponentField |
      | Approval Decision Action:General | Comments Field API Name | FederalProgramCFDA__c | ADAC-0154          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    And I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I "Forward" to user "Automation PM" in the approval decision
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside table
    Then I see field "Automation Testing" inside page block

  @41063    @hideApproveOptionFromHideExpressionJSONField-Programs  @wip
  Scenario: Hiding approve option from configuration and validating its content in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0156          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I cannot see the radio button "Approve" in the approval decision

  @41064    @hideDisapproveOptionFromHideExpressionJSONField-Programs
  Scenario: Hiding reject option from configuration and validating its content in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0157          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I cannot see the radio button "Reject" in the approval decision

  @41065    @hideReassignOptionFromHideExpressionJSONField-Programs
  Scenario: Hiding forward option from configuration and validating its content in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0154          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I cannot see the radio button "Forward" in the approval decision

  @41067    @hideSendToOwnerOptionFromHideExpressionJSONField-Programs
  Scenario: Hiding send back option from configuration and validating its content in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0155          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I cannot see the radio button "Send back" in the approval decision

  @41060    @validateCommentedTextInsideHistoryTabForReassignAction-Programs
  Scenario: Validating commented text inside history tab for reassign approval action at program detail page
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Forward" to user "Automation PM" in the approval decision
    And I pause execution for "8" seconds
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside table
    When I navigate to "History" sub tab
    Then I see "Automation testing" comment for user "Automation PM"

  @103154    @verifyApprovalDecisionActionComponentIsDisplayedAtBottomOfPageLayout-Programs @wip @needChangeInDom
  Scenario: verify that approval decision component is displayed at the bottom if custom setting boolean value is checked
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName            | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Email Field API Name | CreatedById       | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                  | name                                  |
      | false        | 0            | a0b1C00000OHJotQAH | Bottom approval decision box | SwitchApprovalDecisionComponentBottom |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName            | fieldNewValue | coreComponentField       |
      | Approval Process Steps Cache:General | Email Field API Name | OwnerId       | Program_Manager_Approver |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                  | name                                  |
      | true         | 0            | a0b1C00000OHJotQAH | Bottom approval decision box | SwitchApprovalDecisionComponentBottom |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I pause execution for "3" seconds
    When I click "Add" after selection of "Allen" in the table "---program:-:associateContactsTableId---"
    When I pause execution for "3" seconds
    And I click on "Edit" icon for "BP-01" inside flex table with id "---program:-:budgetPeriodDetailsTableId---"
    And I switch to iframe with id "ProgramBudgetPeriodiframeContentId"
    And I enter value "Active" into field "fieldStatus__c"
    And I click modal button "Save"
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "Automation PM" into field "fieldName__c"
    And I enter value "Program Approver" into field "fieldBusinessRole__c"
    And I click modal button "Save"
    And I navigate to "Roles" sub tab
    And I click on top right button "New" in flex table with id "---program:-:rolesAndResponsibilitiesTableId---"
    And I enter value "Allen PM" into field "fieldName__c"
    And I enter value "Key POC" into field "fieldBusinessRole__c"
    And I click modal button "Save"
    And I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:fundingAccountInformationTableId---"
    When I click "Add" after selection of "FA-17-03" in the table "---program:-:fundingAccountSelectionTableId---"
    When I pause execution for "3" seconds
    And I navigate to "Financials" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:budgetCategoryTableId---"
    When I click "Add" after selection of "SBC-A-209" in the table "---program:-:budgetCategorySelectionTableId---"
    And I navigate to "Log" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:relatedFederalProgramTableId---"
    When I click "Add" after selection of "90.404" in the table "---program:-:relatedFederalProgramSelectionTableId---"
    And I navigate to "Log" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programServiceAreaTableId---"
    When I click "Save" after selection of "PSA-0005" in the table "---program:-:programServiceAreaSelectionTableId---"
    And I refresh the page
    When I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table

  @103166    @verifyApprovalDecisionActionComponentIsDisplayedAtTopOfPageLayout-Programs @wip @needChangeInDom
  Scenario: verify that approval decision component is displayed at the top if custom setting boolean value is unchecked
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName            | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Email Field API Name | CreatedById       | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                  | name                                  |
      | false        | 0            | a0b1C00000OHJotQAH | Bottom approval decision box | SwitchApprovalDecisionComponentBottom |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName            | fieldNewValue | coreComponentField       |
      | Approval Process Steps Cache:General | Email Field API Name | OwnerId       | Program_Manager_Approver |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                  | name                                  |
      | false        | 0            | a0b1C00000OHJotQAH | Bottom approval decision box | SwitchApprovalDecisionComponentBottom |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table

  @148991    @verifySingleTaskIsGettingCreatedForUserInsideAssignedToMeTableAfterRecordSubmittedForApproval-Programs
  Scenario: verify that single task is getting created for user inside 'assigned to me' table after record submission for approval
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I pause execution for "10" seconds
    Then I softly see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "---program:-:HomePendingTasksTableId---"
    Then I softly see the text :
      | Total Records: 1 |

  @149007    @verifySingleTaskIsGettingCreatedForUserInsideAssignedByMeTableAfterRecordSubmittedForApproval-Programs
  Scenario: verify that single task is getting created for user inside 'assigned by me' table after record submission for approval
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation PM | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:PhasePendingTasksByTableId---" panel
    Then I softly see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "---program:-:PhasePendingTasksByTableId---"

  @37667    @notifyAdditionalPeopleThroughEmailWithApproveTemplateToProgramOwner-Programs @approvalProcess
  Scenario: Setup email setting in configuration and validate that program owner receiving email for program approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField       |
      | Approval Process Steps Cache:General | Notify Additional People | true          | Program_Manager_Approver |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{Framework_recordUsed:programInSAModeCanBeApproved}" in "---program:-:HomePendingTasksTableId---" panel
    When I click on "Start" icon for "{Framework_recordUsed:programInSAModeCanBeApproved}" inside table
    And I "Approve" in the approval decision
    When I re-login to "As Administrator" app as "PM" user on "default" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    Then I see email is generated with template "Program_Approved_Email_Template"

  @69960   @VerifyAssignedApproverUserInsideChevron @approvalProcess
  Scenario: Validating chevron contain Approver user and Initial submitter after submission of record to submit for approval
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    And I refresh the page
    And I pause execution for "15" seconds
    And I navigate to "History" sub tab
    And I pause execution for "10" seconds
    Then I see for "Program Manager Approver (Pending for first approval)" value is "Automation PM" in chevron diagram

  @35816    @hideApprovalDecisionFieldAtPageLayout-gPlanning @approvalProcess
  Scenario: Hiding approval decision box at page layout from config and validating it inside pending task approval decision
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                   | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Approval Decision comp | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                   | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Approval Decision comp | true          | Grantor State Program |                           |                            |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I cannot see the radio button "Approve" in the approval decision

    ################ Approval Decision Action ########################

  @201541p @201584 @201542 @201544 @201545 @201585 @201586 @201587
  Scenario Outline:Approval Decision Action-Admin-Config-To verify Approve, Reject, Send Back, Forward option should present in Approval Decision box
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I can see the radio button "Approve" in the approval decision
    Then I can see the radio button "Reject" in the approval decision
    Then I can see the radio button "Forward" in the approval decision
    Then I can see the radio button "Send back" in the approval decision

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @201546 @201547 @201548 @201549 @201588 @201589 @201590 @201591 @34305
  Scenario Outline: Approval Decision Action-Admin-Config-To verify Approve option should not present in Approval Decision box
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName   | fieldOrignalValue | coreComponentField | filterId         |
      | Approval Decision Action | Hide Action | false             | ADAC-0156          | ApiGeneratedId:0 |
      | Approval Decision Action | Hide Action | false             | ADAC-0157          | ApiGeneratedId:1 |
      | Approval Decision Action | Hide Action | false             | ADAC-0154          | ApiGeneratedId:2 |
      | Approval Decision Action | Hide Action | false             | ADAC-0155          | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName   | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Hide Action | true          | ADAC-0156          |
      | Approval Decision Action:General | Hide Action | true          | ADAC-0157          |
      | Approval Decision Action:General | Hide Action | true          | ADAC-0154          |
      | Approval Decision Action:General | Hide Action | true          | ADAC-0155          |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I cannot see the radio button "Approve" in the approval decision
    Then I cannot see the radio button "Reject" in the approval decision
    Then I cannot see the radio button "Forward" in the approval decision
    Then I cannot see the radio button "Send back" in the approval decision

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @202385 @202390
  Scenario Outline:Approval Decision Action-Admin-Config-To verify confirmatiom message should display on Approve
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Approve" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I do not see alert popup box

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @202421 @202419
  Scenario Outline:Approval Decision Action-Admin-Config-To verify confirmation message should not display on Disapproved
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Reject" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I do not see alert popup box

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @202450 @202453
  Scenario Outline: Approval Decision Action-Admin-config-To verify confirmation message should not display on sent back
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Send back" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I do not see alert popup box

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @202471 @202493
  Scenario Outline: Approval Decision Action-PM-UI-To verify confirmation message should not display on Reassign
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Forward" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I do not see alert popup box

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @219929 @219930
  Scenario Outline: Approval Decision Action-Admin-Config-To verify snapshot should generated on approval
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    And I refresh the page
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Then I see take snap shot getting saved with "Submitted for Approval.pdf"

    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @219932 @219933
  Scenario Outline: Approval Decision Action-Admin-Config-To verify snapshot should not generated on approval
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    And I refresh the page
    When I navigate to "History" sub tab
    And I pause execution for "5" seconds
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  ########################## Approval Process Step Cache ###################
  @202629 @202630 @202636 @202637 @202767 @202769
  Scenario Outline: Approver process Step Cache-Admin-Config-To verify program approver "Step 1"should present in approver table
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Responsibilities" sub tab
    And I click on top right button "New" in flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---"
    When I click dropdown field "ProgramRole__c"
    Then I see only the following ordered options in dropdown field "ProgramRole__c" :
      | Step 1 | Step 2 | Step 3 | Step 4 | NA |
    And I pause execution for "5" seconds
    When I click dropdown field "AnnouncementRole__c"
    Then I see only the following ordered options in dropdown field "AnnouncementRole__c" :
      | Step 1 | Step 2 | Step 3 | Step 4 | NA |
    And I pause execution for "5" seconds
    When I click dropdown field "FDMRole__c"
    Then I see only the following ordered options in dropdown field "FDMRole__c" :
      | Step 1 | Step 2 | Step 3 | Step 4 | NA |
    And I pause execution for "5" seconds
    When I click dropdown field "AwardRole__c"
    Then I see only the following ordered options in dropdown field "AwardRole__c" :
      | Step 1 | Step 2 | Step 3 | Step 4 | NA |
    And I pause execution for "5" seconds
    When I click dropdown field "PostAwardMonitoringRole__c"
    Then I see only the following ordered options in dropdown field "PostAwardMonitoringRole__c" :
      | Step 1 | Step 2 | Step 3 | Step 4 | NA |
    And I pause execution for "5" seconds
    When I click dropdown field "CloseoutRole__c"
    Then I see only the following ordered options in dropdown field "CloseoutRole__c" :
      | Step 1 | Step 2 | Step 3 | Step 4 | NA |

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @203073p @203075 @381961 @381962 @SanityPATCH @SanityPATCHApprovalProcess @needtocheckmanually
  Scenario Outline: Approver process Step Cache-Admin-Config-To verify Confirmation Message should displayed on Send To Owner
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                          | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Send To Owner Confirmation Title   |                   | ApiGeneratedId:0 |
      | Approval Process Steps Cache | Send To Owner Confirmation Message |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                           | fieldName                          | fieldNewValue                          | coreComponentField |
      | Approval Process Steps Cache:Process Definition | Send To Owner Confirmation Title   | Confirmation                           | Step1              |
      | Approval Process Steps Cache:Process Definition | Send To Owner Confirmation Message | Do you want to send back this program? | Step1              |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Send back" in the approval decision
    And I submit the approval in the approval decision
    When I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Do you want to send back this program?" is displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @203074 @203076
  Scenario Outline: Approver process Step Cache-Admin-Config-To verify Confirmation Message should not displayed on Send To Owner
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Send back" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I do not see alert popup box

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @202939 @202941 @381958 @381959 @SanityPATCH @SanityPATCHApprovalProcess @needtocheckmanually
  Scenario Outline: Approver process Step Cache-Admin-Config-To verify Confirmation Message should displayed on Reassign
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                     | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reassign Confirmation Title   |                   | ApiGeneratedId:0 |
      | Approval Process Steps Cache | Reassign Confirmation Message |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                           | fieldName                     | fieldNewValue                         | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:Process Definition | Reassign Confirmation Title   | Confirmation                          | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
      | Approval Process Steps Cache:Process Definition | Reassign Confirmation Message | Do you want to reassign this program? | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I can see the radio button "Forward" in the approval decision
    When I select radio button "Forward" in the approval decision
    And I select user "Automation PM" in the approval decision
    And I submit the approval in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Do you want to reassign this program?" is displayed

    Examples:
      | User  |
      | ADMIN |
    #  | PM    |

  @202940 @203067
  Scenario Outline:Approver process Step Cache-Admin-Config-To verify Confirmation Message should not displayed on Reassign
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I can see the radio button "Forward" in the approval decision
    When I select radio button "Forward" in the approval decision
    And I select user "Automation PM" in the approval decision
    And I submit the approval in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I do not see alert popup box

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @202933 @202935
  Scenario Outline: Approver process Step Cache-Admin-Config-To verify Confirmation Message should displayed on Reject
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                   | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reject Confirmation Title   |                   | ApiGeneratedId:0 |
      | Approval Process Steps Cache | Reject Confirmation Message |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                           | fieldName                   | fieldNewValue                       | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:Process Definition | Reject Confirmation Title   | Confirmation                        | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
      | Approval Process Steps Cache:Process Definition | Reject Confirmation Message | Do you want to Reject this program? | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Reject" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Do you want to Reject Program?" is displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @202934 @202936
  Scenario Outline: Approver process Step Cache-Admin-Config-To verify Confirmation Message should not displayed on Reject
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Reject" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I do not see alert popup box

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @202802 @202803 @needtocheckmanually
  Scenario Outline: Approver process Step Cache-Admin-Config-To verify Confirmation Message should displayed on Approve
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                    | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Approve Confirmation Title   |                   | ApiGeneratedId:0 |
      | Approval Process Steps Cache | Approve Confirmation Message |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                           | fieldName                    | fieldNewValue                        | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:Process Definition | Approve Confirmation Title   | Confirmation                         | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
      | Approval Process Steps Cache:Process Definition | Approve Confirmation Message | Do you want to approve this program? | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Approve" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Do you want to approve this program?" is displayed

    Examples:
      | User  |
      | ADMIN |
     # | PM    |

  @202806 @202808
  Scenario Outline: Approver process Step Cache-Admin-Config-To verify Confirmation Message should not displayed on Approve
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Approve" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I do not see alert popup box

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @203288
  Scenario: Approver process Step Cache-Admin-Config-To verify email notification should received on approved record
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Notify Additional People | true          | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    And I checkout to yopmail with mailid "automationadmin@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :
  """
  Sandbox:Notification: Program #{SavedValue:PEGMSID} has been Approved
  """
    Then I see the mail text is as follows :
  """
   Hello Automation,

This email is to notify you that Program #{SavedValue:PEGMSID} has been reviewed and approved.

Log in to EGMS and click here to activate the program.

Please do not reply to this system-generated email. You may contact the GovGrants Support Team at govgrantssupport@reisystems.com if you have any questions or need assistance with this
 task.

Thank you.
The EGMS Team
  """

  @203290
  Scenario: Approver process Step Cache-PM-UI-To verify email notification should received on approved record
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Notify Additional People | true          | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
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
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    And I checkout to yopmail with mailid "automationpm@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :
  """
  Sandbox:Notification: Program #{SavedValue:PEGMSID} has been Approved
  """
    Then I see the mail text is as follows :
  """
  Hello Automation,

This email is to notify you that Program #{SavedValue:PEGMSID} has been reviewed and approved.

Log in to EGMS and click here to activate the program.

Please do not reply to this system-generated email. You may contact the GovGrants Support Team at govgrantssupport@reisystems.com if you have any questions or need assistance with this
 task.

Thank you.
The EGMS Team
  """

  @203295
  Scenario: Approver process Step Cache-Admin-Config-To verify email notification should received on reject record
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Notify Additional People | true          | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reject" in the approval decision
    Then I softly see status in Progress-bar is "Rejected" and is "Red"
    And I checkout to yopmail with mailid "automationadmin@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :
  """
  Sandbox: Notification: Program #{SavedValue:PEGMSID} has been Rejected
  """
    Then I see the mail text is as follows :
  """
Hello Automation Admin

This email is to notify you that Program #{SavedValue:PEGMSID} has been rejected.

Log in to EGMS and click here to see details.

Please do not reply to this system-generated email. You may contact the GovGrants Support Team at govgrantssupport@reisystems.com, if you have any questions or need assistance with this task.

Thank you.
The EGMS Team
  """

  @203347
  Scenario: Approver process Step Cache-PM-UI-To verify email notification should received on reject record
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Notify Additional People | true          | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reject" in the approval decision
    Then I softly see status in Progress-bar is "Rejected" and is "Red"
    And I checkout to yopmail with mailid "automation.exe@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :
  """
  Sandbox: Notification: Program #{SavedValue:PEGMSID} has been Rejected
  """
    Then I see the mail text is as follows :
  """
Hello Automation PM

This email is to notify you that Program #{SavedValue:PEGMSID} has been rejected.

Log in to EGMS and click here to see details.

Please do not reply to this system-generated email. You may contact the GovGrants Support Team at govgrantssupport@reisystems.com, if you have any questions or need assistance with this task.

Thank you.
The EGMS Team
  """

  @203404
  Scenario: Approver process Step Cache-Admin-Config-To verify email notification should received on reassign record
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Notify Additional People | true          | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I "Forward" to user "Automation PM" in the approval decision
    And I checkout to yopmail with mailid "automation.admin@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :
  """
  Sandbox: Notification: Program #{SavedValue:PEGMSID} has been forwarded.
  """
    Then I see the mail text is as follows :
  """


Hello {SavedValue:OWNER},

This email is to notify you that Program #{SavedValue:PEGMSID} has been forwarded.

Log in to EGMS, click here for more details, and resubmit the Program after making the required changes.

Please do not reply to this system-generated email. You may contact the GovGrants Support Team at govgrantssupport@reisystems.com if you have any questions or need assistance with this task.

Thank you.
The EGMS Team
"""

  @203406 @381955 @381956 @SanityPATCH @SanityPATCHApprovalProcess
  Scenario:Approver process Step Cache-PM-Config-To verify email notification should received on reassign record
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Notify Additional People | true          | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I "Forward" to user "Automation PM" in the approval decision
    And I pause execution for "5" seconds
    And I checkout to yopmail with mailid "automationpm@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :
   """
  Sandbox: Notification: Program #{SavedValue:PEGMSID} has been forwarded.
  """
    Then I see the mail text is as follows :
  """


Hello {SavedValue:OWNER},

This email is to notify you that Program #{SavedValue:PEGMSID} has been forwarded.

Log in to EGMS, click here for more details, and resubmit the Program after making the required changes.

Please do not reply to this system-generated email. You may contact the GovGrants Support Team at govgrantssupport@reisystems.com if you have any questions or need assistance with this task.

Thank you.
The EGMS Team
"""

  @203680 @381963 @SanityPATCH @SanityPATCHApprovalProcess
  Scenario: Approver process Step Cache-PM-UI-To verify email notification should received on Send To Owner record
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Notify Additional People | true          | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Send back" in the approval decision
    And I pause execution for "5" seconds
    #381963
    Then I softly see status in Progress-bar is "Created" and is "Green"
    And I checkout to yopmail with mailid "automationadmin@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :
  """
  Sandbox:  Notification: Program #{SavedValue:PEGMSID} has been sent back
  """
    Then I see the mail text is as follows :
  """
Hello {SavedValue:OWNER},

This email is to notify you that Program # {SavedValue:PEGMSID} has been sent back for revision.

Program Details:
  Program ID: {SavedValue:PEGMSID}
  Program Name: {SavedValue:PROGRAMNAME}

Log in to EGMS and click here to resubmit the Program after making the required changes.

Please do not reply to this system-generated email. You may contact the GovGrants Support Team at govgrantssupport@reisystems.com if you have any questions or need assistance with this task.

Thank you.

The EGMS Team
"""

  @203569
  Scenario: Approver process Step Cache-Admin-Config-To verify email notification should received on Send To Owner record
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Sent Back" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Rejected" and is "Red"
    And I checkout to yopmail with mailid "automationadmin@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :
  """
  Sandbox:  Notification: Program #{SavedValue:PEGMSID} has been sent back
  """
    Then I see the mail text is as follows :
  """
Hello {SavedValue:OWNER},

This email is to notify you that Program # {SavedValue:PEGMSID} has been sent back for revision.

Program Details:
  Program ID: {SavedValue:PEGMSID}
  Program Name: {SavedValue:PROGRAMNAME}

Log in to EGMS and click here to resubmit the Program after making the required changes.

Please do not reply to this system-generated email. You may contact the GovGrants Support Team at govgrantssupport@reisystems.com if you have any questions or need assistance with this task.

Thank you.

The EGMS Team
"""

  @203291bb @381945 @381948 @381949 @SanityPATCH @SanityPATCHApprovalProcess
  Scenario: Approver process Step Cache-PM-UI-To verify email notification should not received on approved record
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField | coreCOmponentSubFieldName    | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Notify Additional People | false         | Step1              | GNT__ApprovalDefinitionId__c | 04a4T000000PGg1QAG         |
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    Then I see "Start" action button for "{SavedValue:PEGMSID}" inside flex table id "---program:-:HomePendingTasksTableId---"
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    Then I see only the following ordered radio buttons in the approval decision :
      | Approve | Reject | Send back | Send back |
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Approved" and is "Green"

  @203289
  Scenario: Approver process Step Cache-Admin-Config-To verify email notification should not received on approved record
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Approved" and is "Green"
    And I checkout to yopmail with mailid "automationadmin@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :

  @203296 @381957 @SanityPATCH @SanityPATCHApprovalProcess
  Scenario: Approver process Step Cache-Admin-Config-To verify email notification should not received on reject record
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reject" in the approval decision
    And I pause execution for "5" seconds
    #381957
    Then I softly see status in Progress-bar is "Rejected" and is "Red"
    And I checkout to yopmail with mailid "automationadmin@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :

  @203348
  Scenario: Approver process Step Cache-PM-UI-To verify email notification should not received on reject record
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reject" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Rejected" and is "Red"
    And I checkout to yopmail with mailid "automationadmin@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :

  @203407
  Scenario: Approver process Step Cache-PM-UI-To verify email notification should not received on reassign record
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I "Forward" to user "Automation PM" in the approval decision
    And I checkout to yopmail with mailid "automation.exe@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :

  @203405
  Scenario: Approver process Step Cache-Admin-Config-To verify email notification should not received on reassign record
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    And I "Forward" to user "Automation PM" in the approval decision
    And I checkout to yopmail with mailid "automation.exe@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :

  @203571
  Scenario: Approver process Step Cache-Admin-Config-To verify email notification should not received on Send To Owner record
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation EXE | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Reject" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Rejected" and is "Red"
    And I checkout to yopmail with mailid "automationadmin@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :

  @203681
  Scenario: Approver process Step Cache-PM-UI-To verify email notification should not received on Send To Owner record
    Given I delete the record "Automation Application" from the object "Application__c" with field "Title__c"
    Given I delete the record "Automation Internal Announcement for flow" from the object "Announcement__c" with field "AnnouncementName__c"
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I save the field labeled "Title" as "PROGRAMNAME"
    And I save the field labeled "Created By" as "OWNER"
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:RolesAndResponsibilitiesInternalProgTableID---" by clicking "New" :
      | Name           | Program |
      | Automation EXE | Step 1  |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "EXE" user on "PATCH" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Sent Back" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Rejected" and is "Red"
    And I checkout to yopmail with mailid "automationadmin@yopmail.com"
    And I pause execution for "10" seconds
    Then I refresh the page
    And I see the mail subject is as follows :