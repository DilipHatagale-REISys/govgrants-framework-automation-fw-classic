@expressionbuilder-component 
Feature: Expression Builder Component Scenarios 
	Test all expression builder component based scenarios 
	As a configuration manager i make different configurational changes in expression builder component and will validate them.

    @42233 @all @hideExpressioJsonForRightOperandForPMUser-gAnnouncement
	Scenario: validate disabling of create button for PM user from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                               |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:FlexTableHideExpressionBuilderJsonForPMUser|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation-PM" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42369 @all @hideExpressioJsonForRightOperandForAdminUser-gAnnouncement
	Scenario: validate disabling of create button for Admin user from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                  |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:FlexTableHideExpressionBuilderJsonForAdminUser|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42475 @all @hideExpressioJsonForRightOperandForProfilePM-gAnnouncement
	Scenario: validate disabling of create button for profile PM from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                             |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:FlexTableHideExpressionBuilderJsonForAdministratorProfile|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation-PM" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42370 @all @hideExpressioJsonForRightOperandForProfileSystemAdministrator-gAnnouncement
	Scenario: validate disabling of create button for profile system administrator from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                             |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:FlexTableHideExpressionBuilderJsonForAdministratorProfile|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation-PM" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	When I re-login as "Automation" user on "QA" portal
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42476 @all @hideExpressioJsonForRightOperandForProfilePMWithOperatorNotIn-gAnnouncement
	Scenario: validate disabling of create button for profile PM With Operator Not In from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForAdministratorProfileWithNotInOperator|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42371 @all @hideExpressioJsonForRightOperandForProfileAdministratorWithOperatorNotIn-gAnnouncement
	Scenario: validate create button is present for profile Administrator with Operator Not In from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForAdministratorProfileWithNotInOperator|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation-PM" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table
	
	@42479 @all @hideExpressioJsonForRightOperandForUserTypeInternalWithOperatorIn-gAnnouncement
	Scenario: validate disabling of create button for user type Internal with Operator In from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                          |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForInternalUserWithInOperator|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42480 @all @hideExpressioJsonForRightOperandForUserTypeInternalWithOperatorNotIn-gAnnouncement
	Scenario: validate disabling of create button for user type Internal with Operator Not In from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                             |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForInternalUserWithNotInOperator|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table
	
	@42483 @all @hideExpressioJsonForRightOperandForUserTypeInternalWithOperatorNotIn-Reviewer-gAnnouncement
	Scenario: validate disabling of create button for user type Internal with Operator Not In from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                             |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForInternalUserWithNotInOperator|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation-Reviewer" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42490 @all @hideExpressioJsonForRightOperandForUserType-Internal-gAnnouncement
	Scenario: validate disabling of create button for user type Internal from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                         |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForInternalUserTypeInternalApplicantReviewer|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42491 @all @hideExpressioJsonForRightOperandForUserType-Applicant-gAnnouncement
	Scenario: validate disabling of create button for user type Appplicant from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                         |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForInternalUserTypeInternalApplicantReviewer|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation-Applicant" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42492 @all @hideExpressioJsonForRightOperandForUserType-Reviewer-gAnnouncement
	Scenario: validate disabling of create button for user type Reviewer from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                         |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForInternalUserTypeInternalApplicantReviewer|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation-Reviewer" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42499 @all @hideExpressioJsonForRightOperandForContextViewWithOperatorIn-gPlanning
	Scenario: validate disabling of create button for context view with operator IN -gPlanning 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount     |Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                         |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForContextViewWithOperatorIn|ProgramFundingAccount     |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42612 @all @hideExpressioJsonForRightOperandForContextEditWithOperatorIn-gPlanning
	Scenario: validate disabling of create button for context edit with operator IN -gPlanning 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount     |Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                         |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForContextEditWithOperatorIn|ProgramFundingAccount     |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42684 @all @hideExpressioJsonForRightOperandForContextViewWithOperatorNotIn-gPlanning
	Scenario: validate disabling of create button for context view with operator Not IN -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount     |Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                            |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForContextViewWithOperatorNotIn|ProgramFundingAccount     |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table
	
	@42685 @all @hideExpressioJsonForRightOperandForContextEditWithOperatorNotIn-gPlanning
	Scenario: validate disabling of create button for context edit with operator Not IN -gPlanning 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount     |Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                            |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForContextEditWithOperatorNotIn|ProgramFundingAccount     |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table
	
	@42690 @all @hideExpressioJsonForRightOperandForUserAppStateAsGrantorWithOperatorIn-gPlanning
	Scenario: validate disabling of create button for user app state as grantor with operator IN -gPlanning 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount     |Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                              |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForUserAppSAGrantorWithOperatorIn|ProgramFundingAccount     |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42691 @all @hideExpressioJsonForRightOperandForUserAppStateAsGranteeWithOperatorIn-gOpportunities
	Scenario: validate disabling of Associate button for user app state as grantee with operator IN-gOpportuities 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField          |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |OpporunityGranteeServiceArea|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                              |coreComponentField          |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForUserAppSAGranteeWithOperatorIn|OpporunityGranteeServiceArea|Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantee"
	And I navigate to "Opportunities" tab
    When I perform quick search for "ROSES 2018: Rapid Response and Novel Research in Earth Science"
    When I click on "View" icon for "ROSES 2018: Rapid Response and Novel Research in Earth Science" inside table
	When I navigate to "Overview" sub tab
	Then I see "Associate" button inside "Project/Service Area" flex table not displayed
	
	@42694 @all @hideExpressioJsonForRightOperandForUserAppStateAsAdministratorWithOperatorIn-gSetup
	Scenario: validate disabling of New button for User app State as Administrator with operator IN-gSetup 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |CreatedandInactiveOrganizations|Name                       |New                       |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                    |coreComponentField             |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForUserAppSAAdministratorWithOperatorIn|CreatedandInactiveOrganizations|Name                       |New                       |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As an Administrator"
	And I navigate to "Setup" tab
	Then I see "New" button inside "Draft Internal Organizations" flex table not displayed
	
	@42701 @all @hideExpressioJsonForRightOperandForFieldWithOperatorEquals-gPlanning
	Scenario: validate disabling of Associate button for field with operator Equals-gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                       |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorEquals|ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42704 @all @hideExpressioJsonForRightOperandForUserAppRecipientWithOperatorIn-gPlanning @check
	Scenario: validate disabling of Associate button for user app Recipient with operator In -gOpportunities
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |GrantProjectAreas    |Name                       |View                      |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                             |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForUseAppRecipientWithOperatorIn|GrantProjectAreas       |Name                       |View                      |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Sub-Recipient"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42708 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorWithOperatorAND-gPlanning
	Scenario: validate disabling of Associate button for profile system adminitrator with operator AND -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                         |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorWithOperatorAnd|ProgramFundingAccount   |Name                       |Associate                 |
     When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42710 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorWithOperatorOR-gPlanning
	Scenario: validate disabling of Associate button for profile system adminitrator with operator OR -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                         |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorWithOperatorOR |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42711 @all @hideExpressioJsonForRightOperandForUserTypeInternalAndContextViewWithOperatorAND-gPlanning
	Scenario: validate disabling of Associate button for user type Internal and context view with operator AND -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                              |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForUserTypeInternalAndContextViewWithOperatorAND |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42712 @all @hideExpressioJsonForRightOperandForUserTypeInternalAndContextViewWithOperatorOR-gPlanning
	Scenario: validate disabling of Associate button for user type Internal and context view with operator OR -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                              |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForUserTypeInternalAndContextViewWithOperatorOR  |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42714 @all @hideExpressioJsonForRightOperandForUserTypeInternalAndUserAppSAGrantorWithOperatorAND-gPlanning
	Scenario: validate disabling of Associate button for user type Internal and user app state as grantor with operator AND -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                                  |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForUserTypeInternalAndUserAppSAGrantorWithOperatorAND|ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42716 @all @hideExpressioJsonForRightOperandForUserTypeInternalAndUserAppSAGrantorWithOperatorOR-gPlanning
	Scenario: validate disabling of Associate button for user type Internal and user app state as grantor with operator OR -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                                  |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForUserTypeInternalAndUserAppSAGrantorWithOperatorOR |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42717 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorAndUserAppSAGrantorWithOperatorOR-gPlanning
	Scenario: validate disabling of Associate button for profile sys Administrator and user app state as grantor with operator OR -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                                            |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorAndUserAppSAGrantorWithOperatorAND|ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42719 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorAndUserAppSAGrantorWithOperatorAND-gPlanning
	Scenario: validate disabling of Associate button for profile sys Administrator and user app state as grantor with operator AND -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                                            |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorAndUserAppSAGrantorWithOperatorOR |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42720 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorAndContextViewWithOperatorAND-gPlanning
	Scenario: validate disabling of Associate button for profile Sys Administrator and Context View with operator AND -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                                        |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorAndContextViewWithOperatorAND |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42722 @all @hideExpressioJsonForRightOperandForProfileSystemAdministratorAndContextViewWithOperatorOR-gPlanning
	Scenario: validate disabling of Associate button for profile Sys Administrator and Context View with operator OR -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                                        |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForProfileSystemAdministratorAndContextViewWithOperatorOR  |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42806 @all @hideExpressioJsonForRightOperandForContextViewAndUserAppSAGrantorWithOperatorAND-gPlanning
	Scenario: validate disabling of Associate button for context view and user app state as grantor with operator AND -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                              |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForContextViewAndUserTypeSAGrantorWithOperatorAND|ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42807 @all @hideExpressioJsonForRightOperandForContextViewAndUserAppSAGrantorWithOperatorOR-gPlanning
	Scenario: validate disabling of Associate button for context view and user app state as grantor with operator OR -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                              |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForContextViewAndUserTypeSAGrantorWithOperatorOR |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42808 @all @hideExpressioJsonForRightOperandForFieldAndUserTypeInternalWithOperatorAND-gPlanning
	Scenario: validate disabling of Associate button for Field and user type internal with operator AND -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                            |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldAndUserTypeInternalWithOperatorAND     |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42833 @all @hideExpressioJsonForRightOperandForFieldAndProfileSystemAdministratorWithOperatorAND-gPlanning
	Scenario: validate disabling of Associate button for Field and profile system administrator with operator AND -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                                 |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldAndProfileSystemAdministratorWithOperatorAND|ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42835 @all @hideExpressioJsonForRightOperandForFieldAndProfileSystemAdministratorWithOperatorOR-gPlanning
	Scenario: validate disabling of Associate button for Field and profile system administrator with operator OR -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                                 |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldAndProfileSystemAdministratorWithOperatorOR |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42836 @all @hideExpressioJsonForRightOperandForFieldAndContextEditWithOperatorAND-gPlanning
	Scenario: validate disabling of Associate button for Field and context edit with operator AND -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                   |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldAndContextEditWithOperatorAND |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42837 @all @hideExpressioJsonForRightOperandForFieldAndContextEditWithOperatorOR-gPlanning
	Scenario: validate disabling of Associate button for Field and context edit with operator OR -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                   |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldAndContextEditWithOperatorOR  |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42838 @all @hideExpressioJsonForRightOperandForFieldAndUserAppSAGrantorWithOperatorAND-gPlanning
	Scenario: validate disabling of Associate button for Field and user app state as grantor with operator AND -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                       |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldAndUserAppSAGrantorWithOperatorAND|ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "Edit" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@42839 @all @hideExpressioJsonForRightOperandForFieldAndUserAppSAGrantorWithOperatorOR-gPlanning
	Scenario: validate disabling of Associate button for Field and user app state as grantor with operator OR -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                       |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldAndUserAppSAGrantorWithOperatorOR |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@43226 @all @hideExpressioJsonForLeftOperandForFieldWithOperatorNotEquals-gPlanning
	Scenario: validate Associate button is present for Field with operator NotEquals -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                           |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorNotEquals |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table
	
	@43229 @all @hideExpressioJsonForLeftOperandForFieldWithOperatorNotEqualsAtDifferentPrograms-gPlanning
	Scenario: validate Associate button is not present for other programs which is not defined in Json  with operator NotEquals -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                           |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorNotEquals |ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation-SA to C"
    When I click on "View Program Details" icon for "Test program for automation-SA to C" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed	
	
	@43720 @all @hideExpressioJsonForLeftOperandForFieldUsingPicklistWithOperatorEqualsTo-gPlanning
	Scenario: validate disabling of Associate button for field using picklist value grant with operator Equals To -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                      |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldUsingPicklistWithOperatorEqualsTo|ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@43721 @all @hideExpressioJsonForLeftOperandForFieldUsingLookupWithOperatorEqualsTo-gPlanning
	Scenario: validate disabling of Associate button for field using lookup relationship with operator Equals To -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                    |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldUsingLookupWithOperatorEqualsTo|ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@43722 @all @hideExpressioJsonForLeftOperandForFieldUsingPicklistWithOperatorNotEqualsTo-gPlanning
	Scenario: validate Associate button is present for Field using picklist with operator Not Equals To -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                         |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldUsingPicklistWithOperatorNotEqualsTo|ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table
	
	@43723 @all @hideExpressioJsonForLeftOperandForFieldUsingLookupWithOperatorNotEqualsTo-gPlanning
	Scenario: validate Associate button is present for Field using lookup with operator Not Equals To -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                       |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldUsingLookupWithOperatorNotEqualsTo|ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table
	
	@43881 @all @hideExpressioJsonForLeftOperandForFieldUsingOperatorContains-gPlanning
	Scenario: validate disabling of Associate button for field with operator Contains -gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                         |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorContains|ProgramFundingAccount   |Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	
	@43883 @all @hideExpressioJsonForLeftOperandForFieldUsingOperatorLessThanEquals-gAnnouncement
	Scenario: validate disabling of Associate button for field with operator Less than equals -gAnnouncement
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |AnnouncementFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                       |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldWithLessThanEquals|AnnouncementFundingAccount|Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
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
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |AnnouncementFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                       |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldWithLessThanEquals|AnnouncementFundingAccount|Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
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
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |AnnouncementFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                          |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldWithGreaterThanEquals|AnnouncementFundingAccount|Name                       |Associate                 |
    When I login as "Automation" user
	When I navigate to "GovGrants Launcher Tab" tab
	When I setup my app as "As a Grantor"
	And I navigate to "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Accounts" flex table not displayed	