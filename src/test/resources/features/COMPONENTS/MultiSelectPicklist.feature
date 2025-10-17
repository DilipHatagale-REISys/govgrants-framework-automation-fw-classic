@ComponentSanity @multiselectpicklist
Feature: Component Sanity Testing 1. MultiSelectPickList
  In this feature file, we use the following tags for component-wise execution:MultiSelectPickList

  @545315 @545316 @multiselectpicklist
  Scenario Outline: Modal- Multi-Select picklist- Admin/PM- To verify that selecting Multiple option under Multi-Select Picklist
  |Modal- Multi-Select picklist- Admin/PM- To verify Field Label Override Config should work for MS field|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor State Program Create | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                   | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                            | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Automation Field Label Override | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "3" seconds
    When I enter "TypeOfAssistance MultiSelectPic" values from "AmendmentRequest_Field_Values.xlsx"
    And I pause execution for "5" seconds
    Then I see field "Automation Field Label Override" inside page block
    Then I see multiple selected options in "Chosen" cell:
      | Project Grants                        |
      | Direct Payments with Unrestricted Use |
      | DIRECT LOANS                          |
      | DIRECT PAYMENTS FOR A SPECIFIED USE   |

    Examples:
      | Users |
      | PM    |

  @545318 @multiselectpicklist
  Scenario Outline: Modal- Multi-Select picklist- Admin/PM-  To verify Hide Logic is working after render on config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program Create | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                       | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                                                     | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:hideExpressionBuilderPBDUserTypeIn | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "3" seconds
    Then I cannot see field "Types Of Assistance" inside page block

    Examples:
      | Users |
      | PM    |

  @545319 @multiselectpicklist
  Scenario Outline: Modal- Multi-Select picklist- Admin/PM- To verify that Field Label Override (Rich Text) is working after render on config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                        | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                        | false             | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override (Rich Text) |                   | Grantor State Program Create | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Label                       | false             | Grantor State Program Create | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                        | fieldNewValue                 | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active                        | true                          | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override (Rich Text) | Rich Text Types Of Assistance | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Hide Label                       | false                         | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "3" seconds
    Then I see field "Rich Text Types Of Assistance" inside page block

    Examples:
      | Users |
      | PM    |

  @545320 @multiselectpicklist
  Scenario Outline: Modal- Multi-Select picklist- Admin/PM- To verify Hide Label is working after render on Config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName  | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active  | false             | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide Label | false             | Grantor State Program Create | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active  | true          | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Hide Label | true          | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "3" seconds
    Then I do not see field label "Types Of Assistance" inside page block
    When I enter "TypeOfAssistance MultiSelectPic" values from "AmendmentRequest_Field_Values.xlsx"
    And I pause execution for "5" seconds
    Then I see multiple selected options in "Chosen" cell:
      | Project Grants                        |
      | Direct Payments with Unrestricted Use |
      | DIRECT LOANS                          |
      | DIRECT PAYMENTS FOR A SPECIFIED USE   |

    Examples:
      | Users |
      | PM    |

  @545321 @545322 @multiselectpicklist
  Scenario Outline: Modal- Multi-Select picklist- Admin/PM- To verify that Read only logic is working after render on config
  |Modal- Multi-Select picklist- Admin/PM- To verify Help Text on Hovering Help Text Icon Functioning correctly |
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Read Only            | false             | Grantor State Program Create | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor State Program Create | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |                   | Grantor State Program Create | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                  | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                           | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Read Only            | true                           | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                                | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Help Text Long       | Automation Types Of Assistance | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I pause execution for "3" seconds
    Then I softly see that "TypesOfAssistance__c" rendered in view mode only
    When I hovering mouse on help text icon inside modal "Types Of Assistance"
    Then I softly see "Automation Types Of Assistance" shown as help text
    Examples:
      | Users |
      | PM    |

  @508146 @545326 @multiselectpicklist
  Scenario: Modal- Multi-Select picklist- SPI- To verify that selecting Multiple option under Multi-Select Picklist
  |Modal- Multi-Select picklist- SPI- To verify Field Label Override after render in Config|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor Contact    | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor Contact    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue                                       |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                            | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Automation Field Label Override | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Overview" sub tab
    And I click on top right button "New" in flex table with id "---home:-:userContactsTableId---"
    When I enter "TypeOfAssistance MultiSelectPic" values from "AmendmentRequest_Field_Values.xlsx"
    And I pause execution for "5" seconds
    Then I see field "Automation Field Label Override" inside page block
    Then I see multiple selected options in "Chosen" cell:
      | Project Grants                        |
      | Direct Payments with Unrestricted Use |
      | DIRECT LOANS                          |
      | DIRECT PAYMENTS FOR A SPECIFIED USE   |

  @545323 @multiselectpicklist
  Scenario: Modal- Multi-Select picklist- SPI-  To verify Hide Logic is working after render on config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue   | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false               | Grantor Contact    | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Types Of Assistance | Grantor Contact    | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                     | Grantor Contact    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue                                       |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                           | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Types Of Assistance                                            | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:hideExpressionForMultiSelectPicklistOncontact | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Overview" sub tab
    And I click on top right button "New" in flex table with id "---home:-:userContactsTableId---"
    And I pause execution for "5" seconds
    Then I cannot see field "Types Of Assistance" inside page block

  @545328 @multiselectpicklist
  Scenario:Modal- Multi-Select picklist- SPI- To verify that Field Label Override (Rich Text) is working after render on config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                        | fieldOrignalValue   | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                        | false               | Grantor Contact    | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override             | Types Of Assistance | Grantor Contact    | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override (Rich Text) |                     | Grantor Contact    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                        | fieldNewValue                 | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue                                       |
      | Page Block Config:Page Block Rule Detail | Is Active                        | true                          | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override             |                               | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override (Rich Text) | Rich Text Types Of Assistance | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Overview" sub tab
    And I click on top right button "New" in flex table with id "---home:-:userContactsTableId---"
    And I pause execution for "5" seconds
    Then I see field "Rich Text Types Of Assistance" inside page block

  @545329 @multiselectpicklist
  Scenario:Modal- Multi-Select picklist- SPI- To verify Hide Label is working after render on Config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue   | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false               | Grantor Contact    | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Types Of Assistance | Grantor Contact    | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Hide Label           | false               | Grantor Contact    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue                                       |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Types Of Assistance | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Hide Label           | true                | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Overview" sub tab
    And I click on top right button "New" in flex table with id "---home:-:userContactsTableId---"
    And I pause execution for "5" seconds
    Then I cannot see field "Types Of Assistance" inside page block

  @508168 @multiselectpicklist
  Scenario: Modal- Multi-Select picklist-  SPI- To verify that Read only is working after render on config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue   | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false               | Grantor Contact    | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Types Of Assistance | Grantor Contact    | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Read Only            | false               | Grantor Contact    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue                                       |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Types Of Assistance | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Read Only            | true                | Grantor Contact    | Name                      | {CommonConfigFile:CreateContactModalForSpi3TypesOfAssistance__c} |
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Overview" sub tab
    And I click on top right button "New" in flex table with id "---home:-:userContactsTableId---"
    And I pause execution for "5" seconds
    Then I softly see that "TypesOfAssistance__c" rendered in view mode only

##########layout multi select picklist########
  @545455 @multiselectpicklist
  Scenario: Page Layout- Multi-Select picklist- Admin/PM- To verify that selecting Multiple option under Multi-Select Picklist
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Read Only            | false             | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                                     |
      | Page Block Config:Page Block Rule Detail | Is Active            | true          | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override |               | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Read Only            | false         | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
    When I login to "As a Grantor" app as "dynamicUser" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "TypeOfAssistance MultiSelectPic" values from "AmendmentRequest_Field_Values.xlsx"
    And I pause execution for "5" seconds
    Then I see multiple selected options in "Chosen" cell:
      | Project Grants                        |
      | Direct Payments with Unrestricted Use |
      | DIRECT LOANS                          |
      | DIRECT PAYMENTS FOR A SPECIFIED USE   |

  @504640 @multiselectpicklist
  Scenario Outline: Page Layout- Multi-Select picklist- Admin/PM-  To verify Hide Logic is working after render on config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                 | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                 | true              | Grantor State Program | ApiGeneratedId:0 |
#      | Page Block Config:Page Block Rule Detail | Is Active                 | true              | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON      |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Read Only Expression JSON |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                 | fieldNewValue                                        | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                                     |
      | Page Block Config:Page Block Rule Detail | Is Active                 | true                                                 | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
#      | Page Block Config:Page Block Rule Detail | Is Active                 | false                                                | Grantor State Program | Name                      | {pagelayout:CreateProgramPageLayoutTypesOfAssistance__c}            |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON      | govgrants_config:hideExpressionBuilderPBDContextEdit | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Read Only Expression JSON |                                                      | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    Then I cannot see field "Types Of Assistance" inside page block
    Examples:
      | Users |
      | PM    |

  @545367 @multiselectpicklist
  Scenario Outline: Page Layout- Multi-Select picklist- Admin/PM- To verify Hide Label is working after render on Config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                 | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                 | true              | Grantor State Program | ApiGeneratedId:0 |
#      | Page Block Config:Page Block Rule Detail | Is Active                 | true              | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON      |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Read Only Expression JSON |                   | Grantor State Program | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Hide Label                | false             | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                 | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                                     |
      | Page Block Config:Page Block Rule Detail | Is Active                 | true          | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
#      | Page Block Config:Page Block Rule Detail | Is Active                 | false         | Grantor State Program | Name                      | {pagelayout:CreateProgramModalTypesOfType__C}            |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON      |               | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Read Only Expression JSON |               | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Hide Label                | true          | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    Then I cannot see field "Types Of Assistance" inside page block
    Examples:
      | Users |
      | PM    |

  @545369 @multiselectpicklist
  Scenario: Page Layout- Multi-Select picklist- SPI- To verify that selecting Multiple option under Multi-Select Picklist
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |                   | Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Recipient ApplicationView | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue                           |
      | Page Block Config:Page Block Rule Detail | Is Active            | true          | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    And I pause execution for "2" seconds
    When I click on "Create Application" in the page details
    And I wait for "5" seconds
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    Then I see field "Application Sections for Revision" inside page block
    When I enter "ApplicationSectionsForRevision" values from "AmendmentRequest_Field_Values.xlsx"
    And I pause execution for "5" seconds
    Then I see multiple selected options in "Chosen" cell:
      | Overview: Primary Place of Performance   |
      | Overview: Application Overview           |
      | Overview: Project Information            |
      | Budget Tab: Budget Summary by Focus Area |
      | Budget: Budget Details                   |

  @545461 @multiselectpicklist
  Scenario: Page Layout- Multi-Select picklist- SPI-  To verify Hide Logic is working after render on config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |                   | Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Recipient ApplicationView | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Recipient ApplicationView | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                                                       | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue                           |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                                                                | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |                                                                     | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                                                                     | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON | govgrants_config:hideExpressionForApplicationSectionsForRevision__c | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    And I pause execution for "3" seconds
    When I click on "Create Application" in the page details
    And I wait for "5" seconds
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    Then I cannot see field "Application Sections for Revision" inside page block

  @545458 @multiselectpicklist
  Scenario: Page Layout- Multi-Select picklist- SPI- To verify Hide Label is working after render on Config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |                   | Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Recipient ApplicationView | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Recipient ApplicationView | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Hide Label           | false             | Recipient ApplicationView | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue                           |
      | Page Block Config:Page Block Rule Detail | Is Active            | true          | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Hide Label           | true          | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    And I pause execution for "3" seconds
    When I click on "Create Application" in the page details
    And I wait for "5" seconds
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    Then I cannot see field "Application Sections for Revision" inside page block
    When I enter "ApplicationSectionsForRevision" values from "AmendmentRequest_Field_Values.xlsx"
    And I pause execution for "5" seconds
    Then I see multiple selected options in "Chosen" cell:
      | Overview: Primary Place of Performance   |
      | Overview: Application Overview           |
      | Overview: Project Information            |
      | Budget Tab: Budget Summary by Focus Area |
      | Budget: Budget Details                   |

  @545368
  Scenario Outline:Page Layout- Multi-Select picklist-  Admin/PM- To verify that Read only logic is working after render on config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Grantor State Program | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Read Only            | false             | Grantor State Program | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                                     |
      | Page Block Config:Page Block Rule Detail | Is Active            | true          | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |               | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override |               | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |               | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Read Only            | true          | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    Then I cannot see field "Types Of Assistance" inside page block
    Examples:
      | Users |
      | PM    |

  @545459 @multiselectpicklist
  Scenario: Page Layout- Multi-Select picklist-  SPI- To verify that Read only logic is working after render on config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |                   | Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Recipient ApplicationView | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Recipient ApplicationView | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Read Only            | false             | Recipient ApplicationView | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue                           |
      | Page Block Config:Page Block Rule Detail | Is Active            | true          | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Read Only            | true          | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    And I pause execution for "3" seconds
    When I click on "Create Application" in the page details
    And I wait for "5" seconds
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    Then I softly see that "ApplicationSectionsForRevision__c" rendered in view mode only

  @545460 @multiselectpicklist
  Scenario: Page Layout- multi-select picklist- SPI- To verify Download as PDF after render in Config functioning correctly
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |                   | Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Recipient ApplicationView | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |                   | Recipient ApplicationView | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Read Only            | false             | Recipient ApplicationView | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue                           |
      | Page Block Config:Page Block Rule Detail | Is Active            | true          | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Hide Expression JSON |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Read Only            | false         | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    And I pause execution for "3" seconds
    When I click on "Create Application" in the page details
    And I wait for "5" seconds
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I enter "ApplicationSectionsForRevision" values from "AmendmentRequest_Field_Values.xlsx"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I click on "Download as PDF" in the page details
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Application Sections for Revision" on page "1" of "govgrants" pdf file

  @545462 @multiselectpicklist
  Scenario Outline: Page Layout- multi-select picklist- Admin/PM- To verify Download as PDF after render in Config functioning correctly-
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:2 |
#      | Page Block Config:Page Block Rule Detail | Is Active            | true              | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                                     |
      | Page Block Config:Page Block Rule Detail | Field Label Override |               | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Is Active            | true          | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
#      | Page Block Config:Page Block Rule Detail | Is Active            | false         | Grantor State Program | Name                      | {pagelayout:CreateProgramModalTypesOfType__C}                  |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    When I enter "TypeOfAssistance MultiSelectPic" values from "AmendmentRequest_Field_Values.xlsx"
    And I pause execution for "5" seconds
    Then I see multiple selected options in "Chosen" cell:
      | Project Grants                        |
      | Direct Payments with Unrestricted Use |
      | DIRECT LOANS                          |
      | DIRECT PAYMENTS FOR A SPECIFIED USE   |
    And I click on "Save" in the page details
    And I wait for "3" seconds
    When I click on "Download as PDF" in the page details
    Then I see new tab is opened
    And I download the file
    And I pause execution for "5" seconds
    Then I see "Project Grants" on page "1" of "govgrants" pdf file
    Then I softly see "Sarah PM EED to Expanded Learning Division Only" at my feed container with id "---Application:-:MyFeedId---"
    Examples:
      | Users |
     # | Admin |
      | PM    |

  @545370 @multiselectpicklist
  Scenario:Page Layout- Multi-Select picklist- SPI- To verify Help Text on Hovering Help Text Icon Functioning correctly
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |                   | Recipient ApplicationView | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue                   | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue                           |
      | Page Block Config:Page Block Rule Detail | Is Active            | true                            | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Field Label Override Automation | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Help Text Long       | Automation                      | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    And I pause execution for "3" seconds
    When I click on "Create Application" in the page details
    And I wait for "5" seconds
    And I click modal button "Save and Continue"
    When I hovering mouse on help text icon inside "Application Sections for Revision"
    And I pause execution for "3" seconds
    Then I see field "Field Label Override Automation" inside page block

  @545453 @multiselectpicklist
  Scenario:Page Layout- Multi-Select picklist- SPI- To verify Field Label Override after render in Config
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Recipient ApplicationView | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Recipient ApplicationView | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |                   | Recipient ApplicationView | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue                           |
      | Page Block Config:Page Block Rule Detail | Is Active            | true          | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override |               | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
      | Page Block Config:Page Block Rule Detail | Help Text Long       | Automation    | Recipient ApplicationView | Name                      | {CommonConfigFile:ApplicationSectionsForRevision__c} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    And I pause execution for "3" seconds
    When I click on "Create Application" in the page details
    And I wait for "5" seconds
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
#    When I hovering mouse on help text icon inside "Application Sections for Revision"
#    And I pause execution for "2" seconds
#    Then I softly see "Automation" shown as help text
    When I hovering mouse on help text icon inside page block detail "Application Sections for Revision"
    Then I softly see "Automation" shown as help text


  @545456 @multiselectpicklist
  Scenario Outline:Page Layout- Multi-Select picklist- Admin/PM- To verify Help Text on Hovering Help Text Icon Functioning correctly
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long       |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor State Program | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                                     |
      | Page Block Config:Page Block Rule Detail | Is Active            | true          | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Help Text Long       | Automation    | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Field Label Override |               | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I hovering mouse on help text icon inside "Types Of Assistance"
    And I pause execution for "2" seconds
    Then I softly see "Automation" shown as help text
    Examples:
      | Users |
      | PM    |

    @545463
      Scenario Outline: Page Layout- multi-select picklist- Admin/PM- To verify Take Snapshot after render in Config functioning correctly
      Given I have "default" configuration as below:
        | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField    | filterId         |
        | Page Block Config:Page Block Rule Detail | Is Active            | false             | Grantor State Program | ApiGeneratedId:0 |
        | Page Block Config:Page Block Rule Detail | Help Text Long       |                   | Grantor State Program | ApiGeneratedId:1 |
        | Page Block Config:Page Block Rule Detail | Field Label Override |                   | Grantor State Program | ApiGeneratedId:2 |
      Given I setup test configuration as below:
        | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                                     |
        | Page Block Config:Page Block Rule Detail | Is Active            | true          | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
        | Page Block Config:Page Block Rule Detail | Help Text Long       | Automation    | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
        | Page Block Config:Page Block Rule Detail | Field Label Override |               | Grantor State Program | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      When I login to "As a Grantor" app as "<Users>" user
      And I navigate to "Planning" tab
      When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
      And I click toggle button to select "Internal Programs - Draft"
      And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
      When I enter "Creation" values from "Program_Field_Values.xlsx"
      And I click modal button "Save and Continue"
      When I hovering mouse on help text icon inside "Types Of Assistance"
      And I pause execution for "2" seconds
      Then I softly see "Automation" shown as help text
      Examples:
        | Users |
        | PM    |

    ###############Test suite: 3.0 Forms - Multi-select picklist (Suite ID: 506165)

