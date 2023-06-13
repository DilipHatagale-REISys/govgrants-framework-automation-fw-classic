@SheetJS-component @regression-test5 @SheetJS
Business Need: SheetJS Config Component Scenarios
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
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I can see top right button "Upload" in flex table with id "---program:-:programsTableId---"

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
#    Given I have "lightening" configuration as below:
#      | booleanValue | integerValue | id                 | description                       | name                 |
#      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    Given I delete the record "AutomationSheetJSUpload" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank1" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
#    And I update custom setting changes:
#      | booleanValue | integerValue | id                 | description                       | name                 |
#      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "Upload" in flex table with id "---program:-:programsTableId---"
    #When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I upload attachment "SheetJSFileUpload.xlsx" after click on "Upload" in Download & Upload wizard modal window
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
#    Given I have "lightening" configuration as below:
#      | booleanValue | integerValue | id                 | description                       | name                 |
#      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    Given I delete the record "AutomationSheetJSUpload" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank1" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
#    And I update custom setting changes:
#      | booleanValue | integerValue | id                 | description                       | name                 |
#      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "Upload" in flex table with id "---program:-:programsTableId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Automation"
    Then I softly see value "SYSTEM" for title "Internal Organization" inside table "---program:-:programsTableId---"

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
#    Given I have "lightening" configuration as below:
#      | booleanValue | integerValue | id                 | description                       | name                 |
#      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    Given I delete the record "AutomationSheetJSUpload" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank1" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
#    And I update custom setting changes:
#      | booleanValue | integerValue | id                 | description                       | name                 |
#      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "Upload" in flex table with id "---program:-:programsTableId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Prog"
    Then I softly see value "Created" for title "Status" inside table "---program:-:programsTableId---"

    Examples:
      | newFieldsApi                                                                                           | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

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
#    Given I have "lightening" configuration as below:
#      | booleanValue | integerValue | id                 | description                       | name                 |
#      | true         | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    Given I delete the record "AutomationSheetJSUpload" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank1" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
#    And I update custom setting changes:
#      | booleanValue | integerValue | id                 | description                       | name                 |
#      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "Upload" in flex table with id "---program:-:programsTableId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Prog"
    Then I softly see value "Created" for title "Status" inside table "---program:-:programsTableId---"

    Examples:
      | newFieldsApi                                                                                           | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

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
    Given I delete the record "AutomationSheetJSUpload" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank1" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "Upload" in flex table with id "---program:-:programsTableId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing For SheetJS"
    Then I softly see value "$5,000" for title "Funded Amount" inside table "---program:-:programsTableId---"

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
    Given I delete the record "AutomationSheetJSUpload" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank1" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "Upload" in flex table with id "Programs"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    Then I see value "X" for title "CFDA Data" against the value "PG-REI-0716" inside table "---program:-:programsTableId---"

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
    Given I delete the record "AutomationSheetJSUpload" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank1" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "Upload" in flex table with id "Programs"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    Then I see value "False" for title "CFDA Data" against the value "Program" inside table "---program:-:programsTableId---"

    Examples:
      | newFieldsApi                                                                                                                     | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,CFDA_Data__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

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
    Given I delete the record "AutomationSheetJSUpload" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank" from the object "Program__c" with field "ProgramName__c"
    Given I delete the record "AutomationSheetJSUploadForStatusAsBlank1" from the object "Program__c" with field "ProgramName__c"
    When I login as "ADMIN" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "Upload" in flex table with id "---program:-:programsTableId---"
    When I upload attachment "SheetJSFileUploadForFundedAmount.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Automation Record For Funded Amount- SheetJS"
    And I softly see value "$10,000" for title "Funded Amount" inside table "---program:-:programsTableId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test Automation Record For Funded Amount- SheetJS"
    When I click on "Edit" icon for "Test Automation Record For Funded Amount- SheetJS" inside table
    And I enter value "10000" into field "fieldFundedAmount__c"
    And I click on "Save" in the page details
    And I na
    Then I softly see value "$10,000" for title "Funded Amount" inside table "---program:-:programsTableId---"
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
    When I login as "ADMIN" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "Upload" in flex table with id "---program:-:programsTableId---"
    When I upload attachment "SheetJSFileUploadDateTime.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Test's September Program"
    Then I see value "11/08/2021 2:28 PM" for title "DateandTime" inside table "---program:-:programsTableId---"

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
    When I login as "ADMIN" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on top right button "Upload" in flex table with id "---program:-:programsTableId---"
    When I upload attachment "SheetJSFileUploadWithMultipleData.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "AutomationSheetJSUpload"
    Then I see total records count is same as total row of table id "---program:-:programsTableId---" and table name "flextable"

    Examples:
      | newFieldsApi                                                                                                                       | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,DateandTime__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |

  @70104    @verifyUploadOfSheetJSFileWithFieldEGMSId @SheetJS
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
    When I login as "ADMIN" user
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                       | name                 |
      | false        | 0            | a0b1C00000Lta0jQAB | To Enable/Disable Program Trigger | EnableProgramTrigger |
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "Upload" in flex table with id "---program:-:programsTableId---"
    When I upload attachment "SheetJSFileUpload.xlsx" on button click "Upload" inside download & upload wizard
    And I refresh the page
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "8" seconds
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I navigate to "Planning" tab
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View Program Details" icon for "Automation Internal Program for Testing" inside table
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    Then I softly see value "{SavedValue:PEGMSID}" for title "EGMS ID" inside table "---program:-:programsTableId---"

    Examples:
      | newFieldsApi                                                                                                        | defaultFieldsApi                                                                                                 |
      | Name,Id,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById | Name,ProgramName__c,Account__c,FunderType__c,FundedAmount__c,StartDate__c,Status__c,LastModifiedById,CreatedById |