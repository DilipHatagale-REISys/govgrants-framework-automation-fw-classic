@NewAPIRelatedScenarios @regression
Feature: New API related scenarios temporary

  @54772    @lookUpHeaderTextFieldWithNumberOfAwardsAtPageBlockDetail-gPlanning @check
  Scenario: Adding column header with number of award Api name to lookup modal from config and validating it on program detail page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,NumberofAwards__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "# Grants" in table header on lookup Modal

  @54769    @lookUpHeaderTextFieldWithGrantingAgencyAtPageBlockDetail-gPlanning @check
  Scenario: Adding column header with granting agency Api name to lookup modal from config and validating it on program detail page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,IsGrantingAgency__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Granting Agency" in table header on lookup Modal

  @54767    @lookUpHeaderTextFieldWithDivisionAtPageBlockDetail-gPlanning @check
  Scenario: Adding column header with Division Api name to lookup modal from config and validating it on program detail page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,Division__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Division" in table header on lookup Modal

  @54766    @lookUpHeaderTextFieldWithContactAtPageBlockDetail-gPlanning @check
  Scenario: Adding column header with Contact Api name to lookup modal from config and validating it on program detail page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,Contact__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Contact" in table header on lookup Modal

  @54765    @lookUpHeaderTextFieldWithBillingStateAtPageBlockDetail-gPlanning @check
  Scenario: Adding column header with Billing State Api name to lookup modal from config and validating it on program detail page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,BillingState__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Billing State" in table header on lookup Modal

  @54764    @lookUpHeaderTextFieldWithDateTimeAtPageBlockDetail-gPlanning @check
  Scenario: Adding column header with Date Time Api name to lookup modal from config and validating it on program detail page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,DateTime__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "DateTime" in table header on lookup Modal

  @54763    @lookUpHeaderTextFieldWithDateAtPageBlockDetail-gPlanning @check
  Scenario: Adding column header with Date Api name to lookup modal from config and validating it on program detail page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,Date__c  | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Date" in table header on lookup Modal

  @54758    @lookUpHeaderTextFieldWithMultipleFieldAPIAtPageBlockDetail-gPlanning  @check
  Scenario Outline: Adding column header with multiple Field API to lookup modal from config and validating it on program detail page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <defaultApi>      | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <newFieldApi> | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "<fieldDisplayNames>" in flex table header

    Examples:
      | fieldDisplayNames | newFieldApi                                                                         | defaultApi |
      | Account Name      | Name,Date__c,DateTime__c,BillingState__c,Contact__c,Division__c,IsGrantingAgency__c | Name       |
      | Date              | Date__c,Name,DateTime__c,BillingState__c,Contact__c,Division__c,IsGrantingAgency__c | Name       |
      | DateTime          | DateTime__c,Name,Date__c,BillingState__c,Contact__c,Division__c,IsGrantingAgency__c | Name       |
      | Billing State     | BillingState__c,Name,Date__c,DateTime__c,Contact__c,Division__c,IsGrantingAgency__c | Name       |
      | Contact           | Contact__c,Name,Date__c,DateTime__c,BillingState__c,Division__c,IsGrantingAgency__c | Name       |
      | Division          | Division__c,Name,Date__c,DateTime__c,BillingState__c,Contact__c,IsGrantingAgency__c | Name       |
      | Granting Agency   | IsGrantingAgency__c,Name,Date__c,DateTime__c,BillingState__c,Contact__c,Division__c | Name       |

  @54901    @validatelookupSearchModalItemSortedInAscendingOrderAtPageBlockDetail-gPlanning @check
  Scenario: Changing column header and its data of lookup modal from config and valiodating it on program detail page
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test Program for testing"
    When I click on "Edit" icon for "Test Program for testing" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    When I click on svg arrow inside lookup modal for "Ascending"
    Then I see content inside lookup modal in "Ascending" order

  @59142    @lookUpHeaderTextFieldWithoutNameAtPageBlockDetail-gPlanning @check
  Scenario: Adding column header with Api name EIN text without Name in the look up modal displaye name from config and validating it on program detail page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | EINText__c    | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "EIN Text" in table header on lookup Modal

  @59043    @lookUpHeaderTextFieldWithExpirationDateAndDateTimeAtPageBlockDetail-gPlanning  @check
  Scenario Outline: Adding column header with DUNS SAMS Expiration date and DateTime Field API to lookup modal from config and validating it on program detail page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <defaultApi>      | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <newFieldApi> | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "<fieldDisplayNames>" in flex table header

    Examples:
      | fieldDisplayNames         | newFieldApi                            | defaultApi |
      | DUNS/SAMS Expiration Date | DUNSExpirationDate__c,Name,DateTime__c | Name       |
      | DateTime                  | DUNSExpirationDate__c,Name,DateTime__c | Name       |

  @54749    @itemGettingSavedAfterSelectingFromlookUpModal-gPlanning @check
  Scenario: Validate user is able to select particular organization and it should get saved properly.
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    And I select value "Department of Community Health" from lightning lookup table
    When I click on "Save" in the page details
    Then I see field "Owner Organization" as "Department of Community Health"

  @54748    @isLookupSearchIsWorkingWihDateOrDateTimeField @smoke
  Scenario Outline: Validate lookup search is working fine with data and date time field
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <oldLookupFilter> | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <newLookupDisplayName> | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <newLookupFilter>      | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I enter value "Health" into field "custom_lookupAccount__c"
    Then I see data table box for lookup

    Examples:
      | oldLookupFilter                                                                    | newLookupFilter | newLookupDisplayName |
      | RecordType.Name='Internal' AND GroupCode__c='{!GroupCode}' AND Status__c ='Active' | Date__c != null | Name,Date__c         |

  @59038    @dataTableShouldRenderedProperlyWithOrganizationNameAtLightningLookup-gPlanning @check
  Scenario: Validate after entering text inside lightning lookup search table should rendered properly with organization name while passing formula fiels at lookup dispaly field
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | OrganizationName__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I enter value "Health" into field "custom_lookupAccount__c"
    Then I see data table box for lookup

  @59060    @lookUpHeaderTextFieldWithoutNameAtPageBlockDetail-gPlanning @check
  Scenario Outline: Adding column header with Api name EIN text without Name in the look up modal displaye name from config and validating it on program detail page
    Given I have default configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <oldLookupFilter> | Grantee State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Lookup Sort Direction      | ASC               | Grantee State Program | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Lookup Sort By             | Name              | Grantee State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | EINText__c        | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <newLookupFilter> | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Sort Direction      | ASC               | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Sort By             | EINText__c        | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see that svg arrow is in "ascending" order

    Examples:
      | oldLookupFilter                                                                    | newLookupFilter                                                                    |
      | RecordType.Name='Internal' AND GroupCode__c='{!GroupCode}' AND Status__c ='Active' | RecordType.Name='Internal' AND GroupCode__c='{!GroupCode}' AND Status__c ='Active' |

  @60540    @errorMessageForInvalidInputAtLookupSearch
  Scenario: Validate lookup search throwing error message for invalid input
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I enter value "'''" into field "custom_lookupAccount__c"
    Then I see error message "No Records Found" for invalid input at "custom_lookupAccount__c"