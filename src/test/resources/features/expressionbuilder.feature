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
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42233 @all @hideExpressioJsonForRightOperandForAdminUser-gAnnouncement
	Scenario: validate disabling of create button for Admin user from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                  |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:FlexTableHideExpressionBuilderJsonForAdminUser|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
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
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
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
	When I login as "Automation-PM" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	When I re-login as "Automation" with "QA" url
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
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
	When I login as "Automation" User 
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table not displayed
	
	@42371 @all @hideExpressioJsonForRightOperandForProfileAdministratorWithOperatorNotIn-gAnnouncement
	Scenario: validate disabling of create button for profile Administrator with Operator Not In from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                                     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForAdministratorProfileWithNotInOperator|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation-PM" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
	When I select "Draft Announcements" from double headed dropdown inside admin portal
	Then I see "Create" button inside "Draft Announcements" flex table
	
	@42379 @all @hideExpressioJsonForRightOperandForUserTypeInternalWithOperatorIn-gAnnouncement
	Scenario: validate disabling of create button for user type Internal with Operator In from Announcement-Program 
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ActiveFundingOpportunities|Name                       |Create                    |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                          |coreComponentField        |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForInternalUserWithInOperator|ActiveFundingOpportunities|Name                       |Create                    |
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
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
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
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
	When I login as "Automation-Reviewer" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
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
	When I login as "Automation" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
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
	When I login as "Automation-Applicant" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
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
	When I login as "Automation-Reviewer" User
	When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Announcements" tab
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
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
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
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
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
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
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
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
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
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
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
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantee" app to reach "Opportunities" tab
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
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As an Administrator" app to reach "Setup" tab
	Then I see "New" button inside "Draft Internal Organizations" flex table not displayed
	
	@42701 @all @hideExpressioJsonForRightOperandForFieldWithOperatorEquals-gPlanning
	Scenario: validate disabling of Associate button for field with operator Equals-gPlanning
	Given I have default configuration as below:
	|configurationCategory |fieldName            |fieldOrignalValue     |coreComponentField   |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |                      |ProgramFundingAccount|Name                       |Associate                 |
	Given I setup test configuration as below:
	|configurationCategory |fieldName            |fieldNewValue                                                       |coreComponentField      |coreCOmponentSubFieldName  |coreComponentSubFieldValue|
	|Flex Table Action     |Hide Expression JSON |govgrants_config:HideExpressionBuilderJsonForFieldWithOperatorEquals|ProgramFundingAccount   |Name                       |Associate                 |
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
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
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Sub-Recipient" app to reach "Planning" tab
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
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
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
	When I login as "Automation" User 
    When I access the "GovGrants Launcher Tab" for "As a Grantor" app to reach "Planning" tab
    When I perform quick search for "Test program for automation - Created mode only"
    When I click on "View Program Details" icon for "Test program for automation - Created mode only" inside table
	When I navigate to "Financials" sub tab
	Then I see "Associate" button inside "Funding Account Information" flex table not displayed
	