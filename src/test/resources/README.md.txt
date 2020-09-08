This file contains information which tells us usage of Static Records and Used API's.

====================================================================================================================================================
Records Required (records should present on org with given status)
==================================================


programInCreatedModeOnly= Test program for automation - Created mode only
programInSAModeOnlyNotApproved= Test program for automation -  SA mode only - Not approved
programInSAModeCanBeApproved= Test program for automation -  SA mode only - Can be Approved
programForHistoryTabScenarios= Test program for automation - SA mode only - Not approved - History Tab Scenario
programForRequiredBehaviourOnly= Test Program For Automation - Created - Required Behaviour
programForFundedAmount= Test program for automation - Created mode only - Specific to expression JSON (funded amount)
programForFundedAmountAndNumber= Test program for automation - Created mode only - Specific to expression JSON 1(funded amount)
programOnlyForApprovalAndSnapshotScenarios=Automation Internal Program for Approval and Snapshot scenarios
programForExpressionBuilderScenarios2=Test Program For Automation - Expression Builder 2
programForExpressionBuilderScenarios1=Test Program For Automation - Expression Builder
ProgramForLocalTesting=Program created for local Testing DND
ProgramForLocalTestingAtHistory=Program created for history local Testing DND


====================================================================================================================================================
Api Required (Apex classes should present on org)
==================================================

1. CustomSettingREST and AutomationAPIRetrieve (To set the configuration for tables / grid / page layout / approval process / custom apps etc)
ENDPOINT: 
/services/apexrest/frameworkAPIUpdate 
/services/apexrest/frameworkAPIRetrieve

STEPS:
Given I have "default" configuration as below:
| configurationCategory | fieldName | fieldOrignalValue | filterId|

Given I setup test configuration as below:
| configurationCategory | fieldName  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |

2.CustomSettingREST (To access the custom Local settings for user)
  ENDPOINT: /services/apexrest/frameworkCustomsettingAPI
 
  STEPS:
  Given I have "timeZoneLocale" configuration as below:
  | locale | timeZone         |

  And I update the locale and timezone related changes:
  | locale | timeZone       |

3.CustomSettingREST (To access the custom Local settings for user)
  ENDPOINT: /services/apexrest/frameworkCustomsettingAPI
 
  STEPS:
  Given I have "lightening" configuration as below:
  | booleanValue | integerValue | id  | description | name |

  And I update custom setting changes:
  | booleanValue | integerValue | id | description | name|

4.
