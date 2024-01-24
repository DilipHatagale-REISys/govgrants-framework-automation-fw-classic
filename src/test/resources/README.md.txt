This file contains information which tells us usage of Static Records and Used API's.

====================================================================================================================================================
Records Required (records should present on org with given status)
==================================================


Planning Phase

Page Layout Feature ----> Test Approver Table

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
