@NewAPIRelatedScenarios @regression
Feature: New API related scenarios temporary

  @54772    @lookUpHeaderTextFieldWithNumberOfAwardsAtPageBlockDetail-gPlanning @check @wip
  Scenario: Adding column header with number of award Api name to lookup modal from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,NumberofAwards__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "#Grants" in table header on lookup Modal

  @54769    @lookUpHeaderTextFieldWithGrantingAgencyAtPageBlockDetail-gPlanning @check @wip
  Scenario: Adding column header with granting agency Api name to lookup modal from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,IsGrantingAgency__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Granting Agency" in table header on lookup Modal

  @54767    @lookUpHeaderTextFieldWithDivisionAtPageBlockDetail-gPlanning @check @wip
  Scenario: Adding column header with Division Api name to lookup modal from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,Division__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Division" in table header on lookup Modal

  @54766    @lookUpHeaderTextFieldWithContactAtPageBlockDetail-gPlanning @check @wip
  Scenario: Adding column header with Contact Api name to lookup modal from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue   | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,Contact__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Contact" in table header on lookup Modal

  @54765    @lookUpHeaderTextFieldWithBillingStateAtPageBlockDetail-gPlanning @check @wip
  Scenario: Adding column header with Billing State Api name to lookup modal from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,BillingState__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Billing State" in table header on lookup Modal

  @54764    @lookUpHeaderTextFieldWithDateTimeAtPageBlockDetail-gPlanning @check @wip
  Scenario: Adding column header with Date Time Api name to lookup modal from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue    | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,DateTime__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "DateTime" in table header on lookup Modal

  @54763    @lookUpHeaderTextFieldWithDateAtPageBlockDetail-gPlanning @check @wip
  Scenario: Adding column header with Date Api name to lookup modal from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name,Date__c  | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Date" in table header on lookup Modal

  @54758    @lookUpHeaderTextFieldWithMultipleFieldAPIAtPageBlockDetail-gPlanning  @check @wip
  Scenario Outline: Adding column header with multiple Field API to lookup modal from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <defaultApi>      | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <newFieldApi> | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
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

  @54901    @validatelookupSearchModalItemSortedInAscendingOrderAtPageBlockDetail-gPlanning @wip
  Scenario: Changing column header and its data of lookup modal from config and valiodating it on program detail page
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test Program for testing"
    When I click on "Edit" icon for "Test Program for testing" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    When I click on svg arrow inside lookup modal for "Ascending"
    Then I see content inside lookup modal in "Ascending" order

  @59142    @lookUpHeaderTextFieldWithoutNameAtPageBlockDetail-gPlanning @wip
  Scenario: Adding column header with Api name EIN text without Name in the look up modal displaye name from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | EINText__c    | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "EIN Text" in table header on lookup Modal

  @59043    @lookUpHeaderTextFieldWithExpirationDateAndDateTimeAtPageBlockDetail-gPlanning  @wip
  Scenario Outline: Adding column header with DUNS SAMS Expiration date and DateTime Field API to lookup modal from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <defaultApi>      | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <newFieldApi> | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
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

  @54749    @itemGettingSavedAfterSelectingFromlookUpModal-gPlanning @wip
  Scenario: Validate user is able to select particular organization and it should get saved properly.
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
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

  @54748    @isLookupSearchIsWorkingWihDateOrDateTimeField @smoke @wip
  Scenario Outline: Validate lookup search is working fine with data and date time field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <oldLookupFilter> | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <newLookupDisplayName> | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <newLookupFilter>      | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
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

  @59038    @dataTableShouldRenderedProperlyWithOrganizationNameAtLightningLookup-gPlanning @wip
  Scenario: Validate after entering text inside lightning lookup search table should rendered properly with organization name while passing formula fiels at lookup dispaly field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue       | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | OrganizationName__c | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I enter value "Health" into field "custom_lookupAccount__c"
    Then I see data table box for lookup

  @59060    @lookUpHeaderTextFieldWithoutNameAtPageBlockDetail-gPlanning @wip
  Scenario Outline: Adding column header with Api name EIN text without Name in the look up modal displaye name from config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <oldLookupFilter> | Grantee State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Lookup Sort Direction      | ASC               | Grantee State Program | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Lookup Sort By             | Name              | Grantee State Program | ApiGeneratedId:3 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue     | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | EINText__c        | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <newLookupFilter> | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Sort Direction      | ASC               | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Sort By             | EINText__c        | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
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

  @60540    @errorMessageForInvalidInputAtLookupSearch @wip
  Scenario: Validate lookup search throwing error message for invalid input
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I enter value "'''" into field "custom_lookupAccount__c"
    Then I see error message "No Records Found" for invalid input at "custom_lookupAccount__c"

  @64956    @VerifylookUpDisplayFieldNameToOverrideLabelOfFieldsAtPageBlockDetail-gPlanning @wip
  Scenario: Adding display field Names as Name to override the labels at lookup modal from PB config and validating it on program detail page
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue           | coreComponentField    | coreComponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | govgrants_config:Lookup | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Test Automation" in table header on lookup Modal

  @65023    @VerifylookUpFilterCriteriaToFilterOutRecordsInLookupWindowAtPageBlockDetail-gPlanning @wip
  Scenario Outline: Validate lookup filter criteria is working fine by displaying all Active records in lookup window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | Name              | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <oldLookupFilter> | Grantee State Program | ApiGeneratedId:1 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                  | fieldNewValue          | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Display Field Names | <newLookupDisplayName> | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Filter Criteria     | <newLookupFilter>      | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see "Active" status in Lookup window

    Examples:
      | oldLookupFilter                                                                    | newLookupFilter     | newLookupDisplayName |
      | RecordType.Name='Internal' AND GroupCode__c='{!GroupCode}' AND Status__c ='Active' | Status__c ='Active' | Name,Status__c       |

  @65027    @VerifylookupSortByToSortRecordsUnderNameColumnInAscOrderInLookupWindowAtPageBlockDetail-gPlanning @wip
  Scenario: Validate lookup sort by is working fine by sorting all records in ascending order under lookup window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Sort Direction | ASC               | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Lookup Sort By        | Name              | Grantee State Program | ApiGeneratedId:1 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Sort Direction | ASC           | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Sort By        | Name          | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see content inside lookup modal in "Ascending" order

  @65040    @VerifylookupSortByToSortRecordsUnderNameColumnInDescOrderInLookupWindowAtPageBlockDetail-gPlanning @wip
  Scenario: Validate lookup sort by is working fine by sorting all records in descending order under lookup window
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Lookup Sort Direction | ASC               | Grantee State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Lookup Sort By        | Name              | Grantee State Program | ApiGeneratedId:1 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Lookup Sort Direction | DESC          | Grantee State Program | Name                      | PBD-3178                   |
      | Page Block Config:Page Block Rule Detail | Lookup Sort By        | Name          | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    Then I see content inside lookup modal in "Descending" order

  @65042    @VerifyHideFieldJSONToHideFieldAccordingToSelectedLookupFieldValueAtPageBlockDetail-gPlanning @wip
  Scenario: Validate Hide Fields JSON is working fine by Hiding Program SubType Field if owner organization is Department of Community Health
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON |                   | Grantee State Program | ApiGeneratedId:0 |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description              | name                  |
      | false        | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName        | fieldNewValue                               | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Hide Fields JSON | govgrants_config:Lookup_Hide_Decision_Field | Grantee State Program | Name                      | PBD-3178                   |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                  |
      | true         | 0            | a0b1C00000OGDD0QAP | Lightning lookup updated | enableLightningLookup |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I click "close" icon for lightning lookup
    When I click "search" icon for lightning lookup
    And I select value "Department of Community Health" from lightning lookup table
    When I click on "Save" in the page details
    When I click on "Edit" in the page details
    Then I see "Program Sub Type" is not displayed inside page block detail

  @59888    @VerifyCurrencyLocalToDisplayIDRSymbolInCurrencyField @needCurrencyLocalAPIs @wip
  Scenario: Validate Currency Local is working fine by displaying IDR in Expected Future Funding currency field at Page Layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    Then I softly see field "Expected Future Funding" as "IDR500,000"
    Then I collect all the soft asserts

  @59984    @verifyThatIDRCurrencyUnitIsDisplayedInsideTotalAmountAtFlexTable-gPlanning @needCurrencyLocalAPIs @wip
  Scenario: verify that IDR is displayed under Total Amount displayed inside flex table of programs-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Total | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Total     | true          | Programs           | Name                      | FTC-1018                   |
      | Flex Table:General    | Enable Total Row | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    Then I see "IDR" is displayed under total amount in flex table

  @59979    @verifyDollarSymbolIsNotPresentInTotalLabelAtMEGrid @NeedToCheck  @AfterBugFix @needCurrencyLocalAPIs @wip
  Scenario: Verify that double dollar symbol($$) is not shown inside Total Label in MEGrid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Total Row | true              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Total Row | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Row | true          | ApplicationBudgetCategoryFlexTable |                           |                            |
      | Flex Table:General    | Enable Total Row | false         | ApplicationBudgetPeriods           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "inlineEditGridApplicationBudgetCategoryFlexGrid" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "Total" inside rows of child grid id "toggleFGridApplicationBudgetCategoryFlexGrid"

  @59979    @verifyDollarSymbolIsNotPresentInSubTotalLabelAtMEGrid @needCurrencyLocalAPIs @wip
  Scenario: Verify that dollar symbol($) is not shown inside SubTotal Label in MEGrid
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Row    | true              | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Row    | true          | ApplicationBudgetCategoryFlexTable |                           |                            |
      | Flex Table:General    | Enable Row Grouping | true          | ApplicationBudgetCategoryFlexTable | Name                      | FTC-1078                   |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    When I perform quick search for "BP-01" in "inlineEditGridApplicationBudgetCategoryFlexGrid" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "SubTotal" inside rows of enhanced grid id "toggleFGridApplicationBudgetCategoryFlexGrid"

  @59978   @CheckCurrencySymbolInTotalAmountAtApplicationBudgetCategoryFlexTableChild-gApplications @needCurrencyLocalAPIs @wip
  Scenario Outline: Validate Currency Unit (IDR) is present under Grantor Share column Total Amount at Application budget flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <olddisplayfields> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue      | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newdisplayfields> | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    And I perform quick search for "BP-01" in "inlineEditGridApplicationBudgetCategoryFlexGrid" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "IDR" currency unit is present in "Total" Amount at "toggleFGridApplicationBudgetCategoryFlexGrid" Flex Grid

    Examples:
      | olddisplayfields                                                                                     | newdisplayfields                                          |
      | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c |

  @59978   @CheckCurrencySymbolInSubTotalAmountAtApplicationBudgetCategoryFlexTableChild-gApplications @needCurrencyLocalAPIs @wip
  Scenario Outline: Validate Currency Unit (IDR) is present under Grantor Share column SubTotal Amount at Application budget flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General     | Display Field Names | <olddisplayfields> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue      | coreComponentField                 | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Display Field Names | <newdisplayfields> | ApplicationBudgetCategoryFlexTable |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Budget" sub tab
    And I perform quick search for "BP-01" in "inlineEditGridApplicationBudgetCategoryFlexGrid" panel
    When I expand nested table containing column value "BP-01"
    When I expand nested table containing column value "Proposed Uses Of Total Funds"
    Then I see "IDR" currency unit is present in "SubTotal" Amount at "toggleFGridApplicationBudgetCategoryFlexGrid" Flex Grid

    Examples:
      | olddisplayfields                                                                                     | newdisplayfields                                          |
      | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c,GranteeAmount__c,Amount__c,GranteeShare__c | Id,ServiceAreaTitle__c,BudgetCategory__c,GrantorAmount__c |

  @67157   @VerifyDownloadAsPDFButtonOnModal @wip
  Scenario: Validate download as PDF button on modal window in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Layout           | Hide Pdf Download | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Hide Pdf Download | false         | Roles and Responsibilities 2 |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click toggle button to select "Draft Announcements"
    When I perform quick search for "Test Announcement For Automation"
    When I click on "View" icon for "Test Announcement For Automation" inside table
    When I navigate to "Roles" sub tab
    When I click on "View" icon for "Owner" to save inside subtab
    Then I see "Download As PDF" button is present on Modal

  @61467   @VerifySessionTimeoutRemainderDialogBoxShownInBrowserTab
  Scenario: Verify session Timeout reminder dialog box shown in browser tab title after 1 min of session login
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                 | name                        |
      | false        | 2            | a0b1C00000M9lj9QAB | SessionTimeoutReminderValue | SessionTimeoutReminderValue |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                  |
      | true         | 0            | a0b1C00000M9ljOQAR | Session Enable Reminder | SessionEnableReminder |
    When I navigate to "Planning" tab
    When I pause execution for "60" seconds
    Then I see session timeout remainder as "01" countdown is shown in browser tab

  @61468   @VerifyLogoutPageDisplayedAfterTimeGivenInSessionTimeoutValue
  Scenario Outline: Verify that session will get expired after given SessionTimeoutValue and Logout Page gets Displayed
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                           | name                |
      | false        | 3            | a0b1C00000M9ljEQAR | Value for session timeout in a minute | SessionTimeoutValue |
    When I navigate to "Planning" tab
    When I pause execution for "180" seconds
    Then I see "" "<Logout_URL>" page is displayed
    Examples:
      | Logout_URL                                |
      | https://ggptest5-dev-ed.my.salesforce.com |

  @61434   @VerifySessionTimeoutPopUpAppears
  Scenario: Verify session timeout pop-up appears after 2 min of session login
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description               | name                      |
      | true         | 1            | a0b1C00000LaBhVQAV | SessionDialogTimeoutLimit | SessionDialogTimeoutLimit |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description              | name                   |
      | true         | 0            | a0b1C00000M9ljTQAR | Session Enable DialogBox | SessionEnableDialogBox |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I softly see Session Timeout dialogue box with title "Session Expiration Warning" is displayed

  @61462 @VerifySessionGetsContinueByClickOnStayLoggedInButton @checkcannotSee @wip
  Scenario: Verify that session will get continue by click on Stay Logged In Button
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    When I click on "Stay Logged In" Button in Session Timeout dialogbox
    Then I softly cannot see Session Timeout dialogue box with title "Session Expiration Warning" is displayed

  @61637   @VerifySessionTimeoutPopUpAppears
  Scenario: Verify session timeout pop-up appears after 1 min of session login
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "Edit" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Overview" sub tab
    When I click on top right button "Associate" in flex table with id "ProgramContacts"
    When I pause execution for "120" seconds
    Then I softly see Session Timeout dialogue box with title "Session Expiration Warning" is displayed

  @61455   @VerifySessionTimeoutDialogBoxTitle @checkSoftly @checkCustomLabel @wip
  Scenario: Verify session timeout Dialog Box title
    When I login as "Automation" user
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I softly see Session Timeout dialogue box with title "Test Automation" is displayed

  @61635   @VerifySessionTimeoutDialogBoxText @checkCustomLabel @wip
  Scenario: Verify session timeout Dialog Box body text
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I see Session Timeout dialogbox with text "Test Automation Body Text"

  @68373   @VerifySessionTimeoutDialogBoxTimeRemainingText @checkCustomLabel @wip
  Scenario: Verify session timeout Dialog time remaining text
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I see Session Timeout dialogbox with text "Time remaining test Automation:"

  @68376   @VerifySessionTimeoutDialogBoxWithTestLoggedInButton  @checkCustomLabel @wip
  Scenario: Verify session timeout Dialog Box text
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I see Session Timeout dialogbox with button "Test Logged In"

  @68377   @VerifySessionTimeoutDialogBoxWithTestLoggedOutButton  @checkCustomLabel @wip
  Scenario: Verify session timeout Dialog Box text
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description             | name                    |
      | false        | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description             | name                    |
      | true         | 0            | a0b1C00000M9lj4QAB | SessionEnableManagement | SessionEnableManagement |
    When I navigate to "Planning" tab
    When I pause execution for "120" seconds
    Then I see Session Timeout dialogbox with button "Test Log Out"
