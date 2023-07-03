@approvalprocess-component @regression-QA @approvalProcess
Business Need: Approval Process Component Scenarios
  Test all approval process component based scenarios
  As a configuration manager i make different configurational changes in approval process component and will validate them.

  @34305    @hideApproveOption-Programs @smoke @skiponjenkins
  Scenario: Hiding approve option from configuration and validating its content in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName   | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Action | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName   | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Hide Action | true          | ADAC-0105          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    Then I cannot see the radio button "Approve" in the approval decision

  @34307    @changeApproveOptionSequence-Programs @smoke
  Scenario: Changing sequence of Approve option from configuration and validating its sequence in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName | fieldOrignalValue | filterId         |
      | Approval Decision Action | Sequence  | 1                 | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Sequence  | 5             | ADAC-0105          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    Then I see only the following ordered radio buttons in the approval decision :
      | Reject | Forward | Send Back | Approve |

  @34308    @mandatoryCommentsReqForApproveAction-Programs
  Scenario: Setup comments requried as mandatory for approval from configuration and in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName         | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Required | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName         | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Comments Required | true          | ADAC-0105          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I select radio button "Approve" in the approval decision
    And I submit the approval in the approval decision
    Then I can see the message "Comments are Required." in the approval decision

  @34306    @labelChangeOfApprovalDecision-Programs
  Scenario: Changing label of approve radio button text from configuration and validating its changed label in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName             | fieldOrignalValue | filterId         |
      | Approval Decision Action | Action Label Override | Approve           | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName             | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Action Label Override | Approved      | ADAC-0105          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    Then I can see the radio button "Approve" in the approval decision

  @34309    @confirmationMessageBoxPopupForApproveApprovalDecisionAction-Programs
  Scenario: Setup confirmation message inside confirmation message box from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName          | fieldOrignalValue | filterId         |
      | Approval Decision Action | Confirmation Title |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                   | coreComponentField |
      | Approval Decision Action:General | Confirmation Title   | Automation Approval             | ADAC-0105          |
      | Approval Decision Action:General | Confirmation Message | Confirmation box for automation | ADAC-0105          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I select radio button "Approve" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Confirmation box for automation" is displayed

  @34310    @filterCriteriaForUserReassignForApprovalDecisionAction-Programs
  Scenario Outline: Entering filter criteria for user reassign using forward action from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName                         | fieldOrignalValue | filterId         |
      | Approval Decision Action | Filter Criteria for User Reassign |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName                         | fieldNewValue            | coreComponentField |
      | Approval Decision Action:General | Filter Criteria for User Reassign | <newFilterCriteriaValue> | ADAC-0103          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I select radio button "Forward" in the approval decision
    Then I can see user "Automation PM" in the user lookup in the approval decision
    Examples:
      | newFilterCriteriaValue |
      | Name='Automation PM'   |

  @34311 @wip @automationNotRequired @approverTaskNotCreatedPrograms-Programs @smoke
  Scenario: Change approver setting for not receiveing approve task in configuration and validate that pending approver task is not displayed
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName      | fieldOrignalValue  | filterId         |
      | Approval Process Steps Cache | Field API Name | ProgramApprover__c | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName      | fieldNewValue | coreComponentField       |
      | Approval Process Steps Cache:General | Field API Name |               | Program_Manager_Approver |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    Then I see approval with subject as "{SavedValue:PEGMSID}" is not displayed

  @34313    @successEmailSentToProgramOwner-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for program approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName            | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Email Field API Name | CreatedById       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName            | fieldNewValue | coreComponentField       |
      | Approval Process Steps Cache:General | Email Field API Name | OwnerId       | Program_Manager_Approver |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    And I pause execution for "5" seconds
    Then I softly see status in Progress-bar is "Submitted For Approval" and is "Green"
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I re-login to "As Administrator" app as "PM" user on "default" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    Then I see email is generated with template "Program_Approved_Email_Template"

  @34314    @confirmationMessageBoxPopupForApprovalDecisionUsingApprovalCache-Programs @smoke
  Scenario: Setup confirmation message inside confirmation message box from approval process step cache configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                    | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Approve Confirmation Title   |                   | ApiGeneratedId:0 |
      | Approval Process Steps Cache | Approve Confirmation Message |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                    | fieldNewValue                   | coreComponentField       |
      | Approval Process Steps Cache:General | Approve Confirmation Title   | Automation Approval             | Program_Manager_Approver |
      | Approval Process Steps Cache:General | Approve Confirmation Message | Confirmation box for automation | Program_Manager_Approver |
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
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Approve" in the approval decision
    When I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Confirmation box for automation" is displayed

  @34317    @taskAssignmentNotificationForProgramSubmissionThroughMail-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for program submitted for approval
    Given I have "default" configuration as below:
      | configurationCategory   | fieldName                          | fieldOrignalValue | filterId         |
      | Task Config:Task Action | Send Task Assignment Notification? | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName                          | fieldNewValue | coreComponentField |
      | Task Config:Task Action | Send Task Assignment Notification? | true          | Approve Program    |
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
    When I re-login to "As Administrator" app as "PM" user on "default" portal
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
      | Page Tabs Config:Page Layout Action | Is Active         | false         | Grantee State Program | Name                      | TAB-1724                   |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I see approval with subject as "Program Sent To Owner" is not displayed

  @37348    @rejectConfirmationMessageFieldAtApprovalProcess-Programs @smoke
  Scenario: Setup confirmation message inside confirmation message box for reject from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                   | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reject Confirmation Title   |                   | ApiGeneratedId:0 |
      | Approval Process Steps Cache | Reject Confirmation Message |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                   | fieldNewValue                          | coreComponentField       |
      | Approval Process Steps Cache:General | Reject Confirmation Title   | Automation Reject                      | Program_Manager_Approver |
      | Approval Process Steps Cache:General | Reject Confirmation Message | Reject Confirmation box for automation | Program_Manager_Approver |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Reject" in the approval decision
    And I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Successfully disapproved" is displayed

  @37431    @reassignConfirmationMessageFieldAtApprovalProcess-Programs
  Scenario: Setup confirmation message inside confirmation message box for reassign from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                     | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reassign Confirmation Title   |                   | ApiGeneratedId:1 |
      | Approval Process Steps Cache | Reassign Confirmation Message |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                     | fieldNewValue                            | coreComponentField       |
      | Approval Decision Action:General     | Comments Required             | false                                    | ADAC-0103                |
      | Approval Process Steps Cache:General | Reassign Confirmation Title   | Automation Reassign                      | Program_Manager_Approver |
      | Approval Process Steps Cache:General | Reassign Confirmation Message | Reassign Confirmation box for automation | Program_Manager_Approver |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Forward" in the approval decision
    And I select user "Automation PM" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Successfully Re-Assigned" is displayed

  @37433    @sendToOwnerConfirmationMessageFieldAtApprovalProcess-Programs
  Scenario: Setup confirmation message inside confirmation message box for reassign from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                          | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Send To Owner Confirmation Title   |                   | ApiGeneratedId:0 |
      | Approval Process Steps Cache | Send To Owner Confirmation Message |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                          | fieldNewValue                                 | coreComponentField       |
      | Approval Process Steps Cache:General | Send To Owner Confirmation Title   | Automation Send to Owner                      | Program_Manager_Approver |
      | Approval Process Steps Cache:General | Send To Owner Confirmation Message | Send to Owner Confirmation box for automation | Program_Manager_Approver |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Send back" in the approval decision
    When I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Successfully sent to Owner. It may take few minutes to process record." is displayed

  @37506    @confirmationMessageBoxPopupForRejectApprovalDecisionAction-Programs
  Scenario: Setup confirmation message inside confirmation message box for reject approval decision action using Approval Decision Action from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Confirmation Title   |                   | ApiGeneratedId:0 |
      | Approval Decision Action | Confirmation Message |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                 | coreComponentField |
      | Approval Decision Action:General | Confirmation Title   | Automation for Rejection      | ADAC-0106          |
      | Approval Decision Action:General | Confirmation Message | Test Automation for Rejection | ADAC-0106          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
      | Name          | Program | Announcement | FDM    | Award  | Post Award / Monitoring | Closeout |
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Reject" in the approval decision
    When I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Successfully disapproved" is displayed

  @37523    @confirmationMessageBoxPopupForReassignApprovalDecisionAction-Programs
  Scenario: Setup confirmation message inside confirmation message box for reassign approval decision action using Approval Decision Action from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Confirmation Title   |                   | ApiGeneratedId:1 |
      | Approval Decision Action | Confirmation Message |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue               | coreComponentField |
      | Approval Decision Action:General | Comments Required    | false                       | ADAC-0103          |
      | Approval Decision Action:General | Confirmation Title   | Automation for Forward      | ADAC-0103          |
      | Approval Decision Action:General | Confirmation Message | Test Automation for Forward | ADAC-0103          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
      | Automation FO | Step 1  | Step 1       | Step 1 | Step 1 | Step 1                  | Step 1   |
    And I pause execution for "10" seconds
    And I click on "Submit For Approval" in the page details
    When I re-login to "As a Grantor" app as "FO" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I select radio button "Forward" in the approval decision
    And I select user "Automation PM" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Successfully Re-Assigned" is displayed

  @37539    @commentsFieldAPINameFieldForApproveAction-Programs
  Scenario: Setup comments as FederalProgramCFDA__c inside comments field API field using Approval decision action config from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName               | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Field API Name |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName               | fieldNewValue         | coreComponentField |
      | Approval Decision Action:General | Comments Field API Name | FederalProgramCFDA__c | ADAC-0105          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
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

  @38847    @confirmationMessageBoxPopupForSendToOwnerApprovalDecisionAction-Programs @smoke
  Scenario: Setup confirmation message inside confirmation message box for send back approval decision action using Approval Decision Action from configuration and validating it in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Confirmation Title   |                   | ApiGeneratedId:0 |
      | Approval Decision Action | Confirmation Message |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                | coreComponentField |
      | Approval Decision Action:General | Confirmation Title   | Automation for Sendback      | ADAC-0104          |
      | Approval Decision Action:General | Confirmation Message | Test Automation for Sendback | ADAC-0104          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I select radio button "Send back" in the approval decision
    When I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    Then I see confirmation box with body "Successfully sent to Owner. It may take few minutes to process record." is displayed

  @37540    @viewPageProfileFieldForApprovalProcess-Programs @AutomationNotRequired @wip
  Scenario Outline: Changing user inside profile field inside task config from config validating it at program approval page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Task Config           | View Page Profiles | <oldProfiles>     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory   | fieldName          | fieldNewValue | coreComponentField |
      | Task Config:Task Action | View Page Profiles | <newProfiles> | Approve Program    |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    Then I see approval with subject as "Automation Internal Program for Testing" is not displayed

    Examples:
      | oldProfiles                                                                                                         | newProfiles                                                                                                     |
      | ADT; CON; CTR; DA; DEV; EPOC; EXE; FD; FO; GA; GMO; PM; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND | ADT; CON; CTR; DA; DEV; EPOC; EXE; FD; FO; GA; GMO; PO; SME; SPA; SPI; System Administrator; TR1; TR2; TR3; VND |

  @37645    @successEmailSentWithRejectTemplateToProgramOwner-Programs @smoke @BugId_163309
  Scenario: Setup email setting in configuration and validate that program owner receiving email with reject email template for program approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName              | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Approve Email Template | false             | ApiGeneratedId:0 |
      | Page Tabs Config             | Is Active              | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName              | fieldNewValue                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Email Template Name    | Program Approved Email Template | Program Approved Email Template |                           |                            |
      | Approval Process Steps Cache:General | Email Template Name    | Program Rejected Email Template | Program Rejected Email Template |                           |                            |
      | Approval Process Steps Cache:General | Approve Email Template | true                            | Program_Manager_Approver        |                           |                            |
      | Page Tabs Config:Page Layout Action  | Is Active              | false                           | Grantee State Program           | Name                      | TAB-1724                   |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
    And I navigate to "Home" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "---program:-:HomePendingTasksTableId---" panel
    And I click on "Start" icon for "{SavedValue:PEGMSID}" inside flex table with id "---program:-:HomePendingTasksTableId---"
    When I "Approve" in the approval decision
    When I re-login to "As Administrator" app as "PM" user on "default" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    And I pause execution for "10" seconds
    Then I see email is generated with template "Program_Rejected_Email_Template"

  @37646    @rejectEmailSentWithApproveTemplateToProgramOwner-Programs @BugId_163309
  Scenario: Setup email setting in configuration and validate that program owner receiving email for rejection with approve email template for program approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName             | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reject Email Template | ApiGeneratedId:0  | ApiGeneratedId:2 |
      | Page Tabs Config             | Is Active             | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName             | fieldNewValue                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Email Template Name   | Program Rejected Email Template | Program Rejected Email Template |                           |                            |
      | Approval Process Steps Cache:General | Email Template Name   | Program Approved Email Template | Program Approved Email Template |                           |                            |
      | Approval Process Steps Cache:General | Reject Email Template | ApiGeneratedId:1                | Program_Manager_Approver        |                           |                            |
      | Page Tabs Config:Page Layout Action  | Is Active             | false                           | Grantee State Program           | Name                      | TAB-1724                   |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    And I "Reject" in the approval decision
    When I re-login to "As Administrator" app as "PM" user on "default" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    Then I see email is generated with template "Program_Approved_Email_Template"

  @37656    @reassignedEmailSentWithApproveTemplateToProgramOwner-Programs
  Scenario: Setup email setting in configuration and validate that program owner receiving email for reassign with approve email template for program approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                 | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Reassigned Email Template |                   | ApiGeneratedId:1 |
      | Page Tabs Config             | Is Active                 | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                 | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
   #   | Approval Process Steps Cache:General | Email Template Name       | Program Approved Email Template | Program Approved Email Template |                           |                            |
      | Approval Process Steps Cache:General | Reassigned Email Template | true          | Program_Manager_Approver |                           |                            |
      | Page Tabs Config:Page Layout Action  | Is Active                 | false         | Grantee State Program    | Name                      | TAB-1724                   |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
      | Approval Process Steps Cache | Send To Owner Email Template |                   | ApiGeneratedId:1 |
      | Page Tabs Config             | Is Active                    | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                    | fieldNewValue                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Email Template Name          | Program Approved Email Template | Program Approved Email Template |                           |                            |
      | Approval Process Steps Cache:General | Send To Owner Email Template | ApiGeneratedId:0                | Program_Manager_Approver        |                           |                            |
      | Page Tabs Config:Page Layout Action  | Is Active                    | false                           | Grantee State Program           | Name                      | TAB-1724                   |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I re-login to "As Administrator" app as "PM" user on "default" portal
    And I navigate to "Operate" tab
    When I navigate to "Email Logs" content inside "Logs" subheader on left panel
    And I click toggle button to select "Queued Emails"
    Then I see email is generated with template "Program_Approved_Email_Template"

  @41058    @mandatoryCommentsReqForReassignAction-Programs
  Scenario: Setup comments requried as mandatory for reassign from configuration and in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName         | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Required | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName         | fieldNewValue | coreComponentField |
      | Approval Decision Action:General | Comments Required | true          | ADAC-0103          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I select radio button "Forward" in the approval decision
    And I submit the approval in the approval decision
    Then I can see the message "Comments are Required." in the approval decision

  @41059    @commentsFieldAPINameFieldForReassignAction-Programs
  Scenario: Setup comments as FederalProgramCFDA__c inside comments field API field using Approval decision action config from config and validating it at program detail page
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName               | fieldOrignalValue | filterId         |
      | Approval Decision Action | Comments Field API Name |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName               | fieldNewValue         | coreComponentField |
      | Approval Decision Action:General | Comments Field API Name | FederalProgramCFDA__c | ADAC-0103          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    And I setup my app as "As a Grantor"
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
    And I "Forward" to user "Automation PM" in the approval decision
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "View" icon for "{SavedValue:PEGMSID}" inside table
    Then I see field "Automation Testing" inside page block

  @41063    @hideApproveOptionFromHideExpressionJSONField-Programs @smoke @skiponjenkins
  Scenario: Hiding approve option from configuration and validating its content in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0105          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    Then I cannot see the radio button "Approve" in the approval decision

  @41064    @hideDisapproveOptionFromHideExpressionJSONField-Programs
  Scenario: Hiding reject option from configuration and validating its content in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0106          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    Then I cannot see the radio button "Reject" in the approval decision

  @41065    @hideReassignOptionFromHideExpressionJSONField-Programs
  Scenario: Hiding forward option from configuration and validating its content in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0103          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    Then I cannot see the radio button "Forward" in the approval decision

  @41067    @hideSendToOwnerOptionFromHideExpressionJSONField-Programs
  Scenario: Hiding send back option from configuration and validating its content in pending tasks approval decision
    Given I have "default" configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                       | coreComponentField |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:HideExpressonJsonForApprovalAction | ADAC-0104          |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    Then I cannot see the radio button "Send back" in the approval decision

  @41060    @validateCommentedTextInsideHistoryTabForReassignAction-Programs @smoke
  Scenario: Validating commented text inside history tab for reassign approval action at program detail page
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I re-login to "As a Grantor" app as "EXE" user on "QA" portal
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
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
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
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    When I re-login to "As a Grantor" app as "PM" user on "default" portal
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}"
    When I click on "Start" icon for "{SavedValue:PEGMSID}" inside table

  @148991    @verifySingleTaskIsGettingCreatedForUserInsideAssignedToMeTableAfterRecordSubmittedForApproval-Programs
  Scenario: verify that single task is getting created for user inside 'assigned to me' table after record submission for approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName            | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Email Field API Name | CreatedById       | ApiGeneratedId:0 |
      | Page Tabs Config             | Highlights Panel?    | false             | ApiGeneratedId:1 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                  | name                                  |
      | false        | 0            | a0b1C00000OHJotQAH | Bottom approval decision box | SwitchApprovalDecisionComponentBottom |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName            | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Email Field API Name | OwnerId       | Program_Manager_Approver |                           |                            |
      | Page Tabs Config:Page Layout Action  | Highlights Panel?    | true          | Grantee State Program    | Name                      | TAB-409                    |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                  | name                                  |
      | false        | 0            | a0b1C00000OHJotQAH | Bottom approval decision box | SwitchApprovalDecisionComponentBottom |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    Then I softly see value "{SavedValue:PEGMSID}" for title "Ref. ID" inside table "---program:-:HomePendingTasksTableId---"
    Then I softly see the text :
      | Total Records: 1 |

  @149007    @verifySingleTaskIsGettingCreatedForUserInsideAssignedByMeTableAfterRecordSubmittedForApproval-Programs
  Scenario: verify that single task is getting created for user inside 'assigned by me' table after record submission for approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName            | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Email Field API Name | CreatedById       | ApiGeneratedId:0 |
      | Page Tabs Config             | Highlights Panel?    | false             | ApiGeneratedId:1 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                  | name                                  |
      | false        | 0            | a0b1C00000OHJotQAH | Bottom approval decision box | SwitchApprovalDecisionComponentBottom |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName            | fieldNewValue | coreComponentField       | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Approval Process Steps Cache:General | Email Field API Name | OwnerId       | Program_Manager_Approver |                           |                            |
      | Page Tabs Config:Page Layout Action  | Highlights Panel?    | true          | Grantee State Program    | Name                      | TAB-409                    |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                  | name                                  |
      | false        | 0            | a0b1C00000OHJotQAH | Bottom approval decision box | SwitchApprovalDecisionComponentBottom |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    And I navigate to "Planning" tab
    And I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:PEGMSID}" in "PhasePendingTasksBy" panel
    Then I softly see value "{SavedValue:PEGMSID}" for title "Ref. ID" inside table "PhasePendingTasksBy"

  @37667    @notifyAdditionalPeopleThroughEmailWithApproveTemplateToProgramOwner-Programs @approvalProcess
  Scenario: Setup email setting in configuration and validate that program owner receiving email for program approval
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                | fieldOrignalValue | filterId         |
      | Approval Process Steps Cache | Notify Additional People | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                | fieldName                | fieldNewValue | coreComponentField                                            |
      | Program                              | Status                   | Created       | Test program for automation -  SA mode only - Can be Approved |
      | Approval Process Steps Cache:General | Notify Additional People | true          | Program_Manager_Approver                                      |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
      | Page Layout:General   | Hide Approval Decision comp | true          | Grantee State Program |                           |                            |
    Given I delete the record "Automation Internal Program for Testing" from the object "Program__c" with field "ProgramName__c"
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
    Then I cannot see the radio button "Approve" in the approval decision