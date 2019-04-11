@expressionbuilder-component
Feature: Expression Builder Component Scenarios
  Test all expression builder component based scenarios
  As a configuration manager i make different configurational changes in expression builder component and will validate them.

  @42233 @all @hideExpressioJsonForRightOperandForPMUser-gAnnouncement
  Scenario: validate disabling of create button for PM user from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:FlexTableHideExpressionBuilderJsonForPMUser | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @42369 @all @hideExpressioJsonForRightOperandForAdminUser-gAnnouncement
  Scenario: validate disabling of create button for Admin user from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                   | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:FlexTableHideExpressionBuilderJsonForAdminUser | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @42475 @all @hideExpressioJsonForRightOperandForProfilePM-gAnnouncement
  Scenario: validate disabling of create button for profile PM from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                              | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:FlexTableHideExpressionBuilderJsonForAdministratorProfile | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @42370 @all @hideExpressioJsonForRightOperandForProfileSystemAdministrator-gAnnouncement
  Scenario: validate disabling of create button for profile system administrator from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                              | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:FlexTableHideExpressionBuilderJsonForAdministratorProfile | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed
    When I re-login as "Automation" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @42476 @all @hideExpressioJsonForRightOperandForProfilePMWithOperatorNotIn-gAnnouncement
  Scenario: validate disabling of create button for profile PM With Operator Not In from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForAdministratorProfileWithNotInOperator | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @42371 @all @hideExpressioJsonForRightOperandForProfileAdministratorWithOperatorNotIn-gAnnouncement
  Scenario: validate create button is present for profile Administrator with Operator Not In from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForAdministratorProfileWithNotInOperator | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table

  @42479 @all @hideExpressioJsonForRightOperandForUserTypeInternalWithOperatorIn-gAnnouncement
  Scenario: validate disabling of create button for user type Internal with Operator In from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                           | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForInternalUserWithInOperator | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @42480 @all @hideExpressioJsonForRightOperandForUserTypeInternalWithOperatorNotIn-gAnnouncement
  Scenario: validate disabling of create button for user type Internal with Operator Not In from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                              | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForInternalUserWithNotInOperator | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table

  @42483 @all @hideExpressioJsonForRightOperandForUserTypeInternalWithOperatorNotIn-Reviewer-gAnnouncement
  Scenario: validate disabling of create button for user type Internal with Operator Not In from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                              | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForInternalUserWithNotInOperator | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation-Reviewer" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @42490 @all @hideExpressioJsonForRightOperandForUserType-Internal-gAnnouncement
  Scenario: validate disabling of create button for user type Internal from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                          | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForInternalUserTypeInternalApplicantReviewer | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @42491 @all @hideExpressioJsonForRightOperandForUserType-Applicant-gAnnouncement
  Scenario: validate disabling of create button for user type Appplicant from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                          | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForInternalUserTypeInternalApplicantReviewer | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation-Applicant" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @42492 @all @hideExpressioJsonForRightOperandForUserType-Reviewer-gAnnouncement
  Scenario: validate disabling of create button for user type Reviewer from Announcement-Program
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ActiveFundingOpportunities | Name                      | Create                     |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                          | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForInternalUserTypeInternalApplicantReviewer | ActiveFundingOpportunities | Name                      | Create                     |
    When I login as "Automation-Reviewer" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    Then I see "Create" button inside "Draft Announcements" flex table not displayed

  @42499 @all @hideExpressioJsonForRightOperandForContextViewWithOperatorIn-gPlanning
  Scenario: validate disabling of create button for context view with operator IN -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForContextViewWithOperatorIn | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42612 @all @hideExpressioJsonForRightOperandForContextEditWithOperatorIn-gPlanning
  Scenario: validate disabling of create button for context edit with operator IN -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForContextEditWithOperatorIn | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42684 @all @hideExpressioJsonForRightOperandForContextViewWithOperatorNotIn-gPlanning
  Scenario: validate disabling of create button for context view with operator Not IN -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForContextViewWithOperatorNotIn | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table

  @42685 @all @hideExpressioJsonForRightOperandForContextEditWithOperatorNotIn-gPlanning
  Scenario: validate disabling of create button for context edit with operator Not IN -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForContextEditWithOperatorNotIn | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table

  @42690 @all @hideExpressioJsonForRightOperandForUserAppStateAsGrantorWithOperatorIn-gPlanning
  Scenario: validate disabling of create button for user app state as grantor with operator IN -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForUserAppSAGrantorWithOperatorIn | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42691 @all @hideExpressioJsonForRightOperandForUserAppStateAsGranteeWithOperatorInAtFlexTableAction-gOpportunities
  Scenario: validate disabling of Associate button for user app state as grantee with operator IN-gOpportuities
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | OpporunityGranteeServiceArea | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                               | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForUserAppSAGranteeWithOperatorIn | OpporunityGranteeServiceArea | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Opportunities" tab
    When I perform quick search for "ROSES 2018: Rapid Response and Novel Research in Earth Science"
    When I click on "View" icon for "ROSES 2018: Rapid Response and Novel Research in Earth Science" inside table
    When I navigate to "Overview" sub tab
    Then I see "Associate" button inside "Project/Service Area" flex table not displayed

  @42694 @all @hideExpressioJsonForRightOperandForUserAppStateAsAdministratorWithOperatorIn-gSetup
  Scenario: validate disabling of New button for User app State as Administrator with operator IN-gSetup
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | CreatedandInactiveOrganizations | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                     | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForUserAppSAAdministratorWithOperatorIn | CreatedandInactiveOrganizations | Name                      | New                        |
    When I login as "Automation" user
    When I setup my app as "As an Administrator"
    And I navigate to "Setup" tab
    Then I see "New" button inside "Draft Internal Organizations" flex table not displayed

  @42701 @all @hideExpressioJsonForRightOperandForFieldWithOperatorEquals-gPlanning
  Scenario: validate disabling of Associate button for field with operator Equals-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorEquals | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42704 @all @hideExpressioJsonForRightOperandForUserAppRecipientWithOperatorIn-gPlanning @check @wip
  Scenario: validate disabling of Associate button for user app Recipient with operator In -gOpportunities
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | GrantProjectAreas  | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForUseAppRecipientWithOperatorIn | GrantProjectAreas  | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Sub-Recipient"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42708 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorWithOperatorAND-gPlanning
  Scenario: validate disabling of Associate button for profile system adminitrator with operator AND -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorWithOperatorAnd | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42710 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorWithOperatorOR-gPlanning
  Scenario: validate disabling of Associate button for profile system adminitrator with operator OR -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorWithOperatorOR | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42711 @all @hideExpressioJsonForRightOperandForUserTypeInternalAndContextViewWithOperatorAND-gPlanning
  Scenario: validate disabling of Associate button for user type Internal and context view with operator AND -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForUserTypeInternalAndContextViewWithOperatorAND | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42712 @all @hideExpressioJsonForRightOperandForUserTypeInternalAndContextViewWithOperatorOR-gPlanning
  Scenario: validate disabling of Associate button for user type Internal and context view with operator OR -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForUserTypeInternalAndContextViewWithOperatorOR | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42714 @all @hideExpressioJsonForRightOperandForUserTypeInternalAndUserAppSAGrantorWithOperatorAND-gPlanning
  Scenario: validate disabling of Associate button for user type Internal and user app state as grantor with operator AND -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForUserTypeInternalAndUserAppSAGrantorWithOperatorAND | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42716 @all @hideExpressioJsonForRightOperandForUserTypeInternalAndUserAppSAGrantorWithOperatorOR-gPlanning
  Scenario: validate disabling of Associate button for user type Internal and user app state as grantor with operator OR -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForUserTypeInternalAndUserAppSAGrantorWithOperatorOR | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42717 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorAndUserAppSAGrantorWithOperatorOR-gPlanning
  Scenario: validate disabling of Associate button for profile sys Administrator and user app state as grantor with operator OR -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorAndUserAppSAGrantorWithOperatorAND | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42719 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorAndUserAppSAGrantorWithOperatorAND-gPlanning
  Scenario: validate disabling of Associate button for profile sys Administrator and user app state as grantor with operator AND -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorAndUserAppSAGrantorWithOperatorOR | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42720 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorAndContextViewWithOperatorAND-gPlanning
  Scenario: validate disabling of Associate button for profile Sys Administrator and Context View with operator AND -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorAndContextViewWithOperatorAND | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42722 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorAndContextViewWithOperatorOR-gPlanning
  Scenario: validate disabling of Associate button for profile Sys Administrator and Context View with operator OR -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorAndContextViewWithOperatorOR | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42806 @all @hideExpressioJsonForRightOperandForContextViewAndUserAppSAGrantorWithOperatorAND-gPlanning
  Scenario: validate disabling of Associate button for context view and user app state as grantor with operator AND -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForContextViewAndUserTypeSAGrantorWithOperatorAND | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42807 @all @hideExpressioJsonForRightOperandForContextViewAndUserAppSAGrantorWithOperatorOR-gPlanning
  Scenario: validate disabling of Associate button for context view and user app state as grantor with operator OR -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForContextViewAndUserTypeSAGrantorWithOperatorOR | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42808 @all @hideExpressioJsonForRightOperandForFieldAndUserTypeInternalWithOperatorAND-gPlanning
  Scenario: validate disabling of Associate button for Field and user type internal with operator AND -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldAndUserTypeInternalWithOperatorAND | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42833 @all @hideExpressioJsonForRightOperandForFieldAndProfileSystemAdministratorWithOperatorAND-gPlanning
  Scenario: validate disabling of Associate button for Field and profile system administrator with operator AND -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldAndProfileSystemAdministratorWithOperatorAND | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42835 @all @hideExpressioJsonForRightOperandForFieldAndProfileSystemAdministratorWithOperatorOR-gPlanning
  Scenario: validate disabling of Associate button for Field and profile system administrator with operator OR -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldAndProfileSystemAdministratorWithOperatorOR | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42836 @all @hideExpressioJsonForRightOperandForFieldAndContextEditWithOperatorAND-gPlanning
  Scenario: validate disabling of Associate button for Field and context edit with operator AND -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldAndContextEditWithOperatorAND | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42837 @all @hideExpressioJsonForRightOperandForFieldAndContextEditWithOperatorOR-gPlanning
  Scenario: validate disabling of Associate button for Field and context edit with operator OR -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldAndContextEditWithOperatorOR | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42838 @all @hideExpressioJsonForRightOperandForFieldAndUserAppSAGrantorWithOperatorAND-gPlanning
  Scenario: validate disabling of Associate button for Field and user app state as grantor with operator AND -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldAndUserAppSAGrantorWithOperatorAND | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @42839 @all @hideExpressioJsonForRightOperandForFieldAndUserAppSAGrantorWithOperatorOR-gPlanning
  Scenario: validate disabling of Associate button for Field and user app state as grantor with operator OR -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldAndUserAppSAGrantorWithOperatorOR | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @43226 @all @hideExpressioJsonForLeftOperandForFieldWithOperatorNotEquals-gPlanning
  Scenario: validate Associate button is present for Field with operator NotEquals -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorNotEquals | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table

  @43229 @all @hideExpressioJsonForLeftOperandForFieldWithOperatorNotEqualsAtDifferentPrograms-gPlanning
  Scenario: validate Associate button is not present for other programs which is not defined in Json  with operator NotEquals -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorNotEquals | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation-SA to C"
    When I click on "View Program Details" icon for "Test program for automation-SA to C" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @43720 @all @hideExpressioJsonForLeftOperandForFieldUsingPicklistWithOperatorEqualsTo-gPlanning
  Scenario: validate disabling of Associate button for field using picklist value grant with operator Equals To -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldUsingPicklistWithOperatorEqualsTo | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @43721 @all @hideExpressioJsonForLeftOperandForFieldUsingLookupWithOperatorEqualsTo-gPlanning
  Scenario: validate disabling of Associate button for field using lookup relationship with operator Equals To -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldUsingLookupWithOperatorEqualsTo | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @43722 @all @hideExpressioJsonForLeftOperandForFieldUsingPicklistWithOperatorNotEqualsTo-gPlanning
  Scenario: validate Associate button is present for Field using picklist with operator Not Equals To -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldUsingPicklistWithOperatorNotEqualsTo | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table

  @43723 @all @hideExpressioJsonForLeftOperandForFieldUsingLookupWithOperatorNotEqualsTo-gPlanning
  Scenario: validate Associate button is present for Field using lookup with operator Not Equals To -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldUsingLookupWithOperatorNotEqualsTo | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table

  @43881 @all @hideExpressioJsonForLeftOperandForFieldUsingOperatorContains-gPlanning
  Scenario: validate disabling of Associate button for field with operator Contains -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorContains | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table not displayed

  @43883 @all @hideExpressioJsonForLeftOperandForFieldUsingOperatorLessThanEquals-gAnnouncement
  Scenario: validate disabling of Associate button for field with operator Less than equals -gAnnouncement
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | AnnouncementFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                        | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldWithLessThanEquals | AnnouncementFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Accounts" flex table not displayed

  @43884 @all @hideExpressioJsonForLeftOperandForFieldUsingOperatorLessThanEqualsWithDiffAnnouncement-gAnnouncement
  Scenario: validate disabling of Associate button for field with operator equals(less than equals) -gAnnouncement
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | AnnouncementFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                        | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldWithLessThanEquals | AnnouncementFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    When I perform quick search for "Test 11-Jul"
    When I click on "View" icon for "Test 11-Jul" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Accounts" flex table not displayed

  @43885 @all @hideExpressioJsonForLeftOperandForFieldUsingOperatorGreaterThanEquals-gAnnouncement
  Scenario: validate disabling of Associate button for field with operator greater than equals -gAnnouncement
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | AnnouncementFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                           | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldWithGreaterThanEquals | AnnouncementFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Accounts" flex table not displayed

  @43886 @all @hideExpressioJsonForLeftOperandForFieldUsingOperatorGreaterThanEqualsWithDifferentAnnouncement-gAnnouncement
  Scenario: validate disabling of Associate button for field with operator euuals(greater than equals) -gAnnouncement
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | AnnouncementFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                           | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldWithGreaterThanEquals | AnnouncementFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    When I perform quick search for "Non-NC-Sole Source"
    When I click on "View" icon for "Non-NC-Sole Source" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Accounts" flex table not displayed

  @43887 @all @hideExpressioJsonForLeftOperandForFieldUsingOperatorLessThan-gAnnouncement
  Scenario: validate disabling of Associate button for field with operator less than -gAnnouncement
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | AnnouncementFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                          | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorLessThan | AnnouncementFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Accounts" flex table not displayed

  @43888 @all @hideExpressioJsonForLeftOperandForFieldUsingOperatorGreaterThan-gAnnouncement
  Scenario: validate disabling of Associate button for field with operator greater than -gAnnouncement
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | AnnouncementFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                             | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorGreaterThan | AnnouncementFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I select "Draft Announcements" from double headed dropdown inside admin portal
    When I perform quick search for "Non-NC-Sole Source"
    When I click on "View" icon for "Non-NC-Sole Source" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Accounts" flex table not displayed

  @43889 @all @hideExpressioJsonForLeftOperandForFieldUsingOperatorNotIn-gPlanning
  Scenario: validate Associate button is present for Field using lookup with operator Not In -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON |                   | ProgramFundingAccount | Name                      | Associate                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorNotIn | ProgramFundingAccount | Name                      | Associate                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    Then I see "Associate" button inside "Funding Account Information" flex table

  @43890 @all @hideExpressioJsonForLeftOperandForProfilePMAtPageLayout-gPlanning
  Scenario: Hide Submit for approval button for Profile PM using hide expression Json -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForProfilePM | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @43891 @all @hideExpressioJsonForLeftOperandForProfilePMAndSystemAdminAtPageLayout-gPlanning
  Scenario: Hide Submit for approval button for Profile PM (PM and System Admin)using hide expression Json -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForProfilePMAndSysAdmin | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @43892 @all @hideExpressioJsonForLeftOperandForProfileSystemAdminAndPMAtPageLayout-gPlanning
  Scenario: Hide Submit for approval button for Profile PM (System Admin and PM)using hide expression Json -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForProfilePMAndSysAdmin | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @43893 @all @hideExpressioJsonForLeftOperandForProfilePMWithOperatorNotInAtPageLayout-gPlanning
  Scenario: Validate submit for approval button is present for Profile PM with operator Not In using hide expression Json -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForProfilePMWithNotInOperator | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is displayed

  @44158 @all @hideExpressioJsonForLeftOperandForProfilePMWithOperatorNotInLoggingAsAdmminAtPageLayout-gPlanning
  Scenario: Hide Submit for approval button for system admin using Profile PM with operator Not In -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForProfilePMWithNotInOperator | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44160 @all @hideExpressioJsonForLeftOperandForUserTypeInternalWithOperatorInAtPageLayout-gPlanning
  Scenario: Hide Submit for approval button for internal user using user type internal and operator In -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeInternalWithOperatorIn | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44210 @all @hideExpressioJsonForLeftOperandForUserTypeInternalWithOperatorNotInAtPageLayout-gPlanning
  Scenario: Validate submit for approval button is present for internal user using user type internal and operator NotIn -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeInternalWithOperatorNotIn | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is displayed

  @44211 @all @hideExpressioJsonForLeftOperandForUserTypeInternalWithOperatorNotInAtPageLayout-Reviewer-gPlanning
  Scenario: Hide submit for approval button for different user like reviewer except internal user using user type internal and operator NotIn -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeInternalWithOperatorNotIn | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation-Reviewer" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44212 @all @hideExpressioJsonForLeftOperandForUserTypeInternalAndReviewerAndApplicantWithOPeratorInAtPageLayout-Internal-gPlanning
  Scenario: Hide submit for approval button for user like intenal and applicant and reviewer using user type internal Applicant and reviewer and operator In -Internal-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeInternalApplicantReviewerWithOperatorIn | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44213 @all @hideExpressioJsonForLeftOperandForUserTypeInternalAndReviewerAndApplicantWithOPeratorInAtPageLayout-Reviewer-gPlanning
  Scenario: Hide submit for approval button for user like intenal and applicant and reviewer using user type internal Applicant and reviewer and operator In -Reviewer-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeInternalApplicantReviewerWithOperatorIn | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation-Reviewer" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44214 @all @hideExpressioJsonForLeftOperandForUserTypeInternalAndReviewerAndApplicantWithOPeratorInAtPageLayout-Applicant-gPlanning
  Scenario: Hide submit for approval button for user like intenal and applicant and reviewer using user type internal Applicant and reviewer and operator In -Applicant-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeInternalApplicantReviewerWithOperatorIn | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation-Applicant" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44215 @all @hideExpressioJsonForLeftOperandForContextViewWithOperatorInAtPageLayout-gPlanning
  Scenario: Hide submit for approval button for context view with operator IN-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForContextViewWithOperatorIn | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44216 @all @hideExpressioJsonForLeftOperandForContextViewWithOperatorNotInAtPageLayout-gPlanning
  Scenario: Validate submit for approval button is present for context view with operator Not IN-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForContextViewWithOperatorNotIn | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is displayed

  @44222 @all @hideExpressioJsonForLeftOperandForUserTypeStateAsGrantorWithOperatorInAtPageLayout-gPlanning
  Scenario: Hide submit for approval button for user type state as grantor with operator IN-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeSAGrantorWithOperatorIn | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44223 @all @hideExpressioJsonForLeftOperandForUserTypeStateAsGranteeWithOperatorInAtPageLayout-gAnnouncement
  Scenario: Hide submit for approval button for user type state as grantee with operator IN-gOpportunities
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | AnnouncementGrantee | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                          | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeSAGranteeWithOperatorIn | AnnouncementGrantee | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantee"
    And I navigate to "Opportunities" tab
    When I perform quick search for "ROSES 2018: Rapid Response and Novel Research in Earth Science"
    When I click on "View" icon for "ROSES 2018: Rapid Response and Novel Research in Earth Science" inside table
    When I navigate to "Overview" sub tab
    Then I see "Submit For Approval" button is not displayed

  @44282 @all @hideExpressioJsonForLeftOperandForUserAppStateAsAdministratorWithOperatorInAtPageLayout-gPlanning
  Scenario: Hide Activate button for user type state as Administrator with operator IN-gSetup
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | GranteeOrganizationInternal | Name                      | Activate                   |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                | coreComponentField          | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeSAAdministratorWithOperatorIn | GranteeOrganizationInternal | Name                      | Activate                   |
    When I login as "Automation" user
    When I setup my app as "As an Administrator"
    And I navigate to "Setup" tab
    When I select "Draft Internal Organizations" from double headed dropdown inside admin portal
    When I click on "View" icon for "Automation test organization" inside table
    When I navigate to "Overview" sub tab
    Then I see "Activate" button is not displayed

  @44284 @all @hideExpressioJsonForLeftOperandForFieldWithOperatorEqualsAtPageLayout-gPlanning
  Scenario: Hide submit for approval button for field with operator Equals-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForFieldWithOperatorEquals | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44285 @all @hideExpressioJsonForLeftOperandForProfileSystemAdministratorAndUserTypeInternalInternalWithOperatorANDAtPageLayout-gPlanning
  Scenario: Hide Submit for approval button for profile system administrator and user type internal with operator AND-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForProfileSysAdminAndUserTypeInternalWithOperatorAND | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44286 @all @hideExpressioJsonForLeftOperandForProfileSystemAdministratorAndUserTypeInternalInternalWithOperatorORAtPageLayout-gPlanning
  Scenario: Hide Submit for approval button for profile system administrator and user type internal with operator OR-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForProfileSysAdminAndUserTypeInternalWithOperatorOR | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44316 @all @hideExpressioJsonForLeftOperandForUserTypeInternalContextViewWithOperatorANDAtPageLayout-gPlanning
  Scenario: Hide Submit for approval button for user type internal and context view with operator AND-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeInternalContextViewWithOperatorAND | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44317 @all @hideExpressioJsonForLeftOperandForUserTypeInternalContextViewWithOperatorORAtPageLayout-gPlanning
  Scenario: Hide Submit for approval button for user type internal and context view with operator OR-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeInternalContextViewWithOperatorOR | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @44318 @all @hideExpressioJsonForLeftOperandForUserTypeInternalUserAppSAGrantorWithOperatorANDAtPageLayout-gPlanning
  Scenario: Hide Submit for approval button for user type internal and user app state as grantor with operator AND-gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForUserTypeInternalUserAppSAGrantorWithOperatorAND | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @45289 @all @HideExpressionLeftOperandUseOROperatorWithWHEREClauseAsADMINandAppAsStateGrantorPageLayout-gPlanning
  Scenario: Hide Submit for approval button for user type internal and user app state as grantor with operator OR -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForLeftOperandsUsingOROperator | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @45291 @all @HideExpressionLeftOperandUseANDOperatorWithWHEREClauseAsADMINandAppAsStateGrantorPageLayout-gPlanning
  Scenario: Hide Submit for approval button for user type internal and user app state as grantor with operator AND -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForLeftOperandsUsingANDOperator | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @45294 @all @HideExpressionLeftOperandUseAllDataTypesOfFieldUsingANDOperatorWithWHEREClauseAsADMINandAppAsStateGrantorPageLayout-gPlanning
  Scenario: Hide Submit for approval button for user type internal and user app state as grantor with Use All Data Types Of Field Using AND operator -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionBuilderJsonForLeftOperandsAllDataTypeOfFieldUsingANDOperator | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @45295 @all @hide_expression_using_OR_operator_for_fields_text,picklist,date,lookup,longtextarea
  Scenario: Hide SUBMIT FOR APPROVAL button for user type internal and user app state as grantor with Use All Data Types Of Field Using OR operator for fields text,picklist,date,lookup,longtextarea -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutActionHideExpressionLeftOperandOROperator | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @45296 @all @hide_expression_using_AND_operator_for_all_fields_using_group_expression
  Scenario: Hide SUBMIT FOR APPROVAL button for user type internal and user app state as grantor with Use All Data Types Of Field Using AND operator for all fields using group expression -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutActionHideExpressionForAllFiledsWithANDOperatorUsingGroupExpression | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @45306 @all @hide_expression_using_OR_operator_using_group_expression
  Scenario: Hide SUBMIT FOR APPROVAL button for user type internal and user app state as grantor with group expression using OR Operator -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutActionHideExpressionForGroupExpressionWithOROperator | Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed

  @45311 @all @hide_expression_using_IN_operator_for_left_operand_profile_as_Admin
  Scenario: Hide SUBMIT FOR APPROVAL button for user type internal and user app state as grantor with left operand profile as Admin using IN Operator -gPlanning
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabsConfigOverviewHideExpressionWithOperatorIN | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45313 @all @hide_expression_Overview_Tab_using_IN_operator_and_Left_Operand=Profile_As_PM
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with IN operand and Left operator as Profile PM -gPlanning
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabsConfigOveriviewHideExpressionWithOperatorINAndUserPM | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45316 @all @hide_expression_Overview_Tab_using_OR_operator_and_Left_Operand=Profile_As_Admin_PM
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with OR operand and Left operator as Profile Admin PM -gPlanning
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabsConfigOveriviewHideExpressionWithOperatorORAndUserAdminPM | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45317 @all @hide_expression_Overview_Tab_using_IN_operator_and_Left_Operand_USERTYPE=Internal
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with IN operator and Left Operand USERTYPE
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabsConfigOveriviewHideExpressionWithOperatorINAndOperandUSERTYPE | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45319 @all @hide_expression_Overview_Tab_using_AND_operator_and_Left_Operand_USERTYPE=Internal
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with AND operator and Left Operand USERTYPE
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabsConfigOveriviewHideExpressionWithOperatorANDAndOperandUSERTYPEAsInternal | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45320 @all @hide_expression_Overview_Tab_using_IN_operator_and_Left_Operand_AS_Context_View
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with IN operator and Left Operand AS Context View
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabOverviewHideExpressionWithLeftOperandAsViewAndOperatorIN | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45322 @all @hide_expression_Overview_Tab_using_NOTIN_operator_and_Left_Operand_AS_Context
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with NOTIN operator and Left Operand AS Context
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabOverviewHideExpressionWithLeftOperandASContextAndOperatorNOTIN | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45323 @all @hide_expression_Overview_Tab_using_AND_operator_and_Left_Operand_AS_Context_View_And_Admin_Profile
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with AND operator and Left Operand AS Context View and Admin Profile
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabOverviewHideExpressionWithLeftOperandASContextViewAndAdminProfileAndOperatorAND | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45324 @all @hide_expression_Overview_Tab_using_OR_operator_and_Left_Operand_AS_Context_And_Profile
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with OR operator and Left Operand AS Context And Profile
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabOverviewHideExpressionWithLeftOperandASContextAndProfileWithOperatorOR | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45325 @all @hide_expression_Overview_Tab_using_OR_operator_and_Left_Operand_AS_Context_View_And_Admin_Profile
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with OR operator and Left Operand AS Context View and Admin Profile
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabOverviewHideExpressionWithLeftOperandASContextAsViewAndProfileAsAdminWithOperatorOR | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45327 @all @hide_expression_Overview_Tab_using_AND_operator_and_Left_Operand_AS_Context_And_UserType
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with AND operator and Left Operand AS Context and UserType
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabOverviewHideExpressionWithLeftOperandContextAndUserTypeWithOperatorAND | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45329 @all @hide_expression_Overview_Tab_using_OR_operator_and_Left_Operand_AS_Context_And_UserType
  Scenario: Hide OVERVIEW Tab for user type internal and user app state as Grantor with OR operator and Left Operand AS Context and UserType
    Given I have default configuration as below:
      | configurationCategory               | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON |                   | Grantee State Program | Name                      | TAB-029                    |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName            | fieldNewValue                                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Hide Expression JSON | govgrants_config:PageTabOverviewHideExpressionWithLeftOperandContextEditCreateWithNOTINOperatorUserTypeWithINOperatorUsingOROperator | Grantee State Program | Name                      | TAB-029                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Overview" sub tab is not displayed at view detail page

  @45702 @all @hide_expression_Program_Information_Page_Block_IN_Operator_SysAdmin_Profile
  Scenario: Hide Program Information from Overview Tab for user type internal using IN operator System Admin
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandProfilesSystemAdminAndOperatorIN | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45704 @all @hide_expression_Program_Information_Page_Block_IN_Operator_PM_User_Profile
  Scenario: Hide Program Information from Overview Tab for PM User type internal using IN operator
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandProfilesPMUserAndOperatorIN | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45705 @all @hide_expression_Program_Information_Page_Block_IN_Operator_PM_ADMIN_User_Profile
  Scenario: Hide Program Information from Overview Tab for PM-ADMIN User type internal using IN operator
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandProfilesPM-ADMINUserAndOperatorIN | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed  

  @45709 @all @hide_expression_Program_Information_Page_Block_UserTypeIN_Internal_AND_ProfileIN_SystemAdministrator
  Scenario: Hide Program Information from Overview Tab for ADMIN User type internal using (UserTypeIN(Internal)ANDProfileIN(SystemAdministrator))
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionLeftOperands(UserTypeIN(Internal)ANDProfileIN(SystemAdministrator)) | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45707 @all @hide_expression_Program_Information_Page_Block_LeftOperandsprofileNOTINoperator_ADMIN_PM
  Scenario: Hide Program Information from Overview Tab for ADMIN PM User type internal using LeftOperandsprofileNOTINoperator(ADMIN,PM)
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionLeftOperandsprofileNOTINoperator(ADMIN,PM) | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title

  @45708 @all @hide_expression_Program_Information_Page_Block_LeftOperands_UserTypeIN_Internal
  Scenario: Hide Program Information from Overview Tab for ADMIN User type internal using LeftOperands(UserTypeIN(Internal))
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionLeftOperands(UserTypeIN(Internal)) | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @45711 @all @hide_expression_Program_Information_Page_Block_Title_Context_InEdit
  Scenario: Hide Program Information from Overview Tab for ADMIN User type internal using Context IN at program edit page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandContextInEditForPageBlockTitle| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @45712 @all @hide_expression_Program_Information_Page_Block_Title_Context_InView
  Scenario: Hide Program Information from Overview Tab for ADMIN User type internal using context IN at program view page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandContextInViewForPageBlockTitle| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
   @45713 @all @hide_expression_Program_Information_Page_Block_Title_Context_NotIn_With_Create_Edit
   Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User type internal using context NOT IN (create,Edit)at program Edit page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandContextNOTInWith(create,edit)ForPageBlockTitle| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title

  @45719 @all @hide_expression_Program_Information_Page_Block_Title_Context_NOT_IN_Edit_Create_OR_UserType_IN_Internal
  Scenario: Hide Program Information from Overview Tab for ADMIN User type internal using (Context NOT IN ( Edit, Create ) OR UserType IN ( Internal ))
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandContext_NOT_IN_Edit_Create_OR_UserType_IN_Internal| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45717 @all @hide_expression_Program_Information_Page_Block_Title_Context_Context_NOT_IN_Edit_Create_AND_UserType_IN_Internal
  Scenario: Hide Program Information from Overview Tab for ADMIN User type internal using (Context NOT IN ( Edit, Create ) OR UserType IN ( Internal ))
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandContext_NOT_IN_Edit_Create_AND_UserType_IN_Internal| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title

  @45716 @all @hide_expression_Program_Information_Page_Block_Title_Context_Context_IN_View_OR_Profile_IN_System_Administrator
  Scenario: Hide Program Information from Overview Tab for ADMIN User type internal using (Context IN ( View ) OR Profile IN ( System Administrator ))
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandContext_IN_View_OR_Profile_IN_System_Administrator| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45714 @all @hide_expression_Program_Information_Page_Block_Title_Context_IN_View_AND_Profile_IN_System_Administrator
  Scenario: Hide Program Information from Overview Tab for ADMIN User type internal using (Context IN (View) AND Profile IN (System Administrator))
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandContext_IN_View_AND_Profile_IN_System_Administrator| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45715 @all @hide_expression_Program_Information_Page_Block_Title_Context_NOT_IN_Edit_Create_OR_Profile_IN_System_Administrator_Validate_using_PM_profile
  Scenario: Hide Program Information from Overview Tab for ADMIN User type internal using (Context NOT IN( Edit,Create) OR Profile IN (System Administrator ))-Validate using PM profile
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandContext_NOT_IN_Edit_Create_OR_Profile_IN_System_Administrator_Validate_using_PM_profile| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title
    
    @45868 @all @hide_expression_Program_Information_Page_Block_Title_For_Field_FundedAmount__c_EqualTo_400000 
   Scenario: Hide Program Information from Overview Tab for ADMIN User using field (FundedAmount_c=400000) at program view page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                  | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand(Field(FundedAmount_c_Equals_To_400000))| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
   @45872 @all @hide_expression_Program_Information_Page_Block_Title_For_Field_FundedAmount__c_NotEqualTo_400000 
   Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using field (FundedAmount_c!=400000) at program view page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                     | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand(Field(FundedAmount_c_NotEquals_To_400000))| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title
    
   @45875 @all @hide_expression_Program_Information_Page_Block_Title_For_Field_Number__c_greaterThan_5678
   Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using field (Number__c > 5678) at program view page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                            | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand(Field(Number_c_greaterThan_5678))| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title
    
   @45876 @all @hide_expression_Program_Information_Page_Block_Title_For_Field_Number__c_lessThan_5678
   Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using field (Number__c < 5678) at program view page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                         | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand(Field(Number_c_lessThan_5678))| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title
    
   @45877 @all @hide_expression_Program_Information_Page_Block_Title_For_Field_CFDA_Data__c_equalto_true
   Scenario: Hide Program Information from Overview Tab for ADMIN User using field (CFDA_Data__c=true) at program view page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                           | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand(Field(CFDA_Data__c_equalto_true)| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
   @45878 @all @hide_expression_Program_Information_Page_Block_Title_For_Field_CFDA_Data__c_notequalto_true
   Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using field (CFDA_Data__c != true) at program view page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand(Field(CFDA_Data__c_notequalto_true)| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title

  @45748 @all @hide_expression_Program_Information_Page_Block_Title_Context_NOT_IN_Edit_Create_OR_Profile_IN_System_Administrator_PMUser
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using field (Context NOT IN( Edit,Create) OR Profile IN (System Administrator ))-Validate using PM profile
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandContext_NOT_IN_Edit_Create_OR_Profile_IN_System_Administrator_PMUser| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title

  @45821 @all @hide_expression_Program_Information_Page_Block_Title_Context_UserApp_IN_StateasGrantor
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using field ( UserApp IN ( StateasGrantor ))
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandContext_UserApp_IN_StateasGrantor| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45822 @all @hide_expression_Program_Information_Page_Block_Title_Context_UserApp_NOT_IN_StateasGrantor
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using field ( UserApp NOTIN ( StateasGrantor ))
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandContext_UserApp_NOT_IN_StateasGrantor| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title

  @45843 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperand_Equals_ProgramType__c_Grant
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Field(Equals) ProgramType__c = Grant)
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Equals_ProgramType__c_Grant| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45844 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperand_Not_Equals_ProgramType_c_Grant
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Field(Not Equals)(ProgramType__c != Grant)
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Not_Equals_ProgramType_c_Grant| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title

  @45845 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperand_Not_Equals_Account_r_Name_Department_of_Community_Health
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Field Equals( Account__r.Name = Department of Community Health )
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Equals_Account__r.Name_Department_of_Community_Health | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45850 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperand_less_than_equals_StartDate__c_11_30_2020
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Field less than equals ( StartDate__c <= 11/30/2020 )
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_less_than_equals_StartDate__c_11_30_2020 | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45849 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperand_Greater_than_equals_StartDate__c_11_30_2020
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Field Greater than equals( StartDate__c >= 11/30/2020 )
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Greater_than_equals_StartDate__c_11_30_2020 | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45848 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperand_NOT_Equals_FunderType__c_Federal
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Field NOT Equals( FunderType__c != Federal )
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_NOT_Equals_FunderType__c_Federal | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title

  @45846 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperand_Not_Equals_Account__r_Name_Department_of_Community_Health
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Field Not Equals( Account__r.Name != Department of Community Health )
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Not_Equals_Account__r_Name_Department_of_Community_Health | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title

  @45847 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperand_FederalProgramCFDA__c_CONTAINS_TPA01
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Field (FederalProgramCFDA__c CONTAINS TPA01)
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_FederalProgramCFDA__c_CONTAINS_TPA01 | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
    @45854 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperandField_Account__r.Name_IN_DepartmentofCommunityHealth_OR_StartDate__c_greaterthan_11/30/2020
  Scenario: Hide Program Information from Overview Tab using field Account__r.Name IN Department of Community Health OR StartDate__c > 11/30/2020 ) at program view page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                                                                      | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandField(Account__r_Name_IN_DepartmentofCommunityHealth_OR_StartDate__c_greaterthan_11/30/2020)| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @45855 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperandField_UserApp_IN_StateasGrantor_for_AND
  Scenario: Hide Program Information from Overview Tab using field (UserApp IN (StateasGrantor)) for AND at program view page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                                           | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:hide_expression_Program_Information_Page_Block_Title_LeftOperandField_UserApp_IN_StateasGrantor_for_AND| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed  
    
  @45859 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperandField_FunderType__c_CONTAINS_Federal
  Scenario: Set up configuration for Hide Program Information from Overview Tab using Field (FunderType__c CONTAINS Federal) program view page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                                        | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:hide_expression_Program_Information_Page_Block_Title_LeftOperandField_FunderType__c_CONTAINS_Federal| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @45879 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperandField_CFDA_Data__c_equalto_true_for_OR
  Scenario: Set up configuration for Hide Program Information from Overview Tab using Field Field ( CFDA_Data__c = true ) for OR program view page
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                                          | coreComponentField    | coreCOmponentSubFieldName| coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:hide_expression_Program_Information_Page_Block_Title_LeftOperandField_CFDA_Data__c_equalto_true_for_OR| Grantee State Program | GNT__PageBlockTitle__c   | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @45917 @all @hide_expression_ProgramCode_With_UserType_Internal
  Scenario: Set up configuration for Hide Program code from Overview page block using user type internal at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_UserType_Internal| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail
    
  @45918 @all @hide_expression_ProgramCode_With_UserType_NotIn_Internal
  Scenario: Set up configuration for Hide Program code from Overview page block using user type Not In Internal at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_UserType_NotIn_Internal| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation-Reviewer" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail
    
  @45919 @all @hide_expression_ProgramCode_With_Profile_In_SystemAdministrator
  Scenario: Set up configuration for Hide Program code from Overview page block using profile In system administrator at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_Profile_In_SystemAdministrator| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail
    
  @45920 @all @hide_expression_ProgramCode_With_Context_In_View
  Scenario: Set up configuration for Hide Program code from Overview page block using context In view at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_Context_In_View| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail
    
  @45921 @all @hide_expression_ProgramCode_With_Context_In_Edit
  Scenario: Set up configuration for Hide Program code from Overview page block using context In edit at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_Context_In_Edit| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail
    
  @45923 @all @hide_expression_ProgramCode_With_Context_NotIn_View
  Scenario: Set up configuration for Hide Program code from Overview page block using context Not In View at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_Context_NotIn_View| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail
    
  @45924 @all @hide_expression_ProgramCode_With_Context_NotIn_Edit
  Scenario: Set up configuration for Hide Program code from Overview page block using context Not In Edit at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_Context_NotIn_Edit| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail
    
  @45925 @all @hide_expression_ProgramCode_With_UserApp_In_StateAsGrantor
  Scenario: Set up configuration for Hide Program code from Overview page block using UserApp In State As Grantor at program edit page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_UseApp_In_StateAsGrantor| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail
    
  @45926 @all @hide_expression_ProgramCode_With_UserApp_NotIn_StateAsGrantor
  Scenario: Set up configuration for Hide Program code from Overview page block using UserApp NotIn State As Grantor at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                 | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_UseApp_NotIn_StateAsGrantor| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" inside page block details
    
  @45930 @all @hide_expression_ProgramCode_With_UserType_Internal_Profile_Admin_Operator_AND
  Scenario: Set up configuration for Hide Program code from Overview page block using UserType Internal and profile Admin with operator AND at program edit page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_UserType_Internal_profile_Admin_With_Operator_AND| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail
    
  @45932 @all @hide_expression_ProgramCode_With_UserType_Internal_Profile_Admin_Operator_OR
  Scenario: Set up configuration for Hide Program code from Overview page block using UserType Internal and profile Admin with operator OR at program edit page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                                      | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_UserType_Internal_profile_Admin_With_Operator_OR| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail
    
  @45933 @all @hide_expression_ProgramCode_With_Context_AND_UserApp_StateAsGrantor
  Scenario: Set up configuration for Hide Program code from Overview page block using Context AND and UserApp State As Grantor at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_Context_AND_UserApp_StateAsGrantor| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail
    
  @45934 @all @hide_expression_ProgramCode_With_Context_OR_UserApp_StateAsGrantor
  Scenario: Set up configuration for Hide Program code from Overview page block using Context OR and UserApp State As Grantor at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetail_hide_expression_Program_Code_with_Context_OR_UserApp_StateAsGrantor| Grantee State Program | Name                      | PBD-3098                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Code" is not displayed inside page block detail

  @45823 @all @hide_expression_Program_Information_Page_Block_Title_Context_UserApp_IN_StateasGrantor_PM
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using field ( UserApp IN ( StateasGrantor )) for PM user
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_UserApp_IN_StateasGrantor_PM | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantee"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Activities" subheader on left panel
    When I perform quick search for "Test Announcement For Automation"
    When I click on "view" icon for "Test Announcement For Automation" inside table
    Then I see "Program Information" page block title

  @45853 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperand_FunderType__c_Federal_OR_ProgramType__c_Grant
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Field (FunderType__c = Federal OR ProgramType__c = Grant )
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_FunderType__c_Federal_OR_ProgramType__c_Grant | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed

  @45852 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperand_Not_Equals_StartDate__c_11_30_2020
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Field Not Equals ( StartDate__c != 11/30/2020 )
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandNot_Equals_StartDate__c_11_30_2020 | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title

  @45851 @all @hide_expression_Program_Information_Page_Block_Title_LeftOperand_Equals_StartDate__c_11_30_2020
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Field Equals( StartDate__c = 11/30/2020 )
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperandEquals_StartDate__c_11_30_2020 | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @46314 @all @hide_expression_Program_Information_Page_Block_LeftOperand_Profile_In_Operator
  Scenario: Set up configuration for Hide Program Information from Overview Tab for ADMIN User using Profile IN operator
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Profile_IN_Operator | Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @45962 @all @hide_expression_Budget_Period_Details_Page_Block_LeftOperand_Profile_NotIN_SystemAdmin_PM_SPI
  Scenario: Set up configuration to display Budget Period Details from Overview Tab for ADMIN SPI PM User using Profile NotIn
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Profile_NOTIN_Admin_PM_SPI| Grantee State Program | Name                      | PB-1133                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Budget Period Details" page block title
    
  @45959 @all @hide_expression_Budget_Period_Details_Page_Block_LeftOperand_UserType_IN_Internal
  Scenario: Set up configuration to hide Budget Period Details from Overview Tab using user type IN Internal
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_UserType_IN_Internal| Grantee State Program | Name                      | PB-1133                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Budget Period Details" page block is not displayed
    
  @45960 @all @hide_expression_Budget_Period_Details_Page_Block_LeftOperand_UserType_NotIN_Internal
  Scenario: Set up configuration to display Budget Period Details inside Overview Tab using user type NOTIN for Internal
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_UserType_NOTIN_Internal| Grantee State Program | Name                      | PB-1133                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Budget Period Details" page block title
    
  @45963 @all @hide_expression_Budget_Period_Details_Page_Block_LeftOperand_UserType_NotIN_Internal_Applicant_Reviewer
  Scenario: Set up configuration to display Budget Period Details inside Overview Tab using user type NOTIN for Internal and Applicant and Reviewer
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_UserType_NOTIN_Internal_Applicant_Review| Grantee State Program | Name                      | PB-1133                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Budget Period Details" page block title
    
  @45964 @all @hide_expression_Budget_Period_Details_Page_Block_LeftOperand_Profile_IN_or_UserType_IN
  Scenario: Set up configuration to hide Budget Period Details inside Overview Tab using profile IN or user type IN
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Profile_IN_or_UserType_IN| Grantee State Program | Name                      | PB-1133                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Budget Period Details" page block is not displayed
    
  @45965 @all @hide_expression_Program_Contacts_Page_Block_LeftOperand_Profile_IN_PM_SystemAdmin_SPI
  Scenario: Set up configuration to hide Program contacts inside Overview Tab using profile IN for PM System Admin and Spi user
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Profile_IN_PM_Admin_SPI| Grantee State Program | Name                      | PB-162                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Contacts" page block is not displayed   
    
  @45966 @all @hide_expression_Program_Contacts_Page_Block_LeftOperand_Context_NotIN__Create_Edit
  Scenario: Set up configuration to display Program contacts inside Overview Tab using context NOTIN (Create,Edit)
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Context_NotIN_Create_Edit| Grantee State Program | Name                      | PB-162                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Contacts" page block title
    
  @45967 @all @hide_expression_Program_Contacts_Page_Block_LeftOperand_UserApp_NotIN_StateAsGrantor
  Scenario: Set up configuration to display Program contacts inside Overview Tab using UserApp NOTIN (StateAsGrantor)
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_UserApp_NOTIN_StateAsGrantor| Grantee State Program | Name                      | PB-162                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Contacts" page block title
    
  @45969 @all @hide_expression_Program_Contacts_Page_Block_LeftOperand_UserApp_IN
  Scenario: Set up configuration to hide Program contacts inside Overview Tab using UserApp IN
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_UserApp_IN| Grantee State Program | Name                      | PB-162                     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Contacts" page block is not displayed
    
  @45984 @all @hide_expression_Program_Information_Page_Block_LeftOperand_Profile_NOTIN_SPI_PM
  Scenario: Set up configuration to hide Program Information inside Overview Tab using Profile NOTIN for PM, SPI
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Profile_NOTIN_SPI_PM| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @45985 @all @hide_expression_Program_Information_Page_Block_LeftOperand_Account_r_Name_CONTAINS_DepartmentOfCommunityHealth
  Scenario: Set up configuration to hide Program Information inside Overview Tab using (Account__r.Name CONTAINS Department of Community Health)
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Account_r_Name_CONTAINS_DepartmentOfCommunityHealth| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed  

  @45986 @all @hide_expression_Program_Information_Page_Block_LeftOperand_Profile_IN_SystemAdministrator_AND_Profile_IN_PM
  Scenario: Set up configuration to hide Program Information inside Overview Tab using Profile IN System Administrator AND Profile IN PM
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Profile_IN_SystemAdministrator_AND_Profile_IN_PM| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @45988 @all @hide_expression_Program_Information_Page_Block_LeftOperand_Profile_IN_SystemAdministrator_OR_PM
  Scenario: Set up configuration to hide Program Information inside Overview Tab using Profile IN System Administrator OR PM
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Profile_IN_SystemAdministrator_OR_PM| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @45989 @all @hide_expression_Program_Information_Page_Block_LeftOperand_UserType_NOTIN__Internal_Applicant
  Scenario: Set up configuration to display Program Information inside Overview Tab using (UserType NOT IN( Internal,Applicant ))
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_UserType_NOTIN_Internal_Applicant| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block title
    
  @45991 @all @hide_expression_Program_Information_Page_Block_LeftOperand_UserType_IN_Internal_Applicant_Reviewer
  Scenario: Set up configuration to hide Program Information inside Overview Tab using (UserType IN(Internal,Applicant,Reviewer ))
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_UserType_IN_Internal_Applicant_Reviewer| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation-Reviewer" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @45993 @all @hide_expression_Program_Information_Page_Block_LeftOperand_Federal_OR_StartDate
  Scenario: Set up configuration to hide Program Information inside Overview Tab using Field Federal OR StartDate
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Federal_OR_StartDate| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @46051 @all @hide_expression_Program_Information_Page_Block_LeftOperand_Funder_OR_UserApp
  Scenario: Set up configuration to hide Program Information inside Overview Tab using Field Funder OR UserApp
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_Funder_OR_UserApp| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @46064 @all @hide_expression_Program_Information_Page_Block_LeftOperand_ExpectedFunding_OR_UserApp
  Scenario: Set up configuration to hide Program Information inside Overview Tab using Field ExpectedFunding OR UserApp
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_ExpectedFunding_OR_UserApp| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @46065 @all @hide_expression_Program_Information_Page_Block_LeftOperand_UserApp_IN
  Scenario: Set up configuration to hide Program Information inside Overview Tab using UserApp In
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Page Block            | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Hide Expression JSON | govgrants_config:PageBlockHideExpressionWithLeftOperand_UserApp_IN| Grantee State Program | GNT__PageBlockTitle__c    | Program Information        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Program Information" page block is not displayed
    
  @46370 @all @hide_expression_Website_Address_Page_Block_Details_With_FunderType_c_Contains_Federal
  Scenario: Set up configuration for Hide Website address from Overview page block details using Field (FunderType__c CONTAINS Federal) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_FunderType_c_CONTAINS_Federal| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" is not displayed inside page block detail
    
  @46371 @all @hide_expression_Website_Address_Page_Block_Details_With_FunderAccount_c_equalto_40000
  Scenario: Set up configuration for Hide Website address from Overview page block details using Field (FundedAmount__c = 400000) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_FundedAmount_c_equalsto_40000| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" is not displayed inside page block detail
    
  @46372 @all @hide_expression_Website_Address_Page_Block_Details_With_FunderAccount_c_notequalto_40000
  Scenario: Set up configuration for display Website address from Overview page block details using Field (FundedAmount__c != 400000) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_FundedAmount_c_notequalsto_40000| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" inside page block details
    
  @46373 @all @hide_expression_Website_Address_Page_Block_Details_With_StartDate_c_greaterequalto_11_30_2020
  Scenario: Set up configuration for hide Website address from Overview page block details using Field (StartDate__c >= 11/30/2020) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_StartDate_c_greaterequalto_11_30_2020| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" is not displayed inside page block detail
    
  @46375 @all @hide_expression_Website_Address_Page_Block_Details_With_StartDate_c_lessequalto_11_30_2020
  Scenario: Set up configuration for hide Website address from Overview page block details using Field (StartDate__c <= 11/30/2020) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_StartDate_c_lessequalto_11_30_2020| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" is not displayed inside page block detail
    
  @46376 @all @hide_expression_Website_Address_Page_Block_Details_With_Number_c_greaterthan_5678
  Scenario: Set up configuration for display Website address from Overview page block details using Field (Number__c > 5678) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_Number_c_greaterthan_5678| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" inside page block details
    
  @46377 @all @hide_expression_Website_Address_Page_Block_Details_With_Number_c_lessthan_5678
  Scenario: Set up configuration for display Website address from Overview page block details using Field (Number__c < 5678) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_Number_c_lessthan_5678| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" inside page block details
    
  @46378 @all @hide_expression_Website_Address_Page_Block_Details_With_CFDA_Data_c_equalto_true
  Scenario: Set up configuration for hide Website address from Overview page block details using Field (CFDA_Data__c = true) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_CFDA_Data_c_equalto_true| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" is not displayed inside page block detail    
    
  @46379 @all @hide_expression_Website_Address_Page_Block_Details_With_CFDA_Data_c_notequalto_true
  Scenario: Set up configuration for display Website address from Overview page block details using Field (CFDA_Data__c != true) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                             | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_CFDA_Data_c_notequalto_true| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" inside page block details
    
  @46380 @all @hide_expression_Website_Address_Page_Block_Details_With_Number_c_greaterequalto_5678
  Scenario: Set up configuration for hide Website address from Overview page block details using Field (Number__c >= 5678) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_Number_c_greaterequalto_5678| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" is not displayed inside page block detail
    
  @46386 @all @hide_expression_Website_Address_Page_Block_Details_With_CONTAINS_OR_Number
  Scenario: Set up configuration for hide Website address from Overview page block details using Field CONTAINS OR Number at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_CONTAINS_OR_Number| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" is not displayed inside page block detail
    
  @45302 @all @hide_expression_SubmitForApproval_Page_Layout_Using_GROUP_EXPRESSION_With_AND_Operator
  Scenario: Set up configuration for hide Submit For Approval action from page layout GROUP EXPRESSION with AND operator at program view page -gPlanning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON |                   | Grantee State Program | Name                      | Submit For Approval        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                              | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide Expression JSON | govgrants_config:PageLayoutHideExpressionWithLeftOperand_GROUP_EXPRESSION_With_AND_Operator| Grantee State Program | Name                      | Submit For Approval        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submit For Approval" button is not displayed
    
  @46381 @all @hide_expression_Website_Address_Page_Block_Details_With_Number_c_lessequalto_5678
  Scenario: Set up configuration for hide Website address from Overview page block details using Field (Number__c <= 5678) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_Number_c_lessequalto_5678| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" is not displayed inside page block detail
    
  @46383 @all @hide_expression_Website_Address_Page_Block_Details_With_Account_r_Name_equalto_DepartmentOfCommunityHealth
  Scenario: Set up configuration for hide Website address from Overview page block details using Field (Account__r.Name = Department of Community Health) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                                    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_Account_r_Name_equalto_DepartmentOfCommunityHealth| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" is not displayed inside page block detail
    
  @46384 @all @hide_expression_Website_Address_Page_Block_Details_With_Account_r_Name_notequalto_DepartmentOfCommunityHealth
  Scenario: Set up configuration for display Website address from Overview page block details using Field (Account__r.Name != Department of Community Health) at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                                       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_Account_r_Name_notequalto_DepartmentOfCommunityHealth| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" inside page block details
    
  @46388 @all @hide_expression_Website_Address_Page_Block_Details_With_ExpectedFunding_AND_FunderType_CONTAINS
  Scenario: Set up configuration for hide Website address from Overview page block details using Field ExpectedFunding AND FunderType CONTAINS at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                         | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_ExpectedFunding_AND_FunderType_CONTAINS| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" is not displayed inside page block detail
    
  @46389 @all @hide_expression_Website_Address_Page_Block_Details_With_ExpectedFunding_OR_FunderType_CONTAINS
  Scenario: Set up configuration for hide Website address from Overview page block details using Field ExpectedFunding OR FunderType CONTAINS at program view page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:PageBlockDetailsHideExpressionWithLeftOperand_ExpectedFunding_OR_FunderType_CONTAINS| Grantee State Program | Name                      | PBD-4719                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Website Address" is not displayed inside page block detail
    
  @46392 @all @render_expression_SideBar_ManageFundingSource_With_UserType_IN_Internal
  Scenario: Set up configuration for display Manage funding source from side bar using (UserType IN(Internal) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                         | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_UserType_IN_Internal| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is displayed
    
  @46393 @all @render_expression_SideBar_ManageFundingSource_With_UserType_NOTIN_Internal
  Scenario: Set up configuration for hide Manage funding source from side bar using (UserType NOTIN(Internal) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                            | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_UserType_NOTIN_Internal| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is not displayed
    
  @46395 @all @render_expression_SideBar_ManageFundingSource_With_Profile_IN_SystemAdministrator
  Scenario: Set up configuration for display Manage funding source from side bar using Profile IN (System Administrator) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                   | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_Profile_IN_SystemAdministrator| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is displayed
    
  @46396 @all @render_expression_SideBar_ManageFundingSource_With_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration for Hide Manage funding source from side bar using Profile NOTIN (System Administrator) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                      | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_Profile_NOTIN_SystemAdministrator| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is not displayed
    
  @46397 @all @render_expression_SideBar_ManageFundingSource_With_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal
  Scenario: Set up configuration for display Manage funding source from side bar using Profile IN (System Administrator ) AND UserType IN (Internal) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                                            | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is displayed
    
  @46398 @all @render_expression_SideBar_ManageFundingSource_With_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal
  Scenario: Set up configuration for display Manage funding source from side bar using (Profile IN (System Administrator) OR UserType IN (Internal) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                                           | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is displayed
    
  @46415 @all @render_expression_SideBar_ManageFundingSource_With_Profile_IN_SystemAdministrator_AND_Profile_IN_PM
  Scenario: Set up configuration for hide Manage funding source from side bar using (Profile IN (System Administrator) AND Profile IN PM) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                                     | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_Profile_IN_SystemAdministrator_AND_Profile_IN_PM| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is not displayed
    
  @46416 @all @render_expression_SideBar_ManageFundingSource_With_Profile_IN_SystemAdministrator_OR_Profile_IN_PM
  Scenario: Set up configuration for display Manage funding source from side bar using (Profile IN (System Administrator) OR Profile IN PM) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                                    | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_Profile_IN_SystemAdministrator_OR_Profile_IN_PM| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is displayed
    
  @46399 @all @render_expression_SideBar_ManageFundingSource_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration for hide Manage funding source from side bar using (UserType NOT IN (Internal) AND Profile NOT IN (System Administrator) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                     | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_UserType_NOTIN_AND_Profile_NOTIN| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is not displayed
    
  @46400 @all @render_expression_SideBar_ManageFundingSource_With_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration for hide Manage funding source from side bar using (UserType NOT IN (Internal) OR Profile NOT IN (System Administrator) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                    | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_UserType_NOTIN_OR_Profile_NOTIN| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is not displayed
    
  @46417 @all @render_expression_SideBar_ManageFundingSource_With_UserType_IN_Applicant_Reviewer
  Scenario: Set up configuration for hide Manage funding source from side bar using UserType IN Applicant, Reviewer -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                   | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_UserType_IN_Applicant_Reviewer| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is not displayed
    
  @46418 @all @render_expression_SideBar_ManageFundingSource_With_UserType_NOTIN_Applicant_Reviewer
  Scenario: Set up configuration for display Manage funding source from side bar using UserType NOTIN Applicant, Reviewer -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                      | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_UserType_NOTIN_Applicant_Reviewer| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is displayed
    
  @46401 @all @render_expression_SideBar_ManageFundingSource_With_UserType_IN_Applicant_Internal_Reviewer
  Scenario: Set up configuration for display Manage funding source from side bar using (UserType IN (Applicant, Internal, Reviewer) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                            | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_UserType_IN_Applicant_Internal_Reviewer| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is displayed
    
  @46402 @all @render_expression_SideBar_ManageFundingSource_With_UserType_NOTIN_Applicant_Internal_Reviewer
  Scenario: Set up configuration for hide Manage funding source from side bar using (UserType NOT IN (Applicant, Internal, Reviewer) -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                                               | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_UserType_NOTIN_Applicant_Internal_Reviewer| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is not displayed
    
  @46403 @all @render_expression_CustomApp_With_UserType_IN_Internal
  Scenario: Set up configuration for display state as grantor custom app using User Type IN Internal -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                  | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_Custom_App_UserType_IN_Internal| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    
  @46404 @all @render_expression_CustomApp_With_UserType_NOTIN_Internal
  Scenario: Set up configuration for hide state as grantor custom app using User Type NOTIN Internal -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                     | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_Custom_App_UserType_NOTIN_Internal| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed
    
  @46405 @all @render_expression_CustomApp_With_Profile_IN_SystemAdministrator
  Scenario: Set up configuration for display state as grantor custom app using profile IN system administrator -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                 | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_Profile_IN_SystemAdministrator| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    
  @46406 @all @render_expression_CustomApp_With_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration for hide state as grantor custom app using profile NOTIN system administrator -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                    | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_Profile_NOTIN_SystemAdministrator| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed
    
    @46407 @all @render_expression_CustomApp_With_Profile_IN_SystemAdministrator_AND_UserType_In_Internal
  Scenario: Set up configuration for display state as grantor custom app using(Profile IN (System Administrator) AND UserType IN (Internal) -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                                          | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
   
  @46408 @all @render_expression_CustomApp_With_Profile_IN_SystemAdministrator_OR_UserType_In_Internal
  Scenario: Set up configuration for display state as grantor custom app using(Profile IN (System Administrator) OR UserType IN (Internal) -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                                          | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    
  @46410 @all @render_expression_CustomApp_With_Profile_IN_SystemAdministrator_AND_Profile_IN_PM
  Scenario: Set up configuration for hide state as grantor custom app using Profile IN System Administrator AND Profile IN PM -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                                   | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_Profile_IN_SystemAdministrator_AND_Profile_IN_PM| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed
    
  @46413 @all @render_expression_CustomApp_With_Profile_IN_SystemAdministrator_OR_Profile_IN_PM
  Scenario: Set up configuration for display state as grantor custom app using Profile IN System Administrator OR Profile IN PM -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                                  | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_Profile_IN_SystemAdministrator_OR_Profile_IN_PM| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    
  @47284 @all @render_expression_CustomApp_With_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration for hide state as grantor custom app using (UserType NOT IN (Internal) OR Profile NOT IN (System Administrator) -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                                               | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed
    
  @46414 @all @render_expression_CustomApp_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration for hide state as grantor custom app using (UserType NOT IN (Internal) AND Profile NOT IN (System Administrator) -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                                                | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed
    
  @46420 @all @render_expression_SideBar_ManageFundingSource_With_Profile_NOTIN_PM
  Scenario: Set up configuration for display Manage funding source from side bar using Profile NOTIN PM -gPlanning
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | coreComponentField    | filterId         |
      | Accordian Header     | Render Expression JSON |                   | GrantorPlanning       | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory| fieldName              | fieldNewValue                                                                     | coreComponentField| coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Accordian Header     | Render Expression JSON | govgrants_config:SideBar_ManageFundingSource_RenderExpressionWith_Profile_NOTIN_PM| GrantorPlanning   | Name                      | Manage Funding Source      |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Activities" inside "Manage Funding Source" is displayed
    
  @47285 @all @render_expression_CustomApp_With_UserType_IN_Applicant_Reviewer
  Scenario: Set up configuration for hide state as grantor custom app using UserType IN Applicant, Reviewer -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                 | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_UserType_IN_Applicant_Reviewer| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed
    
  @47286 @all @render_expression_CustomApp_With_UserType_NOTIN_Applicant_Reviewer
  Scenario: Set up configuration for hide state as grantor custom app using UserType NOTIN Applicant, Reviewer -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                    | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_UserType_NOTIN_Applicant_Reviewer| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown    
    
  @47287 @all @render_expression_CustomApp_With_UserType_IN_Applicant_Internal_Reviewer
  Scenario: Set up configuration for display state as grantor custom app using UserType IN Applicant,Internal,Reviewer -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                          | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_UserType_IN_Applicant_Internal_Reviewer| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    
  @47291 @all @render_expression_CustomApp_With_UserType_NOTIN_Applicant_Internal_Reviewer
  Scenario: Set up configuration for hide state as grantor custom app using UserType NOTIN Applicant,Internal,Reviewer -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                             | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_UserType_NOTIN_Applicant_Internal_Reviewer| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed
    
  @47292 @all @render_expression_CustomApp_With_Profile_NOTIN_PM
  Scenario: Set up configuration for display state as grantor custom app using Profile NOT IN PM -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                   | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_Profile_NOTIN_PM| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    
  @47293 @all @render_expression_CustomApp_With_UserType_IN_Applicant
  Scenario: Set up configuration for hide state as grantor custom app using UserType IN Applicant -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                        | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_UserType_IN_Applicant| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed
    
  @47294 @all @render_expression_CustomApp_With_Profile_IN_PM
  Scenario: Set up configuration for hide state as grantor custom app using Profile IN PM -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_Profile_IN_PM| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed
    
  @47296 @all @render_expression_CustomApp_With_Profile_IN_PM_OR_UserType_IN_Internal
  Scenario: Set up configuration for display state as grantor custom app using Profile IN PM OR UserType IN Internal -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                        | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_Profile_IN_PM_OR_UserType_IN_Internal| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown
    
  @47297 @all @render_expression_CustomApp_With_UserType_IN_Internal_AND_Profile_IN_PM
  Scenario: Set up configuration for hide state as grantor custom app using UserType IN Internal AND Profile IN PM -gHome
    Given I have default configuration as below:
      | configurationCategory| fieldName              | fieldOrignalValue | filterId         |
      | Custom App Config    | Render Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory    | fieldName              | fieldNewValue                                                                                         | coreComponentField| 
      | Custom App Config:General| Render Expression JSON | govgrants_config:Custom_App_StateAsGrantor_RenderExpressionWith_UserType_IN_Internal_AND_Profile_IN_PM| StateasGrantor    |
    When I login as "Automation" user
    When I click CustomApp select dropdown
    Then I see "As a Grantor" inside CustomApp dropDown not displayed
    
  @47302 @all @hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal
  Scenario: Set up configuration to hide view action of parent enhanced grid using UserType IN Internal and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                      | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal | TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "View" icon for "Demo_Title" is not displayed inside flex table
    
  @47304 @all @hide_Expression_Enhancedgrid_ViewAction_With_UserType_NOTIN_Internal
  Scenario: Set up configuration to display view action of parent enhanced grid using UserType NOTIN Internal and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_NOTIN_Internal| TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "View" icon for "Demo_Title" is displayed inside flex table
    
  @47305 @all @hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator
  Scenario: Set up configuration to hide view action of parent enhanced grid using Profile IN System Administrator and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                               | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator| TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "View" icon for "Demo_Title" is not displayed inside flex table
    
  @47306 @all @hide_Expression_Enhancedgrid_ViewAction_With_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to hide view action of parent enhanced grid using Profile NOTIN System Administrator and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_NOTIN_SystemAdministrator| TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "View" icon for "Demo_Title" is displayed inside flex table
    
  @47307 @all @hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal
  Scenario: Set up configuration to hide view action of parent enhanced grid using Profile IN System Administrator AND UserType IN Internal and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal| TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "View" icon for "Demo_Title" is not displayed inside flex table
    
  @47308 @all @hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal
  Scenario: Set up configuration to hide view action of parent enhanced grid using Profile IN System Administrator OR UserType IN Internal and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                       | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal| TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "View" icon for "Demo_Title" is not displayed inside flex table
    
  @47309 @all @hide_Expression_Enhancedgrid_ViewAction_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to display view action of parent enhanced grid using UserType NOT IN Internal AND Profile NOT IN System Administrator and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                              | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator| TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "View" icon for "Demo_Title" is displayed inside flex table
    
  @47310 @all @hide_Expression_Enhancedgrid_ViewAction_With_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to display view action of parent enhanced grid using UserType NOT IN Internal OR Profile NOT IN System Administrator and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                             | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator| TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "View" icon for "Demo_Title" is displayed inside flex table
    
  @47312 @all @hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal_OR_Profile_IN_PM
  Scenario: Set up configuration to hide view action of parent enhanced grid using UserType IN Internal OR Profile IN PM and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                      | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal_OR_Profile_IN_PM| TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "View" icon for "Demo_Title" is not displayed inside flex table
    
  @47313 @all @hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal_AND_Profile_IN_PM
  Scenario: Set up configuration to display view action of parent enhanced grid using UserType IN Internal AND Profile IN PM and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                       | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_ViewAction_With_UserType_IN_Internal_AND_Profile_IN_PM| TmpActiveGrantsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "View" icon for "Demo_Title" is displayed inside flex table
    
  @47315 @all @hide_Expression_Enhancedgrid_EditAction_With_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserApp IN State As grantor and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                          | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_EditAction_With_UserApp_IN_StateAsGrantor| TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "Edit" icon for "Demo_Title" is not displayed inside flex table
    
  @47316 @all @hide_Expression_Enhancedgrid_EditAction_With_UserApp_NOTIN_StateAsGrantor
  Scenario: Set up configuration to display edit action of parent enhanced grid using UserApp NOTIN State As grantor and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                             | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_EditAction_With_UserApp_NOTIN_StateAsGrantor| TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "Edit" icon for "Demo_Title" is displayed inside flex table

  @47318 @all @hide_Expression_Enhancedgrid_EditAction_With_UserType_IN_Internal_AND_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserType IN Internal AND UserApp IN StateasGrantor and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                   | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_EditAction_With_UserType_IN_Internal_AND_UserApp_IN_StateAsGrantor| TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "Edit" icon for "Demo_Title" is not displayed inside flex table
    
  @47319 @all @hide_Expression_Enhancedgrid_EditAction_With_UserType_IN_Internal_OR_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserType IN Internal OR UserApp IN StateasGrantor and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                  | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_EditAction_With_UserType_IN_Internal_OR_UserApp_IN_StateAsGrantor| TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "Edit" icon for "Demo_Title" is not displayed inside flex table
    
  @47320 @all @hide_Expression_Enhancedgrid_EditAction_With_UserType_IN_Applicant_Internal_Reviewer
  Scenario: Set up configuration to hide edit action of parent enhanced grid using UserType IN Applicant Internal Reviewer and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                        | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_Enhancedgrid_EditAction_With_UserType_IN_Applicant_Internal_Reviewer| TmpActiveGrantsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I perform quick search for "Demo_Title" in "flexGridEnhanced1" panel
    Then I see "Edit" icon for "Demo_Title" is not displayed inside flex table
    
  @47322 @all @hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_IN_Internal
  Scenario: Set up configuration to hide view action of child enhanced grid using UserType IN Internal and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                          | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_IN_Internal| TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" icon for "AD-GG PJ--00" is not displayed inside flex table
    
  @47323 @all @hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_NOTIN_Internal
  Scenario: Set up configuration to display view action of child enhanced grid using UserType NOTIN Internal and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                             | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_NOTIN_Internal| TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" icon for "AD-GG PJ--00" is displayed inside flex table
    
  @47324 @all @hide_Expression_ChildEnhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator
  Scenario: Set up configuration to hide view action of child enhanced grid using profile IN system Administrator and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                    | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator| TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" icon for "AD-GG PJ--00" is not displayed inside flex table
    
  @47326 @all @hide_Expression_ChildEnhancedgrid_ViewAction_With_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to display view action of child enhanced grid using profile NOTIN system Administrator and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                       | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_ViewAction_With_Profile_NOTIN_SystemAdministrator| TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" icon for "AD-GG PJ--00" is displayed inside flex table
    
  @47329 @all @hide_Expression_ChildEnhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal
  Scenario: Set up configuration to hide view action of child enhanced grid using profile IN system Administrator AND User type IN Internal and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                             | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal| TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" icon for "AD-GG PJ--00" is not displayed inside flex table
    
  @47330 @all @hide_Expression_ChildEnhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal
  Scenario: Set up configuration to hide view action of child enhanced grid using profile IN system Administrator OR User type IN Internal and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                            | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_ViewAction_With_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal| TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" icon for "AD-GG PJ--00" is not displayed inside flex table
    
  @47331 @all @hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to display view action of child enhanced grid using UserType NOT IN Internal AND Profile NOT IN System Administrator and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                                   | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator| TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" icon for "AD-GG PJ--00" is displayed inside flex table
    
  @47332 @all @hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to display view action of child enhanced grid using UserType NOT IN Internal OR Profile NOT IN System Administrator and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                                  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator| TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" icon for "AD-GG PJ--00" is displayed inside flex table
    
  @47333 @all @hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_IN_Internal_OR_Profile_IN_PM
  Scenario: Set up configuration to hide view action of child enhanced grid using user type IN internal OR profile IN PM and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                           | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_IN_Internal_OR_Profile_IN_PM| TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" icon for "AD-GG PJ--00" is not displayed inside flex table
    
  @47334 @all @hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_IN_Internal_AND_Profile_IN_PM
  Scenario: Set up configuration to display view action of child enhanced grid using user type IN internal AND profile IN PM and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                            | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_ViewAction_With_UserType_IN_Internal_AND_Profile_IN_PM| TmpGrantorActiveAwardsGrid | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "View" icon for "AD-GG PJ--00" is displayed inside flex table
    
  @47335 @all @hide_Expression_ChildEnhancedgrid_EditAction_With_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide Edit action of child enhanced grid using userApp IN State As Grantor and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                               | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_EditAction_With_UserApp_IN_StateAsGrantor| TmpGrantorActiveAwardsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "Edit" icon for "AD-GG PJ--00" is not displayed inside flex table
    
  @47336 @all @hide_Expression_ChildEnhancedgrid_EditAction_With_UserApp_NOTIN_StateAsGrantor
  Scenario: Set up configuration to display Edit action of child enhanced grid using userApp NOTIN State As Grantor and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                  | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_EditAction_With_UserApp_NOTIN_StateAsGrantor| TmpGrantorActiveAwardsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "Edit" icon for "AD-GG PJ--00" is displayed inside flex table
    
  @47337 @all @hide_Expression_ChildEnhancedgrid_EditAction_With_UserType_IN_Internal_AND_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide Edit action of child enhanced grid using  UserType IN Internal AND UserApp IN StateasGrantor and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                        | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_EditAction_With_UserType_IN_Internal_AND_UserApp_IN_StateAsGrantor| TmpGrantorActiveAwardsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "Edit" icon for "AD-GG PJ--00" is not displayed inside flex table
    
  @47338 @all @hide_Expression_ChildEnhancedgrid_EditAction_With_UserType_IN_Internal_OR_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide Edit action of child enhanced grid using UserType IN Internal OR UserApp IN StateasGrantor and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                                       | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_EditAction_With_UserType_IN_Internal_OR_UserApp_IN_StateAsGrantor| TmpGrantorActiveAwardsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "Edit" icon for "AD-GG PJ--00" is not displayed inside flex table
    
  @47339 @all @hide_Expression_ChildEnhancedgrid_EditAction_With_UserType_IN_Applicant_Internal_Reviewer
  Scenario: Set up configuration to hide Edit action of child enhanced grid using UserType IN Applicant, Internal, Reviewer and validating it inside enhanced of program-planning
    Given I have default configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table Action     | Hide Expression JSON |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue                                                                                             | coreComponentField         | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Hide Expression JSON | govgrants_config:Hide_Expression_ChildEnhancedgrid_EditAction_With_UserType_IN_Applicant_Internal_Reviewer| TmpGrantorActiveAwardsGrid | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    When I navigate to "Financials" sub tab
    When I expand nested table containing column value "Demo_Title"
    Then I see "Edit" icon for "AD-GG PJ--00" is not displayed inside flex table
    
  @48480 @all @hide_Expression_ProgramFlexTable_ViewAction_With_UserType_IN_Internal
  Scenario: Set up configuration to hide view action of program flex table using UserType IN Internal and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_ViewAction_With_UserType_IN_Internal| Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "View Program Details" icon for "Test program for automation - Created mode only" is not displayed inside flex table
    
  @48481 @all @hide_Expression_ProgramFlexTable_ViewAction_With_UserType_NOTIN_Internal
  Scenario: Set up configuration to display view action of program flex table using UserType NOTIN Internal and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_ViewAction_With_UserType_NOTIN_Internal| Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "View Program Details" icon for "Test program for automation - Created mode only" is displayed inside flex table
    
  @48482 @all @hide_Expression_ProgramFlexTable_ViewAction_With_Profile_IN_SystemAdministrator
  Scenario: Set up configuration to hide view action of program flex table using profile IN system administrator and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_ViewAction_With_Profile_IN_SystemAdministrator| Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "View Program Details" icon for "Test program for automation - Created mode only" is not displayed inside flex table
    
  @48483 @all @hide_Expression_ProgramFlexTable_ViewAction_With_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to display view action of program flex table using profile NOTIN system administrator and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_ViewAction_With_Profile_NOTIN_SystemAdministrator| Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "View Program Details" icon for "Test program for automation - Created mode only" is displayed inside flex table
    
  @48484 @all @hide_Expression_ProgramFlexTable_ViewAction_With_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal
  Scenario: Set up configuration to hide view action of program flex table using profile IN system administrator AND UserType IN Internal and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_ViewAction_With_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal| Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "View Program Details" icon for "Test program for automation - Created mode only" is not displayed inside flex table
    
  @48485 @all @hide_Expression_ProgramFlexTable_ViewAction_With_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal
  Scenario: Set up configuration to hide view action of program flex table using profile IN system administrator OR UserType IN Internal and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_ViewAction_With_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal| Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "View Program Details" icon for "Test program for automation - Created mode only" is not displayed inside flex table
    
  @48486 @all @hide_Expression_ProgramFlexTable_ViewAction_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to display view action of program flex table using user type NOTIN Internal AND profile NOTIN system administrator and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_ViewAction_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator| Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "View Program Details" icon for "Test program for automation - Created mode only" is displayed inside flex table
    
  @48597 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Internal
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using user type IN Internal and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                               | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Internal| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48598 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_NOTIN_Internal
  Scenario: Set up configuration to display submit for approval status of program from step progress bar using user type IN Internal and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                  | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_NOTIN_Internal| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is displayed inside step progress bar
    
  @48601 @all @hide_Expression_ProgramFlexTable_EditAction_With_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide Edit action of program flex table using User App IN State As grantor and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_EditAction_With_UserApp_IN_StateAsGrantor| Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table
    
  @48602 @all @hide_Expression_ProgramFlexTable_EditAction_With_UserApp_NOTIN_StateAsGrantor
  Scenario: Set up configuration to display Edit action of program flex table using User App NOTIN State As grantor and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_EditAction_With_UserApp_NOTIN_StateAsGrantor| Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is displayed inside flex table
    
  @48600 @all @hide_Expression_ProgramFlexTable_ViewAction_With_UserType_IN_Internal_AND_Profile_IN_PM
  Scenario: Set up configuration to display view action of program flex table using UserType IN Internal AND Profile IN PM and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_EditAction_With_UserApp_NOTIN_StateAsGrantor| Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "View Program Details" icon for "Test program for automation - Created mode only" is displayed inside flex table
    
  @48603 @all @hide_Expression_ProgramFlexTable_EditAction_With_UserType_IN_Internal_AND_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide Edit action of program flex table using UserType IN Internal AND UserApp IN StateAsGrantor and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_EdiAction_With_UserType_IN_Internal_AND_UserApp_IN_StateAsGrantor| Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table

  @48604 @all @hide_Expression_ProgramFlexTable_EditAction_With_UserType_IN_Internal_OR_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide Edit action of program flex table using UserType IN Internal OR UserApp IN StateAsGrantor and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_EdiAction_With_UserType_IN_Internal_OR_UserApp_IN_StateAsGrantor| Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table
    
  @48605 @all @hide_Expression_ProgramFlexTable_EditAction_With_UserType_IN_Applicant_Internal_Reviewer
  Scenario: Set up configuration to hide Edit action of program flex table using UserType IN Applicant Internal Reviewer and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_EdiAction_With_UserType_IN_Applicant_Internal_Reviewer| Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table
    
  @48606 @all @hide_Expression_ProgramFlexTable_EditAction_With_UserApp_IN_StateAsGrantor_Admin_Recipient
  Scenario: Set up configuration to hide Edit action of program flex table using UserApp IN StateasGrantor, Admin, Recipient and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_EdiAction_With_UserApp_IN_StateAsGrantor_Admin_Recipient| Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table
    
  @48607 @all @hide_Expression_ProgramFlexTable_EditAction_With_UserApp_NOTIN_Admin
  Scenario: Set up configuration to hide Edit action of program flex table using UserApp NOTIN Admin and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_EdiAction_With_UserApp_NOTIN_Admin| Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table
    
  @48608 @all @hide_Expression_ProgramFlexTable_EditAction_With_UserApp_NOTIN_Recipient
  Scenario: Set up configuration to hide Edit action of program flex table using UserApp NOTIN Recipient and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_EdiAction_With_UserApp_NOTIN_Recipient| Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table
    
  @48609 @all @hide_Expression_ProgramFlexTable_EditAction_With_Profile_IN_SystemAdministrator_OR_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide Edit action of program flex table using Profile IN System Administrator OR UserApp IN StateasGrantor and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_EdiAction_With_UserApp_Profile_IN_SystemAdministrator_OR_UserApp_IN_StateAsGrantor| Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is not displayed inside flex table
    
  @48610 @all @hide_Expression_ProgramFlexTable_EditAction_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to hide Edit action of program flex table using UserType NOT IN Internal AND Profile NOT IN System Administrator and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_EdiAction_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator| Programs           | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "Edit" icon for "Test program for automation - Created mode only" is displayed inside flex table
    
  @48611 @all @hide_Expression_ProgramFlexTable_ViewAction_With_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to display view action of program flex table using user type NOTIN Internal OR profile NOTIN system administrator and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_ViewAction_With_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator| Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "View Program Details" icon for "Test program for automation - Created mode only" is displayed inside flex table
    
  @48612 @all @hide_Expression_ProgramFlexTable_ViewAction_With_UserType_IN_Internal_OR_Profile_IN_PM
  Scenario: Set up configuration to hide view action of program flex table using User type IN Internal OR Profile IN PM and validating it inside flex table of program-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             | fieldOrignalValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject | Hide Expression JSON  |                            | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action Sobject  | Hide Expression JSON | govgrants_config:Hide_Expression_FlexTable_ViewAction_With_UserType_IN_Internal_OR_Profile_IN_PM| Programs           | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    Then I see "View Program Details" icon for "Test program for automation - Created mode only" is not displayed inside flex table 
    
  @48613 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_Profile_IN_SystemAdministrator
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using Profile IN System Administrator and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                         | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_Profile_IN_SystemAdministrator| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48614 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to display submit for approval status of program from step progress bar using Profile NOTIN System Administrator and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                            | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_Profile_NOTIN_SystemAdministrator| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is displayed inside step progress bar
    
  @48615 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using Profile IN System Administrator AND User Type IN Internal and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                                  | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48616 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using Profile IN System Administrator OR User Type IN Internal and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                                 | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48617 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to display submit for approval status of program from step progress bar using User Type NOTIN Internal AND Profile NOTIN System Administrator and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                                        | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is displayed inside step progress bar
    
  @48618 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator
  Scenario: Set up configuration to display submit for approval status of program from step progress bar using User Type NOTIN Internal OR Profile NOTIN System Administrator and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                                       | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is displayed inside step progress bar
    
  @48619 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Internal_OR_Profile_IN_PM
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using User Type IN Internal OR Profile IN PM and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Internal_OR_Profile_IN_PM| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48620 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Internal_AND_Profile_IN_PM
  Scenario: Set up configuration to display submit for approval status of program from step progress bar using User Type IN Internal AND Profile IN PM and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                 | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Internal_AND_Profile_IN_PM| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is displayed inside step progress bar
    
  @48621 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using User App IN State AS Grantor and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                    | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserApp_IN_StateAsGrantor| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48622 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserApp_NOTIN_StateAsGrantor
  Scenario: Set up configuration to display submit for approval status of program from step progress bar using User App NOTIN State AS Grantor and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                       | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserApp_NOTIN_StateAsGrantor| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is displayed inside step progress bar
    
  @48623 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Internal_AND_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using User Type IN Internal AND UserApp IN StateAsGrantor and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                             | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Internal_AND_UserApp_IN_StateAsGrantor| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48624 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Internal_OR_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using User Type IN Internal OR UserApp IN StateAsGrantor and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                            | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Internal_OR_UserApp_IN_StateAsGrantor| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48625 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Applicant_Internal_Reviewer
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using User Type IN Applicant Internal Reviewer and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                  | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_IN_Applicant_Internal_Reviewer| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48626 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserApp_IN_StateAsGrantor_Admin_Recipient
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using UserApp IN State As grantor, Admin, Recipient and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                    | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserApp_IN_StateAsGrantor_Admin_Recipient| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48627 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserApp_NOTIN_Admin
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using UserApp NOTIN Admin and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                              | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserApp_NOTIN_Admin| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48628 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserApp_NOTIN_Recipient
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using UserApp NOTIN Recipient and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                  | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserApp_NOTIN_Recipient| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48629 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_Profile_IN_SystemAdministrator_OR_UserApp_IN_StateAsGrantor
  Scenario: Set up configuration to hide submit for approval status of program from step progress bar using Profile IN System Administrator OR UserApp IN StateasGrantor and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                                      | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_Profile_IN_SystemAdministrator_OR_UserApp_IN_StateAsGrantor| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
   
  @48630 @all @hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_NOTIN_Internal_OR_Profile_IN_SystemAdministratror_EXE
  Scenario: Set up configuration to display submit for approval status of program from step progress bar using UserType NOT IN Internal OR Profile IN System Administrator, EXE and validating it inside program detail page-planning
    Given I have default configuration as below:
      | configurationCategory     | fieldName             |fieldOrignalValue | filterId         |
      | Step Progressbar Detail   | Hide Expression JSON  |                  | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory      | fieldName            | fieldNewValue                                                                                                                         | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Step Progressbar Detail    | Hide Expression JSON | govgrants_config:Hide_Expression_StepProgressBar_SubmitForApproval_With_UserType_NOTIN_Internal_OR_Profile_IN_SystemAdministratror_EXE| Program Progress Bar | Name                      | Submitted for Approval     |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
    Then I see "Submitted for Approval" is not displayed inside step progress bar
    
  @48634 @all @hide_Expression_ApprovalDecisionAction_Forward_With_UserType_IN_Internal
  Scenario: Setup configuration to hide forward option from configuration for approval decision using User Type IN Internal and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                            | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                  | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Forward_With_UserType_IN_Internal| ADAC-0011                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Reassign" is disabled
    
  @48637 @all @hide_Expression_ApprovalDecisionAction_Forward_With_UserType_NOTIN_Internal
  Scenario: Setup configuration to display forward option from configuration for approval decision using User Type NotIN Internal and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                               | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                     | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Forward_With_UserType_NOTIN_Internal| ADAC-0011                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Reassign" is enabled
    
  @48638 @all @hide_Expression_ApprovalDecisionAction_Forward_With_Profile_IN_SystemAdministrator
  Scenario: Setup configuration to display forward option from configuration for approval decision using Profile IN System Administrator and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                      | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                            | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Forward_With_Profile_IN_SystemAdministrator| ADAC-0011                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Reassign" is enabled
    
  @48639 @all @hide_Expression_ApprovalDecisionAction_Forward_With_Profile_NOTIN_SystemAdministrator
  Scenario: Setup configuration to hide forward option from configuration for approval decision using Profile NOTIN System Administrator and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                         | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                               | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Forward_With_Profile_NOTIN_SystemAdministrator| ADAC-0011                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Reassign" is disabled
    
  @48640 @all @hide_Expression_ApprovalDecisionAction_Forward_With_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal
  Scenario: Setup configuration to display forward option from configuration for approval decision using  Profile IN System Administrator AND UserType IN Internal and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                               | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                                     | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Forward_With_Profile_IN_SystemAdministrator_AND_UserType_IN_Internal| ADAC-0011                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Reassign" is enabled
    
  @48641 @all @hide_Expression_ApprovalDecisionAction_Forward_With_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal
  Scenario: Setup configuration to hide forward option from configuration for approval decision using  Profile IN System Administrator OR UserType IN Internal and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                              | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                                    | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Forward_With_Profile_IN_SystemAdministrator_OR_UserType_IN_Internal| ADAC-0011                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Reassign" is disabled
    
  @48646 @all @hide_Expression_ApprovalDecisionAction_Reject_With_UserType_NotIN_Internal_AND_Profile_NOTIN_SystemAdministrator
  Scenario: Setup configuration to display Reject option from configuration for approval decision using User Type NOTIN Internal AND Profile NOTIN System Administrator and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                                    | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                                          | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Reject_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_SystemAdministrator| ADAC-0010                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Disapprove" is enabled
    
  @48647 @all @hide_Expression_ApprovalDecisionAction_Reject_With_UserType_NotIN_Internal_OR_Profile_NOTIN_SystemAdministrator
  Scenario: Setup configuration to hide Reject option from configuration for approval decision using UserType NOT IN Internal OR Profile NOT IN System Administrator and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                                   | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                                         | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Reject_With_UserType_NOTIN_Internal_OR_Profile_NOTIN_SystemAdministrator| ADAC-0010                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Disapprove" is disabled
    
  @48648 @all @hide_Expression_ApprovalDecisionAction_Reject_With_UserType_IN_Internal_OR_Profile_IN_PM
  Scenario: Setup configuration to hide Reject option from configuration for approval decision using UserType IN Internal OR Profile IN PM and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                            | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                  | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Reject_With_UserType_IN_Internal_OR_Profile_IN_PM| ADAC-0010                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Disapprove" is disabled
    
  @48649 @all @hide_Expression_ApprovalDecisionAction_Reject_With_UserType_IN_Internal_AND_Profile_IN_PM
  Scenario: Setup configuration to hide Reject option from configuration for approval decision using UserType IN Internal AND Profile IN PM and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                             | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                   | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Reject_With_UserType_IN_Internal_AND_Profile_IN_PM| ADAC-0010                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Disapprove" is disabled
    
  @48650 @all @hide_Expression_ApprovalDecisionAction_Reject_With_UserApp_IN_StateAsGrantor
  Scenario: Setup configuration to hide Reject option from configuration for approval decision using userApp IN StateAs Grantor and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                      | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Reject_With_UserApp_IN_StateAsGrantor| ADAC-0010                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Disapprove" is disabled
    
  @48651 @all @hide_Expression_ApprovalDecisionAction_Reject_With_UserApp_NOTIN_StateAsGrantor
  Scenario: Setup configuration to display Reject option from configuration for approval decision using userApp NOTIN State As Grantor and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                   | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                         | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Reject_With_UserApp_NOTIN_StateAsGrantor| ADAC-0010                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Disapprove" is enabled
    
  @48652 @all @hide_Expression_ApprovalDecisionAction_SendBack_With_UserType_IN_Internal_AND_UserApp_IN_StateAsGrantor
  Scenario: Setup configuration to hide Send back option from configuration for approval decision using UserType IN Internal AND UserApp IN StateasGrantor and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                            | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                                  | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_SendBAck_With_UserType_IN_Internal_AND_UserApp_IN_StateAsGrantor | ADAC-0012                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Send to Owner" is disabled
    
  @48654 @all @hide_Expression_ApprovalDecisionAction_SendBack_With_UserType_IN_Internal_OR_UserApp_IN_StateAsGrantor
  Scenario: Setup configuration to hide Send back option from configuration for approval decision using UserType IN Internal OR UserApp IN StateasGrantor and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                          | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                                | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_SendBAck_With_UserType_IN_Internal_OR_UserApp_IN_StateAsGrantor| ADAC-0012                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Send to Owner" is disabled
    
  @48655 @all @hide_Expression_ApprovalDecisionAction_SendBack_With_UserType_IN_Applicant_Internal_Reviewer
  Scenario: Setup configuration to hide Send back option from configuration for approval decision using UserType IN Applicant Internal Reviewer and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                      | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_SendBAck_With_UserType_IN_Applicant_Internal_Reviewer| ADAC-0012                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Send to Owner" is disabled
    
  @48656 @all @hide_Expression_ApprovalDecisionAction_SendBack_With_UserApp_IN_StateAsGrantee
  Scenario: Setup configuration to display Send back option from configuration for approval decision using UserApp IN State As Grantee and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                  | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                        | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_SendBAck_With_UserApp_IN_StateAsGrantee| ADAC-0012                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Send to Owner" is enabled
    
  @48657 @all @hide_Expression_ApprovalDecisionAction_SendBack_With_UserApp_NOTIN_Admin
  Scenario: Setup configuration to hide Send back option from configuration for approval decision using UserApp NOTIN Admin and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                            | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                  | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_SendBAck_With_UserApp_NOTIN_Admin| ADAC-0012                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Send to Owner" is disabled
    
  @48658 @all @hide_Expression_ApprovalDecisionAction_SendBack_With_UserApp_NOTIN_Recipient
  Scenario: Setup configuration to hide Send back option from configuration for approval decision using UserApp NOTIN Recipient and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                      | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_SendBAck_With_UserApp_NOTIN_Recipient| ADAC-0012                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Send to Owner" is disabled
    
  @48659 @all @hide_Expression_ApprovalDecisionAction_SendBack_With_UserApp_IN_StateAsGrantor_StateAsGrantee_Recipient_Admin
  Scenario: Setup configuration to hide Send back option from configuration for approval decision using UserApp IN StateasGrantor, StateasGrantee, Recipient, Admin and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                                 | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                                       | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_SendBAck_With_UserApp_IN_StateAsGrantor_StateAsGrantee_Recipient_Admin| ADAC-0012                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Send to Owner" is disabled
    
  @48662 @all @hide_Expression_ApprovalDecisionAction_Approve_With_Profile_IN_SystemAdministrator_OR_UserApp_IN_StateAsGrantor
  Scenario: Setup configuration to hide Approve option from configuration for approval decision using Profile IN System Administrator OR UserApp IN StateasGrantor and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                                   | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                                         | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Approve_With_Profile_IN_SystemAdministrator_OR_UserApp_IN_StateAsGrantor| ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Approve" is disabled
    
  @48663 @all @hide_Expression_ApprovalDecisionAction_Approve_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_Admin
  Scenario: Setup configuration to display Approve option from configuration for approval decision using UserType NOT IN Internal AND Profile NOT IN  Admin and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                       | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                             | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Approve_With_UserType_NOTIN_Internal_AND_Profile_NOTIN_Admin| ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Approve" is enabled
    
  @48666 @all @hide_Expression_ApprovalDecisionAction_Approve_With_Profile_IN_PM_OR_UserApp_NOTIN_Admin
  Scenario: Setup configuration to hide Approve option from configuration for approval decision using Profile IN PM OR UserApp NOT IN Admin and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                            | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                  | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Approve_With_Profile_IN_PM_OR_UserApp_NOTIN_Admin| ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Approve" is disabled
    
  @48667 @all @hide_Expression_ApprovalDecisionAction_Approve_With_Profile_IN_PM_AND_UserApp_NOTIN_Admin
  Scenario: Setup configuration to hide Approve option from configuration for approval decision using Profile IN PM AND UserApp NOT IN Admin and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                             | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                   | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Approve_With_Profile_IN_PM_AND_UserApp_NOTIN_Admin| ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Approve" is disabled
    
  @48668 @all @hide_Expression_ApprovalDecisionAction_Approve_With_Profile_NOTIN_SystemAdministrator_OR_UserType_IN_Internal
  Scenario: Setup configuration to hide Approve option from configuration for approval decision using Profile NOT IN System Administrator OR UserType IN Internal and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                                 | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                                       | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Approve_With_Profile_NOTIN_SystemAdministrator_OR_UserType_IN_Internal| ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Approve" is disabled
    
  @48670 @all @hide_Expression_ApprovalDecisionAction_Approve_With_Profile_NOTIN_SystemAdministrator_AND_UserType_IN_Internal
  Scenario: Setup configuration to hide Approve option from configuration for approval decision using Profile NOT IN System Administrator AND UserType IN Internal and validating its content in pending tasks approval decision
    Given I have default configuration as below:
      | configurationCategory    | fieldName            | fieldOrignalValue | filterId         |
      | Approval Decision Action | Hide Expression JSON |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory            | fieldName            | fieldNewValue                                                                                                                  | coreComponentField                                         |
      | Program                          | Status               | Created                                                                                                                        | Test program for automation -  SA mode only - Not approved |
      | Approval Decision Action:General | Hide Expression JSON | govgrants_config:Hide_Expression_ApprovalDecisionAction_Approve_With_Profile_NOTIN_SystemAdministrator_AND_UserType_IN_Internal| ADAC-0009                                                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Edit" icon for "Test program for automation -  SA mode only - Not approved" inside table
    And I complete submit for approval
    When I re-login as "Automation-PM" user on "QA" portal
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Pending" content inside "My Tasks" subheader on left panel
    When I perform quick search for "Test program for automation -  SA mode only - Not approved"
    When I click on "Start" icon for "Test program for automation -  SA mode only - Not approved" inside table
    Then I see "Approve" is disabled