@SheetJS-component @regression @wip
Feature: SheetJS Config Component Scenarios
  Test all Sheet JS config component based scenarios
  As a configuration manager i make different configurational changes in sheetJS component and will validate them.

  @70095    @verifyUploadTopLevelButton
  Scenario: Validate Auto Snapshot is not getting captured after record submission as submit for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Data Import/Export | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I can see top right button "Upload" in flex table with id "---program:-:programTableDivId---"

  @70096    @verifyDownloadingOfTemplateFile
  Scenario: Validate Template file is getting downloaded or not on download button click inside download and upload wizard modal.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Data Import/Export | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I click on button "Download File" on download & upload wizard modal
    Then I see "Program Name" in downloaded xls or csv file "govgrants"

  @70097    @verifyUploadOfSheetJSFile
  Scenario Outline: Validate sheet JS file is getting uploaded with success message or not on upload button click inside download and upload wizard modal.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true           | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | Programs           |                           |                            |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    Then I see confirmation box with body "Data Uploaded Successfully!" is displayed

    Examples:
      | newFieldsApi                                                                                                        | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70099    @verifyUploadOfSheetJSFileWithFieldOrganization
  Scenario Outline: Validate sheet JS file is getting uploaded and content of sheet getting loaded inside flex table with organization as GovGrant.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true           | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | Programs           |                           |                            |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "AutomationSheetJSUpload"
    Then I softly see value "GovGrant" for title "Organization" inside table "---program:-:programTableDivId---"

    Examples:
      | newFieldsApi                                                                                                        | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70100    @verifyUploadOfSheetJSFileWithFieldStatusAsActive
  Scenario Outline: Validate sheet JS file is getting uploaded and content of sheet getting loaded inside flex table with status as Active.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true           | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | Programs           |                           |                            |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "AutomationSheetJSUpload"
    Then I softly see value "Created" for title "Status" inside table "---program:-:programTableDivId---"

    Examples:
      | newFieldsApi                                                                                                        | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70101    @verifyUploadOfSheetJSFileWithFieldStatusAsBlank
  Scenario Outline: Validate sheet JS file is getting uploaded and content of sheet getting loaded inside flex table with status as created (as status field value is blank).
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true           | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | Programs           |                           |                            |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "AutomationSheetJSUploadForStatusAsBlank"
    Then I softly see value "Created" for title "Status" inside table "---program:-:programTableDivId---"

    Examples:
      | newFieldsApi                                                                                                        | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70103    @verifyUploadOfSheetJSFileWithFieldFundedAmount
  Scenario Outline: Validate sheet JS file is getting uploaded and content of sheet(Funded amount) getting loaded inside flex table record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true           | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | Programs           |                           |                            |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "AutomationSheetJSUploadForStatusAsBlank"
    Then I softly see value "$5,000" for title "Funded Amount" inside table "---program:-:programTableDivId---"

    Examples:
      | newFieldsApi                                                                                                        | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70104    @verifyUploadOfSheetJSFileWithFieldEGMSId
  Scenario Outline: Validate sheet JS file is getting uploaded and content of sheet getting loaded inside flex table with EGMS ID.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
      | Page Tabs Config      | Highlights Panel?         | false              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                 | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General                  | Enable Data Import/Export | true           | Programs              |                           |                            |
      | Flex Table:General                  | Display Field Names       | <newFieldsApi> | Programs              |                           |                            |
      | Page Tabs Config:Page Layout Action | Highlights Panel?         | true           | Grantee State Program | Name                      | TAB-409                    |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "AutomationSheetJSUploadForStatusAsBlank"
    When I click on "View Program Details" icon for "AutomationSheetJSUploadForStatusAsBlank" inside table
    And I save the field labeled "ID" as "EGMSID"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "AutomationSheetJSUploadForStatusAsBlank"
    Then I softly see value "{SavedValue:EGMSID}" for title "ID" inside table "---program:-:programTableDivId---"

    Examples:
      | newFieldsApi                                                                                                        | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70107    @verifyUploadOfSheetJSFileWithFieldCFDANumberAsTrue
  Scenario Outline: Validate sheet JS file is getting uploaded and content of sheet getting loaded inside flex table with CFDA DATA as true.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true           | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | Programs           |                           |                            |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "Programs"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "AutomationSheetJSUploadForStatusAsBlank"
    Then I see value "true" for title "CFDA Data" against the value "GovGrant" inside table "Programs"

    Examples:
      | newFieldsApi                                                                                                                     | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,CFDA_Data__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70304    @verifyUploadOfSheetJSFileWithFieldCFDANumberAsFalse
  Scenario Outline: Validate sheet JS file is getting uploaded and content of sheet getting loaded inside flex table with CFDA DATA as false.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true           | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | Programs           |                           |                            |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "Programs"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "AutomationSheetJSUploadForStatusAsBlank1"
    Then I see value "false" for title "CFDA Data" against the value "GovGrant" inside table "Programs"

    Examples:
      | newFieldsApi                                                                                                                     | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,CFDA_Data__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70109    @verifyUploadOfSheetJSFileWithFieldStartDate @wip
  Scenario Outline: Validate sheet JS file is getting uploaded and content of sheet(StartDate) getting loaded inside flex table record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true           | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | Programs           |                           |                            |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "AutomationSheetJSUploadForStatusAsBlank"
    Then I see value "02/10/2020" for title "Funded Amount" inside table "---program:-:programTableDivId---"

    Examples:
      | newFieldsApi                                                                                                                       | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,DateandTime__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70280    @verifyChangingRecordValueWithUploadingSheetJSFile
  Scenario Outline: Validate sheet JS file is getting uploaded and content of sheet(funding amount value) getting updated as mentioned in uploading sheet
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true           | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | Programs           |                           |                            |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I upload attachment "SheetJSFileUploadForFundedAmount.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test Automation Record For Funded Amount- SheetJS"
    Then I softly see value "$10,000" for title "Funded Amount" inside table "---program:-:programTableDivId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "Test Automation Record For Funded Amount- SheetJS"
    When I click on "Edit" icon for "Test Automation Record For Funded Amount- SheetJS" inside table
    And I enter value "2000" into field "fieldFundedAmount__c"
    Examples:
      | newFieldsApi                                                                                                        | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70110    @verifyUploadOfSheetJSFileWithFieldStartDateTime
  Scenario Outline: Validate sheet JS file is getting uploaded and content of sheet(DateTime) getting loaded inside flex table record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true           | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | Programs           |                           |                            |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I upload attachment "SheetJSFileUploadDateTime.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "AutomationSheetJSUpload"
    Then I see value "7/3/2021 7:37 AM" for title "DateandTime" inside table "---program:-:programTableDivId---"

    Examples:
      | newFieldsApi                                                                                                                       | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,DateandTime__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70106    @verifyUploadOfSheetJSFileWithMultipleData
  Scenario Outline: Validate sheet JS file is getting uploaded and multiple records are getting added as passed in uploading sheet
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue  | filterId         |
      | Flex Table            | Enable Data Import/Export | false              | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names       | <defaultFieldsApi> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true           | Programs           |                           |                            |
      | Flex Table:General    | Display Field Names       | <newFieldsApi> | Programs           |                           |                            |
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I login as "Automation" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "Upload" in flex table with id "---program:-:programTableDivId---"
    When I upload attachment "SheetJSFileUploadWithMultipleData.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "AutomationSheetJSUpload"
    Then I see total records count is same as total row of table id "---program:-:programTableDivId---" and table name "flextable"

    Examples:
      | newFieldsApi                                                                                                                       | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,DateandTime__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |
