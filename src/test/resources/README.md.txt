This file contains information which tells us usage of Static Records and Used API's.

====================================================================================================================================================
Records Required (records should present on org with given status)
==================================================


programInCreatedModeOnly= Test program for automation - Created mode only
programInSAModeOnlyNotApproved= Test program for automation -  SA mode only - Not approved
programInSAModeCanBeApproved= Test program for automation -  SA mode only - Can be Approved
programForHistoryTabScenarios= Test program for automation - SA mode only - Not approved - History Tab Scenario
programForRequiredBehaviourOnly= Test Program For Automation - Created - Required Behaviour
programForFundedAmount=Test program for automation - Created mode only - Specific to expression JSON (funded amount)
programForFundedAmountAndNumber= Test program for automation - Created mode only - Specific to expression JSON 1(funded amount)
programOnlyForApprovalAndSnapshotScenarios=Automation Internal Program for Approval and Snapshot scenarios
programForExpressionBuilderScenarios2=Test Program For Automation - Expression Builder 2
programForExpressionBuilderScenarios1=Test Program For Automation - Expression Builder
ProgramForLocalTesting=Program created for local Testing DND
ProgramForLocalTestingAtHistory=Program Created for Local History Testing
ProgramTestSendToOwnerForNumberFieldValue=test send to owner 2
GrantInsideEnhancedGrid=Applicationg test88888
AnnouncementHavingMultipleBudgetPeriods=Test Announcement created for Automation
ApplicationHavingSingleBudgetPeriodToValidateTotalAmount=Test Application For Automation
ApplicationWitEditActionForSPIUser=Test Automation Application for spi edit action
ApplicationForValidateButtonAtBusinessForm=Automation Application for forms
AnnouncementForEmailNotify=Announcement for email notification check
AnnouncementCreatedForCalendarTest=Announcement created for calendar test
TestProgramErrorMessageDnd=Test Automation Program for error message dnd
programForCalendar2=Program created for calendar2
programForCalendar3=Program created for calendar3
programForCalendar4=Program created for calendar4
programForCalendar5=Program created for calendar5
programForCalendar6=Program created for calendar6
ProgramInActiveStateToCreateAnnouncemt- Grantor End to End Testing flow -Active state only

###############################################Test8OrgRecords#########################################

ApplicationRecordWithCreatedStatus=Automation Directed Announcement
ApplicationRecordWithConvetedToAwardStatus=Automation Announcement for FDM
ProgramInCreatedModeWithViewAction=Test program for automation - Created mode only
AutomationPermanentAward=Automation Permanent Award
ProgramRecordCreatedToTestFlow=Automation Internal Program for flow
Pre-ApplicationForAutomation=Automation Announcement for Application
ApplicationRecordToCheckSnapshotOnly=Automation Application for take snapshot
ProgramToCheckQuickSearch=Test Automation record to check contact quick search



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

3.CustomSettingREST (To access the all custom settings from key value store for user)
  ENDPOINT: /services/apexrest/frameworkCustomsettingAPI
 
  STEPS:
  Given I have "lightening" configuration as below:
  | booleanValue | integerValue | id  | description | name |

  And I update custom setting changes:
  | booleanValue | integerValue | id | description | name|

4.
