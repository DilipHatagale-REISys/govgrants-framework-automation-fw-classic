@Dnd-component @regression-QA @DND
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
    And I pause execution for "5" seconds
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Test"
    And I pause execution for "3" seconds
    Then I see value "Test48Data" for title "DND_Text2" inside table "---program:-:programSearchFlexTableID---"

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
    And I pause execution for "3" seconds
    Then I see value "test48@example.com" for title "DND_Email" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} |

  @102700 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForURLFieldValue
  Scenario Outline: verify the global search result by setting dnd criteria for URL field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                            | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_URL__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search ".com"
    When I perform quick search for "PG-REI-0022"
    Then I see value "Google.com" for title "DND_URL" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} |

  @102705 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForFormulaFieldValue
  Scenario Outline: verify the global search result by setting dnd criteria for formula field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                                     | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Formula_Text__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Nigeria"
    Then I see value "Nigeria" for title "DND_Formula_Text" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} |

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
    Then I do not see value "IND" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

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
    And I pause execution for "3" seconds
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

  @102713 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWithOperatorNotContains
  Scenario Outline: verify the global search result by setting dnd criteria for picklist field using 'not contains' operator in filter criteria
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
    Then I do not see "USA" value in flex table id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} |

  @102712 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWithOperatorContains
  Scenario Outline: verify the global search result by setting dnd criteria for picklist field using 'contains' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                                | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Country__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "US"
    And I pause execution for "3" seconds
    Then I see "USA" value in flex table id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} |

  @103485 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWithOperatorNOTEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for picklist field using '!=' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                            | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_URL__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search ".com"
    And I pause execution for "10" seconds
    Then I softly see value "Google.com" for title "DND_URL" inside table "---program:-:programSearchFlexTableID---"
    Examples:
      | DNDFilterClause1                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} |

  @103486 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWithOperatorCONTAINS
  Scenario Outline: verify the global search result by setting dnd criteria for picklist field using 'CONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                            | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_URL__c Like '%{!searchVal}%') | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search ".com"
    Then I softly see value "Google.com" for title "DND_URL" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} |

  @103839 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForMultipleFieldWithOperatorNOTEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for multiple fields using 'NOT EQUALS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Test48Data"
    Then I softly do not see value "Test48Data" for title "DND_URL" inside table "---program:-:programSearchFlexTableID---"
    And I navigate to "Home" tab
    When I click on global search and select "Programs"
    When I perform quick search inside global search "USA"
    Then I softly do not see value "USA" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                 |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | (NOT DND_Text2__c Like '%{​!searchVal}​%') AND (NOT DND_Country__c Like '%{​!searchVal}​%') |

  @103488 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForURLFieldWithOperatorNOTCONTAINS
  Scenario Outline: verify the global search result by setting dnd criteria for URL fields using 'NOT CONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "test"
    Then I do not see value "test" for title "DND_URL" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                            |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_URL__c Like '%{!searchVal}%') |

  @103483 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEmailFieldWithOperatorNOTCONTAINS
  Scenario Outline: verify the global search result by setting dnd criteria for email fields using 'NOT CONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             | <dndCriteria>  | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "sne"
    Then I do not see value "sne" for title "DND_Email" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                              |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_Email__c Like '%{!searchVal}%') |

  @103481 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEmailFieldWithOperatorNOTEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for email fields using 'NOT EQUALS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Test"
    Then I do not see value "Test" for title "DND_Email" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                              |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | (NOT DND_Email__c Like '%{!searchVal}%') |

  @102711 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWithOperatorNOTEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for picklist fields using 'NOT EQUALS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "USA"
    Then I do not see value "USA" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | (NOT DND_Country__c Like '%{!searchVal}%') |

  @102707 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForTextFieldWithOperatorNOTEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for text fields using 'NOT EQUALS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Text"
    Then I do not see value "Text" for title "DND_Text2" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                              |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | (NOT DND_Text2__c Like '%{!searchVal}%') |

  @102710 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWithOperatorEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for picklist fields using 'EQUALS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "USA"
    Then I see value "USA" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Country__c Like '%{!searchVal}%') |

  @103482 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEmailFieldWithOperatorEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for email fields using 'contains' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "sne"
    Then I do not see value "sne" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                              |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | (NOT DND_Email__c Like '%{!searchVal}%') |

  @103840 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForTextFieldWithOperatorCONTAINS
  Scenario Outline: verify the global search result by setting dnd criteria for text fields using 'contains' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Health"
    Then I see value "Test111Data" for title "DND_Text2" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                                                                                 |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | (NOT DND_Text2__c Like '%{​!searchVal}​%') AND (NOT DND_Country__c Like '%{​!searchVal}​%') |

  @103838 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForMultipleFieldWithOperatorEqualsEquals
  Scenario Outline: verify the global search result by setting dnd criteria for multiple fields using '==' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Health"
    Then I see value "Test94Data" for title "DND_Text2" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                 |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Text2__c Like '%{​!searchVal}​%') AND (NOT DND_Country__c Like '%{​!searchVal}​%') |

  @103484 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForURLFieldWithOperatorEqualsEquals
  Scenario Outline: verify the global search result by setting dnd criteria for URL fields using '==' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "abcd"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                            |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_URL__c Like '%{!searchVal}%') |

  @103841 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForMultipleFieldWithOperatorNOTCONTAINS
  Scenario Outline: verify the global search result by setting dnd criteria for multiple fields using 'NOT CONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Text"
    Then I do not see value "Text" for title "DND_Text2" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                                                                                 |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_Text2__c Like '%{​!searchVal}​%') AND (NOT DND_Country__c Like '%{​!searchVal}​%') |

  @116951 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForMultipleFieldWithOperatorEQUALSEQUALSAndSearchInvalidText
  Scenario Outline: verify the global search result by setting dnd criteria for multiple fields using 'EQUALS EQUALS' operator in filter criteria and searching invalid text
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "xyza"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                 |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Text2__c Like '%{​!searchVal}​%') AND (NOT DND_Country__c Like '%{​!searchVal}​%') |

  @116945 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWithOperatorNOTCONTAINSAndSearchTextAsChina
  Scenario Outline: verify the global search result by setting dnd criteria for picklist fields using 'NOTCONTAINS' operator in filter criteria and searching text as china
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "China"
    Then I do not see value "China" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                                |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_Country__c Like '%{!searchVal}%') |

  @116937 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWithOperatorCONTAINSAndSearchTextAsAS
  Scenario Outline: verify the global search result by setting dnd criteria for picklist fields using 'CONTAINS' operator in filter criteria and searching text as AS
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "AS"
    Then I see value "USA" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                                |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | (NOT DND_Country__c Like '%{!searchVal}%') |

  @116934 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWithOperatorEQUALSAndSearchInvalidValue
  Scenario Outline: verify the global search result by setting dnd criteria for picklist fields using 'EQUALS' operator in filter criteria and searching invalid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "abcf"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Country__c Like '%{!searchVal}%') |

  @116935 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWithOperatorNotEQUALSAndSearchValueAsFrance
  Scenario Outline: verify the global search result by setting dnd criteria for picklist fields using 'NOTEQUALS' operator in filter criteria and searching France value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "France"
    And I expand table with header "NGO Programs"
    Then I do not see value "France" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Country__c Like '%{!searchVal}%') |

  @117250 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldWithMultipleDNDCriteriaWithOperatorContainsAndSearchValueAsUSA
  Scenario Outline: verify the global search result by setting dnd criteria for picklist fields using 'CONTAINS' operator in filter criteria and searching USA value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "IND"
    And I pause execution for "3" seconds
    Then I see value "USA" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                                                                                 |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | (NOT DND_Text2__c Like '%{​!searchVal}​%') AND (NOT DND_Country__c Like '%{​!searchVal}​%') |

  @117251 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForTextFieldWithMultipleDNDCriteriaWithOperatorContainsAndSearchValueAs111
  Scenario Outline: verify the global search result by setting dnd criteria for TEXT fields using 'CONTAINS' operator in filter criteria and searching 111 value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "111"
    Then I see value "Test111Data" for title "DND_Text2" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                                                                                 |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | (NOT DND_Text2__c Like '%{​!searchVal}​%') AND (NOT DND_Country__c Like '%{​!searchVal}​%') |

  @117256 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForTextFieldWithMultipleDNDCriteriaWithOperatorNotContainsAndSearchInvalidValue
  Scenario Outline: verify the global search result by setting dnd criteria for text fields with multiple criteria using 'Not contains' operator in filter criteria and searching invalid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "ABCXYZ"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                                                                                 |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_Text2__c Like '%{​!searchVal}​%') AND (NOT DND_Country__c Like '%{​!searchVal}​%') |

  @117319 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForFormulaFieldWithOperatorNOTCONTAINS
  Scenario Outline: verify the global search result by setting dnd criteria for formula fields using 'NOTCONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Text"
    Then I do not see value "Text" for title "DND_Formula_Text" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                                     |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_Formula_Text__c Like '%{!searchVal}%') |

  @117316 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForFormulaFieldWithOperatorCONTAINS
  Scenario Outline: verify the global search result by setting dnd criteria for formula fields using 'CONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "USA"
    Then I softly do not see value "USA" for title "DND_Formula_Text" inside table "---program:-:programSearchFlexTableID---"
    Then I softly see value "USA" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                                     |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | (NOT DND_Formula_Text__c Like '%{!searchVal}%') |

  @102698 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForFormulaFieldWithOperatorNOTEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for formula fields using '!=' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "India"
    Then I softly do not see value "India" for title "DND_Formula_Text" inside table "---program:-:programSearchFlexTableID---"
    Then I softly do not see value "India" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                     |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | (NOT DND_Formula_Text__c Like '%{!searchVal}%') |

  @117259 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForURLFieldAndMultipleDNDCriteriaWithOperatorEQUALSEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for URL fields using '==' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "test"
    Then I softly see value "test48@example.com" for title "DND_Email" inside table "---program:-:programSearchFlexTableID---"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "IND"
    Then I softly do not see value "IND" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                             |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_URL__c Like '%{!searchVal}%') AND (NOT DND_Country__c Like '%{​!searchVal}​%') |

  @117255 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForTEXTFieldAndMultipleDNDCriteriaWithOperatorNOTCONTAINS
  Scenario Outline: verify the global search result by setting dnd criteria for TEXT fields using 'NOTCONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "MEXICO"
    Then I do not see value "MEXICO" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                                                                                 |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_Text2__c Like '%{​!searchVal}​%') AND (NOT DND_Country__c Like '%{​!searchVal}​%') |

  @116932 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEMAILFieldAndMultipleDNDCriteriaWithOperatorCONTAINS
  Scenario Outline: verify the global search result by setting dnd criteria for EMAIL fields using 'CONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "test48"
    Then I see value "test48@example.com" for title "DND_Email" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                              |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | (NOT DND_Email__c Like '%{!searchVal}%') |

  @116933 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEMAILFieldWithOperatorNOTCONTAINS
  Scenario Outline: verify the global search result by setting dnd criteria for EMAIL fields using 'NOTCONTAINS' operator in filter criteria and search value as "@text"
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "@text"
    Then I do not see value "@text" for title "DND_Email" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                              |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_Email__c Like '%{!searchVal}%') |

  @103480 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEMAILFieldWithOperatorNOTEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for EMAIL fields using '!=' operator in filter criteria and search value as invalid
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "yahoo"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                              |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_Email__c Like '%{!searchVal}%') |

  @116931 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForURLFieldWithOperatorNOTEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for URL fields using '!=' operator in filter criteria and search value as invalid
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search ".com"
    Then I softly see value "Google.com" for title "DND_URL" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                              |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_Email__c Like '%{!searchVal}%') |

  @103489 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForRelationalFieldWithOperatorNOTEQUALS
  Scenario Outline: verify the global search result by setting dnd criteria for relation fields using '!=' operator in filter criteria and search value as invalid
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Text"
    Then I do not see value "Text" for title "DND_Text2" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                      |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | ( ProgramApprover__r.name Like '%{!searchVal}%') |

  @102706 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForTEXTFieldWithInvalidSearchValue
  Scenario Outline: verify the global search result by setting dnd criteria for text fields using '==' operator in filter criteria and search value as invalid
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "asbhca"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                              |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Text2__c Like '%{!searchVal}%') |

  @116893 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForURLFieldWithOperatorNOTEQUALSAsInvalidSearchValue
  Scenario Outline: verify the global search result by setting dnd criteria for URL fields using '!=' operator in filter criteria and search value as facebook.com
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "facebook.com"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                            |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | (NOT DND_URL__c Like '%{!searchVal}%') |

  @116908 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForURLFieldWithOperatorContainsAsInvalidSearchValue
  Scenario Outline: verify the global search result by setting dnd criteria for URL fields using 'CONTAINS' operator in filter criteria and search invalid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "yahoo.com"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                            |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | (NOT DND_URL__c Like '%{!searchVal}%') |

  @103836 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldWithOperatorNOTCONTAINS
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational fields using 'NOTCONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "pqr.com"
    Then I see value "FPG-DOI-BOR-0009" for title "EGMS ID" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                                                                             |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (ProgramApprover__r.name Like '%{!searchVal}%') AND (DND_URL__c Like  '%{!searchVal}%') |

  @103833 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldWithOperatorCONTAINS
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational fields using 'CONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Nigeria"
    When I perform quick search for "PG-REI-0022"
    Then I softly see value "Nigeria" for title "DND_Text1" inside table "---program:-:programSearchFlexTableID---"
    Then I softly see value "Nigeria" for title "DND_Formula_Text" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | ( ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_URL__c Like  '%{!searchVal}%') |

  @103832 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldWithOperatorNotEquals
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational fields using '!=' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "smd"
    Then I see value "FPG-NASA-0004" for title "EGMS ID" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | ( ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_URL__c Like  '%{!searchVal}%') |

  @103830 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldWithOperatorEqualsEquals
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational fields using '==' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "usa"
    When I perform quick search for "FPG-DOI-BOR-0034"
    Then I see value "USA" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | ( ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_URL__c Like  '%{!searchVal}%') |

  @103828 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldAndCountryFieldWithOperatorEqualsEquals
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and country fields using '==' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "NV"
    Then I see value "Test66Data" for title "DND_Text2" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                   |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | ( ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_Country__c Like  '%{!searchVal}%') |

  @103827 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldAndCountryFieldWithOperatorNotEquals
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and country fields using '!=' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "NV/SN"
    Then I see value "NVSN" for title "Program Name" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                   |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | ( ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_Country__c Like  '%{!searchVal}%') |

  @103826 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldAndCountryFieldWithOperatorNotEquals
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and country fields using '!=' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Health"
    Then I softly do not see value "Health Resources And Services Administration" for title "Organization" inside table "---program:-:programSearchFlexTableID---"
    When I perform quick search for "FPG-HHS-ACF-0017"
    Then I softly see value "Administration For Children And Families" for title "Organization" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                                                                                   |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | ( ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_Country__c Like  '%{!searchVal}%') |

  @103825 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForPicklistFieldAndCountryFieldWithOperatorNOTCONTAINS
  Scenario Outline: verify the global search result by setting multiple dnd criteria for picklist and country fields using 'NOTCONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "IND"
    Then I do not see value "IND" for title "DND__Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                                                                                  |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_Country__c Like  '%{!searchVal}%') |

  @103500 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldAndEmailFieldWithOperatorNOTCONTAINS
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and email fields using 'NOTCONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Shambhavi"
    Then I see value "Shambhavi" for title "Program Name" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                                                                                |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | ( ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_Email__c Like '%{!searchVal}%') |

  @103499 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldAndEmailFieldWithOperatorCONTAINS
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and email fields using 'CONTAINS' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "sne"
    Then I see value "PG-REI-0022" for title "EGMS ID" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                                                                                |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | ( ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_Email__c Like '%{!searchVal}%') |

  @103498 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldAndEmailFieldWithOperatorNOTEQUALS
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and email fields using '!=' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "framework"
    When I perform quick search for "FPG-DOS-ECA-0002"
    Then I see value "Framework Admin" for title "Created By" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | (ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_Email__c Like '%{!searchVal}%') |

  @103490 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldAndTextFieldWithOperatorEqualsEqualsAsInvalidSearchValue
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and text fields using '==' operator in filter criteria  and search invalid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "asbhca"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                      |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | ( ProgramApprover__r.name Like '%{!searchVal}%') |

  @103497 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldAndEmailFieldWithOperatorEqualsEqualsAsInvalidSearchValue
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and email fields using '==' operator in filter criteria  and search invalid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "XYZA"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                 |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Text2__c Like '%{​!searchVal}​%') AND (NOT DND_Country__c Like '%{​!searchVal}​%') |

  @103495 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldAndTextFieldWithOperatorNOTCONTAINSAsInvalidSearchValue
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and email fields using 'NOTCONTAINS' operator in filter criteria  and search invalid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "INDIA"
    Then I do not see value "INDIA" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                                      |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | ( ProgramApprover__r.name Like '%{!searchVal}%') |

  @103494 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldAndTextFieldWithOperatorCONTAINSAsInvalidSearchValue
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and email fields using 'CONTAINS' operator in filter criteria  and search invalid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "INDIA"
    Then I do not see value "INDIA" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                                      |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | ( ProgramApprover__r.name Like '%{!searchVal}%') |

  @102701 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForRelationalFieldAndTextFieldWithOperatorCONTAINSAsInvalidSearchValue
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and email fields using 'CONTAINS' operator in filter criteria  and search invalid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Test"
    And I pause execution for "3" seconds
    Then I see value "Test48Data" for title "DND_Text2" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                      |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | ( ProgramApprover__r.name Like '%{!searchVal}%') |

  @116915 @verifyGlobalSearchResultDisplayedByChangingMultipleDNDCriteriaFromCustomMetadatConfigForURLFieldAndTextFieldWithOperatorNOTCONTAINSAsInvalidSearchValue
  Scenario Outline: verify the global search result by setting multiple dnd criteria for relational and email fields using 'NOTCONTAINS' operator in filter criteria and search invalid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "htttttp"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                            |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_URL__c Like '%{!searchVal}%') |

  @102704 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForURLFieldAndTextFieldWithOperatorEqualsEquals
  Scenario Outline: verify the global search result by setting dnd criteria for relational and email fields using '==' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "sne_27"
    Then I see value "sne_27" for title "Program Name" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                      |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | ( ProgramApprover__r.name Like '%{!searchVal}%') |

  @119161 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForRelationalField,TextAndURLFieldWithOperatorNotEquals
  Scenario Outline: verify the global search result by setting dnd criteria for relational, text, url fields using '!=' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "pima"
    Then I see value "Pima Agriculture Cotton Trust Fund" for title "Program Name" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                                                             |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | ( ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_URL__c Like  '%{!searchVal}%') AND  (NOT DND_Text2__c Like '%{!searchVal}%') |

  @119162 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForRelationalField,TextAndPicklistFieldWithOperatorNotEquals
  Scenario Outline: verify the global search result by setting dnd criteria for relational, text, picklist fields using '!=' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Nigeria"
    Then I see value "Nigeria" for title "DND_Formula_Text" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                     | dndCriteria                                                                                                                                |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"CONTAINS"} | (ProgramApprover__r.name Like '%{!searchVal}%') AND ( DND_Country__c Like  '%{!searchVal}%')  AND (NOT DND_Text2__c Like '%{!searchVal}%') |

  @119163 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForRelationalField,TextAndPicklistFieldWithOperatorNotContains
  Scenario Outline: verify the global search result by setting dnd criteria for relational, text, picklist fields using 'NotContains' operator in filter criteria
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "SNEP"
    Then I see value "SNEP" for title "Program Name" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                                                                                                                               |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_Text2__c Like '%{​!searchVal}​%') AND (NOT DND_Country__c Like '%{​!searchVal}​%')  AND (NOT DND_Text2__c Like '%{!searchVal}%') |

  @119164 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForMultiField
  Scenario Outline: verify the global search result by setting dnd criteria for multi field
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Test"
    Then I see value "Test48Data" for title "DND_Text2" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                                                             |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Email__c Like '%{!searchVal}%') AND (NOT DND_Country__c Like '%{​!searchVal}​%')  AND (NOT DND_Text2__c Like '%{!searchVal}%') |

  @119165 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForMultiFieldAndSearchingInvalidValue
  Scenario Outline: verify the global search result by setting dnd criteria for multi field with invalid search value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "xzy"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                                                             |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Email__c Like '%{!searchVal}%') AND (NOT DND_Country__c Like '%{​!searchVal}​%')  AND (NOT DND_Text2__c Like '%{!searchVal}%') |

  @119166 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForMultiFieldAndSearchingValidValue
  Scenario Outline: verify the global search result by setting dnd criteria for multi field with valid search value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "India"
    Then I do not see value "India" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                                                                                                                 |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Email__c Like '%{!searchVal}%') AND (NOT DND_Country__c Like '%{​!searchVal}​%')  AND (NOT DND_Text2__c Like '%{!searchVal}%') AND (NOT DND_Formula_Text__c Like '%{!searchVal}%') |

  @117325 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForFormulaFieldWithMultipleDNDCriteriaWithOperatorEqualsEqualsAndSearchInvalidValue
  Scenario Outline: verify the global search result by setting dnd criteria for formula fields with multiple criteria using 'Equals Equals' operator in filter criteria and searching invalid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "asbhca"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                     |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Formula_Text__c Like '%{!searchVal}%') |

  @119360 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEmail,PicklistAndTextFieldWithMultipleDNDCriteriaWithOperatorCONTAINSsAndSearchvalidValue
  Scenario Outline: verify the global search result by setting dnd criteria for email,picklist and text fields with multiple criteria using 'CONTAINS' operator in filter criteria and searching valid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "India"
    Then I do not see value "India" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                                                                                                                   |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"=="} | (NOT DND_Email__c Like '%{!searchVal}%') AND (NOT DND_Country__c Like '%{​!searchVal}​%')  AND (NOT DND_Text2__c Like '%{!searchVal}%') AND   (NOT DND_Formula_Text__c Like '%{!searchVal}%') |

  @119361 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEmail,PicklistAndTextFieldWithMultipleDNDCriteriaWithOperatorNOTCONTAINSsAndSearchvalidValue
  Scenario Outline: verify the global search result by setting dnd criteria for email,picklist and text fields with multiple criteria using 'NOTCONTAINS' operator in filter criteria and searching valid value
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "India"
    Then I do not see value "India" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                                        | dndCriteria                                                                                                                                                                                   |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"NOTCONTAINS"} | (NOT DND_Email__c Like '%{!searchVal}%') AND (NOT DND_Country__c Like '%{​!searchVal}​%')  AND (NOT DND_Text2__c Like '%{!searchVal}%') AND   (NOT DND_Formula_Text__c Like '%{!searchVal}%') |

  @119362 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEmail,PicklistAndTextFieldWithMultipleDNDCriteriaWithOperatorNotEqualssAndSearchvalidValueAsUS
  Scenario Outline: verify the global search result by setting dnd criteria for email,picklist and text fields with multiple criteria using '!=' operator in filter criteria and searching valid value as US
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria   | filterCriteria     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | <dndCriteria> | <DNDFilterClause1> | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "us"
    When I perform quick search for "FPG-DOI-NPS-0019"
    Then I see value "US" for title "DND_Country" inside table "---program:-:programSearchFlexTableID---"

    Examples:
      | DNDFilterClause1                                                               | dndCriteria                                                                                                                                                                                   |
      | {"objectField":"DND_Country__c","userField":"DNDCountries__c","operator":"!="} | (NOT DND_Email__c Like '%{!searchVal}%') AND (NOT DND_Country__c Like '%{​!searchVal}​%')  AND (NOT DND_Text2__c Like '%{!searchVal}%') AND   (NOT DND_Formula_Text__c Like '%{!searchVal}%') |