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

  @42704 @all @hideExpressioJsonForRightOperandForUserAppRecipientWithOperatorIn-gPlanning @check
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
