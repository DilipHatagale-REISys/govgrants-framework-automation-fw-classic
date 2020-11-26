@Dnd-component @regression-test8 @DND
Business Need: dnd Component Scenarios
  Test all dnd component based scenarios
  As a configuration manager i make different configurational changes in dnd custom metadata config and will validate them.

  @102696 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForTextFieldValue
  Scenario Outline: verify the global search result by setting dnd criteria for text field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                              | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Text2__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Text Text"
    Then I see "Text Text" value in flex table id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} |

  @102697 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldValue
  Scenario Outline: verify the global search result by setting dnd criteria for picklist field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                                | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Country__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "IND"
    And I pause execution for "60" seconds
    Then I softly see "USA" value in flex table id "---program:-:programSearchFlexTableID---"
    Then I softly do not see "IND" value in flex table id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} |

  @115775 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForInvalidEmailFieldValue
  Scenario Outline: verify the global search result by setting dnd criteria for invalid dummy email field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                              | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Account | (NOT DND_Email__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "asbhca"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} |

  @102699 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEmailFieldValueAsTest
  Scenario Outline: verify the global search result by setting dnd criteria for email field value as test from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                              | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Email__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    And I pause execution for "3" seconds
    When I perform quick search inside global search "test"
    And I pause execution for "3" seconds
    Then I see "test48@example.com" value in flex table id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} |

  @115772 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEmailFieldValueContainingDotCom
  Scenario Outline: verify the global search result by setting dnd criteria for email field value as .com from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                              | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Email__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "test"
    Then I see "test128@example.com" value in flex table id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} |


  @102698 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPhoneFieldValue @wip
  Scenario: verify the global search result by setting dnd criteria for phone field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                       | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT Phone Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search ""
    Then I see "" value in flex table id "---program:-:programSearchFlexTableID---"

  @102700 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForURLFieldValue @wip
  Scenario: verify the global search result by setting dnd criteria for URL field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                     | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT URL Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search ""
    Then I see "" value in flex table id "---program:-:programSearchFlexTableID---"

  @102705 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForFormulaFieldValue @wip
  Scenario: verify the global search result by setting dnd criteria for formula field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                         | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT Formula Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search ""
    Then I see "" value in flex table id "---program:-:programSearchFlexTableID---"

  @115769 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWitValueUSA
  Scenario Outline: verify the global search result by setting dnd criteria for picklist field value USA from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                                | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Country__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "USA"
    Then I do not see "IND" value in flex table id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} |

  @102708 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForTextFieldWithOperatorContains
  Scenario Outline: verify the global search result by setting dnd criteria for text field using 'contains' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                              | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Text2__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Sne"
    Then I see "PG-REI-0022" value in flex table id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} |


  @102709 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForTextFieldWithOperatorNotContains
  Scenario Outline: verify the global search result by setting dnd criteria for text field using 'not contains' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                              | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Text2__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Text"
    Then I do not see "Text" value in flex table id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} |