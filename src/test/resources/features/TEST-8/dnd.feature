@Dnd-component @regression-test8 @DND
Business Need: dnd Component Scenarios
  Test all dnd component based scenarios
  As a configuration manager i make different configurational changes in dnd custom metadata config and will validate them.

  @102696 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForTextFieldValue
  Scenario: verify the global search result by setting dnd criteria for text field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | filterCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             |                | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | dndCriteria                              | filterCriteria                            | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Text2__c Like '%{!searchVal}%') | govgrants_config:DNDFilterClause_Picklist | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Text"
    Then I softly see "Text Text" value in flex table id "---program:-:programSearchFlexTableID---"
    Then I softly do not see "Test150Data" value in flex table id "---program:-:programSearchFlexTableID---"

#    Examples:
#      | dndCriteria                              |
#      | (NOT DND_Text2__c Like '%{!searchVal}%') |

  @102697 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPicklistFieldValue
  Scenario: verify the global search result by setting dnd criteria for picklist field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | DNDCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | DNDCriteria                            | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT Country__c Like '%{!searchVal}%') | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "IND"
    Then I softly see "USA" value in flex table id "---program:-:programSearchFlexTableID---"
    Then I softly do not see "IND" value in flex table id "---program:-:programSearchFlexTableID---"

  @115775 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForInvalidEmailFieldValue
  Scenario: verify the global search result by setting dnd criteria for invalid dummy email field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | DNDCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | DNDCriteria                              | customMetaDataApiName |
      | m05g00000004giNAAQ | Account | (NOT DND_Email__c Like '%{!searchVal}%') | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "asbhca"
    And I expand table with header "NGO Programs"
    Then I see "No Records Found" inside flex table with id "---program:-:programSearchFlexTableID---"

  @102699 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEmailFieldValueAsTest
  Scenario: verify the global search result by setting dnd criteria for email field value as test from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | DNDCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | DNDCriteria                              | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Email__c Like '%{!searchVal}%') | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Text"
    Then I see "test150@example.com" value in flex table id "---program:-:programSearchFlexTableID---"

  @115772 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForEmailFieldValueContainingDotCom
  Scenario: verify the global search result by setting dnd criteria for email field value as .com from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | dndCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | DNDCriteria                              | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT DND_Email__c Like '%{!searchVal}%') | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search "Text"
    Then I see "test150@example.com" value in flex table id "---program:-:programSearchFlexTableID---"

  @102698 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForPhoneFieldValue @wip
  Scenario: verify the global search result by setting dnd criteria for phone field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | DNDCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | DNDCriteria                       | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT Phone Like '%{!searchVal}%') | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search ""
    Then I see "" value in flex table id "---program:-:programSearchFlexTableID---"

  @102700 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForURLFieldValue @wip
  Scenario: verify the global search result by setting dnd criteria for URL field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | DNDCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | DNDCriteria                     | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT URL Like '%{!searchVal}%') | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search ""
    Then I see "" value in flex table id "---program:-:programSearchFlexTableID---"

  @102705 @verifyGlobalSearchResultDisplayedByChangingDNDCriteriaFromCustomMetadatConfigForFormulaFieldValue @wip
  Scenario: verify the global search result by setting dnd criteria for formula field value from metadata config
    When I login as "Admin" user
    Given I have "customMetaDataDND" configuration as below:
      | id                 | label   | DNDCriteria | customMetaDataApiName |
      | m05g00000004giNAAQ | Program |             | GNT__DND__mdt         |
    And I update custom metadata setting DND changes:
      | id                 | label   | DNDCriteria                         | customMetaDataApiName |
      | m05g00000004giNAAQ | Program | (NOT Formula Like '%{!searchVal}%') | GNT__DND__mdt         |
    When I setup my app as "As a Grantor"
    When I click on global search and select "Programs"
    When I perform quick search inside global search ""
    Then I see "" value in flex table id "---program:-:programSearchFlexTableID---"