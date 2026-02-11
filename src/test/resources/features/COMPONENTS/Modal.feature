@Modal
Business Need: Modal Component Scenarios
  Test all Modal component based scenarios
  As a configuration manager i make different configurational changes in Modal component and will validate them.

  @201270p @201271 @201272 @382218 @382223 @382247 @382248 @SanityPATCH  @SanityPATCHModal
  Scenario Outline:Modal- Admin- Config- Verify Pop-up window (modal window) should open,
  Action- Admin- Config- Verify ‘Modal title’ is displaying correctly,
  Action- PM- UI - Verify ‘Modal title’ is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | Modal             | Programs           | Name                      | New                        |
      | Flex Table Action     | Action Behavior | Open in overlay   | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Title     | Create Program    | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Width     | 1000              | Programs           | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | Modal           | Programs           | Name                      | New                        |
      | Flex Table Action     | Action Behavior | Open in overlay | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Title     | Create Program  | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Width     | 1000            | Programs           | Name                      | New                        |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see "Create Program" opens in overLay window
    Examples:
      | Users |
      | PM    |

  @201273p @382224 @382251 @382269 @SanityPATCH  @SanityPATCHModal
  Scenario: Action- SPI- UI- Verify ‘Modal title’ is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior |                   | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Title     |                   | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Width     |                   | GrantsList         | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay  | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Title     | Automation Title | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Width     | 800              | GrantsList         | Name                      | View                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Application Program For Announcement Testing"
    When I click on "View" icon for "Application Program For Announcement Testing" inside table
    Then I see "Automation Title" opens in overLay window
    Then I see "Grant Information" page block displayed
    Then I see "Grant Description" page block displayed

  @2012744p @201275
  Scenario Outline: Action- Admin- Config- Verify modal window size is as per Modal width,
  Action- PM-UI- Verify modal window size is as per Modal width
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | Modal             | Programs           | Name                      | New                        |
      | Flex Table Action     | Action Behavior | Open in overlay   | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Title     | Create Program    | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Width     | 1000              | Programs           | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | Modal           | Programs           | Name                      | New                        |
      | Flex Table Action     | Action Behavior | Open in overlay | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Title     | Create Program  | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Width     | 1000            | Programs           | Name                      | New                        |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see modal window is open in same tab with style "width: 1000"
    Examples:
      | Users |
      | PM    |

  @201276p
  Scenario: Action- SPI- UI- Verify modal window size is as per Modal width
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior |                   | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Title     |                   | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Width     |                   | GrantsList         | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay  | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Title     | Automation Title | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Width     | 1000             | GrantsList         | Name                      | View                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "Application Program For Announcement Testing"
    When I click on "View" icon for "Application Program For Announcement Testing" inside table
    Then I see "Automation Title" opens in overLay window
    Then I see modal window is open in same tab with style "width: 1000"

  @201295 @201296 @382225 @382227 @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Modal- Admin- Config- Verify if admin can add action buttons in modal window for view mode at the top and Bottom of the page,
  Modal- PM- UI- Verify if action buttons displays in modal window for view mode at the top and Bottom of the page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ?            | Modal             | Programs           | Name                      | New                        |
      | Flex Table Action     | Action Behavior            | Open in overlay   | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Title                | Create Program    | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Width                | 1000              | Programs           | Name                      | New                        |
      | Flex Table Action     | Location                   | Top               | Programs           | Name                      | New                        |
      | Flex Table Action     | Header Action Display Type | Button            | Programs           | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ?            | Modal           | Programs           | Name                      | New                        |
      | Flex Table Action     | Action Behavior            | Open in overlay | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Title                | Create Program  | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Width                | 1000            | Programs           | Name                      | New                        |
      | Flex Table Action     | Location                   | Top             | Programs           | Name                      | New                        |
      | Flex Table Action     | Header Action Display Type | Button          | Programs           | Name                      | New                        |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see "Save and Continue" at bottom of Attachment Modal
    Examples:
      | Users |
      | PM    |

  @207417 @207418
  Scenario Outline: Modal- Admin- Config- Verify we can select options from dropdown for picklist fields,
  Modal- PM- UI- Verify we can select options from dropdown for picklist fields
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I click dropdown field "fieldType__c"
    When I pause execution for "3" seconds
    Then I see only the following ordered options in dropdown field "fieldType__c" :
      | --None-- | Block Grants | Earmark Grants | Emergency Grants | Formula Grants | Project Grants | Research Grants | Other |
    Examples:
      | Users |
      | PM    |

  @207420p @207421p
  Scenario Outline: Modal- Admin- Config- Verify lookup works properly for look up fields,
  |Modal- PM- UI- Verify lookup works properly for look up fields|
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see "Primary Funding Organization" field contains "Test Automation Organization" value
    Examples:
      | Users |
      | PM    |

  @207426 @207427
  Scenario Outline: Modal- Admin- Config- Verify we can enter text in text fields,
  Modal- PM- UI- Verify we can enter text in text fields
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "Test" into field "Abbreviation__c"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see "Title" field contains "Automation Program For Test" value
    Examples:
      | Users |
      | PM    |

  @207429p @207430
  Scenario Outline: Modal- Admin- Config- Verify we can enter numbers in text fields
  |Modal- PM- Config- Verify we can enter numbers in text fields|
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "Automation Program 1234" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see "Title" field contains "Automation Program 1234" value
    Examples:
      | Users |
      | PM    |

  @207432p
  Scenario Outline: Modal- Admin- Config- Verify we can enter currency in fields
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName       | coreComponentSubFieldValue           |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program Create | {flexgrid:InformationPageBlock} | {flexgrid:ModalFundedAmount__c}      |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program        | {flexgrid:InformationPageBlock} | {flexgrid:PagelayoutFundedAmount__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "5000" into field "FundedAmount__c"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see "Funded Amount" field contains "$5,000" value

    Examples:
      | Users |
      | PM    |

  @207449p @207450 @382298 @382299 @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Modal- Admin- Config- Verify all fields where Required behavior under Page Block Details Config is ‘Required to save’ should have (*) on modal,
  Modal- PM- UI- Verify all fields where Required behavior under Page Block Details Config is ‘Required to save’ should have (*) on modal
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see Required behavior under field "ProgramName__c" with star mark on modal
    Then I see Required behavior under field "Type__c" with star mark on modal
    Then I see Required behavior under field "FocusAreaRequired__c" with star mark on modal
    Then I see Required behavior under field "IsGoalsRequired__c" with star mark on modal
    Then I see Required behavior under field "KPIsRequired__c" with star mark on modal
    Examples:
      | Users |
      | PM    |

  @207452p @207453
  Scenario Outline: Modal- Admin/PM- Config- Verify fields should rendered display on modal as per given sort order
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Sort Order | 1                 | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Sort Order | 2                 | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Sort Order | 3                 | Grantor State Program | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Sort Order | 4                 | Grantor State Program | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Sort Order | 5                 | Grantor State Program | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Sort Order | 6                 | Grantor State Program | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Sort Order | 1             | Grantor State Program Create | Name                      | PBD-18710                  |
      | Page Block Config:Page Block Rule Detail | Sort Order | 2             | Grantor State Program Create | Name                      | PBD-18811                  |
      | Page Block Config:Page Block Rule Detail | Sort Order | 3             | Grantor State Program Create | Name                      | PBD-18808                  |
      | Page Block Config:Page Block Rule Detail | Sort Order | 4             | Grantor State Program Create | Name                      | PBD-18709                  |
      | Page Block Config:Page Block Rule Detail | Sort Order | 5             | Grantor State Program Create | Name                      | PBD-19656                  |
      | Page Block Config:Page Block Rule Detail | Sort Order | 6             | Grantor State Program Create | Name                      | PBD-18703                  |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see "fieldProgramName__c" is displayed at position "1" inside table table name "Information" in modal
    Then I see "fieldAbbreviation__c" is displayed at position "2" inside table table name "Information" in modal
    Then I see "fieldType__c" is displayed at position "3" inside table table name "Information" in modal
    Then I see "fieldAccount__c" is displayed at position "4" inside table table name "Information" in modal
    Then I see "fieldPrimaryFundingOrganization__c" is displayed at position "5" inside table table name "Information" in modal
    Examples:
      | Users |
      | PM    |

  @207455 @382234 @382237 @382241 @382242 @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Modal- Admin/PM- Config- Verify if any required field is empty then error massage should display
    Given I delete the record "Automation Program 1234" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    Then I see the following message in the page details contains:
      | Program Name is required to save. |
    Examples:
      | Users |
      | PM    |

  @382234 @SanityPATCH
  Scenario: Sanity Testing- Modal- Admin- To verify required to save and required to submit message displays on edit modal.
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @382237 @SanityPATCH
  Scenario: Sanity Testing- Modal- PM- To verify required to save and required to submit message displays on edit modal.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see field message with text as "Required to Save" and "Required to Submit"

  @207458p @2074
  Scenario Outline: Modal- Admin- Config- Verify if all required field are filled then we should be able to save and continue
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "7" seconds
    Then I softly see "Cancel" button is displayed
    Then I softly see "Save" button is displayed
    Examples:
      | Users |
      | PM    |

  @207461p @207462 @382263 @382266 @382287 @382288  @382285 @382284 @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Modal- Admin- Config- Verify when we hover on (i) icon on modal Help text should be displayed
  |Modal- PM - Config- Verify when we hover on (i) icon on modal Help text should be displayed|
  |Sanity Testing- Modal- Page Block- Admin- To verify Page Block Title displays the same on UI which is updated in config.|
  |Sanity Testing- Modal- Page Block- PM- To verify Page Block Title displays the same on UI which is updated in config.|
  |Sanity Testing- Modal- Page Block Detail- Admin- To verify 'Help Text Long' displays after field label in the page block detail if provided in config.|
  |Sanity Testing- Modal- Page Block Detail- PM- To verify 'Help Text Long' displays after field label in the page block detail if provided in config.|
  |Sanity Testing- Modal- Page Block Detail- PM- To verify help text displays after field label in the page block detail if provided in config.|
  |Sanity Testing- Modal- Page Block Detail- Admin- To verify help text displays after field label in the page block detail if provided in config.|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | true              | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <helpTextInModal> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue     | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true              | Grantor State Program Create | PB-7205                   | PBD-18811                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <helpTextInModal> | Grantor State Program Create | PB-7205                   | PBD-18811                  |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I hovering mouse on i icon for field "fieldAbbreviation__c" inside modal
    Then I see "<helpTextInModal>" shown as help text

    Examples:
      | Users | helpTextInModal                                                           |
      | PM    | This is a program abbreviation as determined by the internal organization |

  @207464p @207465
  Scenario Outline: Modal- Admin/PM- Config- Verify multiple page blocks can be added in modal
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program Create | PB-7205                   | PBD-18811                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program Create | PB-7615                   | PBD-18811                  |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see "Information" page block displayed
    Then I see "Program Specific Settings" page block displayed
    Examples:
      | Users |
      | PM    |

  @207467 @207468
  Scenario Outline: Modal- Admin/PM - Config- Verify actions (like Save, Back, cancel etc) can be rendered on Modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ?            | Modal             | Programs           | Name                      | New                        |
      | Flex Table Action     | Action Behavior            | Open in overlay   | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Title                | Create Program    | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Width                | 1000              | Programs           | Name                      | New                        |
      | Flex Table Action     | Location                   | Top               | Programs           | Name                      | New                        |
      | Flex Table Action     | Header Action Display Type | Button            | Programs           | Name                      | New                        |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ?            | Modal           | Programs           | Name                      | New                        |
      | Flex Table Action     | Action Behavior            | Open in overlay | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Title                | Create Program  | Programs           | Name                      | New                        |
      | Flex Table Action     | Modal Width                | 1000            | Programs           | Name                      | New                        |
      | Flex Table Action     | Location                   | Top             | Programs           | Name                      | New                        |
      | Flex Table Action     | Header Action Display Type | Button          | Programs           | Name                      | New                        |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see "Save and Continue" at bottom of Attachment Modal
    And I pause execution for "5" seconds
    Then I see "Create Program" modal window is open in same tab
    Then I see "Save and Continue" button is present on Modal
    Examples:
      | Users |
      | PM    |

  @382294 @382295 @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Sanity Testing- Modal- Page Block Detail- Admin- To verify 'Field Label Override' displays on UI.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Website Address   | Grantor State Program Create | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | Website Name  | Grantor State Program Create | Name                      | PBD-18703                  |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see field "Website Name" inside page block
    Examples:
      | Users |
      | PM    |

  @382320 @382321 @SanityPATCH  @SanityPATCHModal
  Scenario Outline:Sanity Testing- Modal- Admin- To verify user is able to add table in the modal
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I enter value "Automation Program 1234" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    Then I see table id "toggleFlexTableAssociateProgramContacts" flex table render in modal view
    Examples:
      | Users |
      | PM    |

  @382276 @382277 @SanityPATCH  @SanityPATCHModal
  Scenario Outline:Sanity Testing- Modal- Page Block- Admin- To verify help text displays after field label in the page block if provided in config.
  |Sanity Testing- Modal- Page Block- PM- To verify help text displays after field label in the page block if provided in config.|
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block:Page Block Detail | Help Text | <old_helpText>    | Grantor State Program Create | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue  | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Help Text | <new_helpText> | Grantor State Program Create | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I hovering mouse on help text icon inside "Information"
    Then I see "<new_helpText>" shown as help text
    Examples:
      | Users | new_helpText             | old_helpText |
      | PM    | Help Text for Automation |              |

  @382229p @382231 @SanityPATCH  @SanityPATCHModal @testmodal
  Scenario Outline: Sanity Testing- Modal- Admin- To verify when user gives 'Header instructions' in config for page layout, it displays on UI.
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName               | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block:Page Block Detail | Header Instruction Text |                   | Grantor State Program Create | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName               | fieldNewValue  | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Header Instruction Text | <new_helpText> | Grantor State Program Create | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see "<new_helpText>" shown as header instruction text in modal
    Examples:
      | new_helpText                       |
      | Test Automation header instruction |

  @382231 @SanityPATCH
  Scenario Outline: Sanity Testing- Modal- PM- To verify when user gives 'Header instructions' in config for page layout, it displays on UI.
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName               | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block:Page Block Detail | Header Instruction Text |                   | Grantor State Program Create | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName               | fieldNewValue  | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Header Instruction Text | <new_helpText> | Grantor State Program Create | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see "<new_helpText>" shown as header instruction text in modal
    Examples:
      | new_helpText                       |
      | Test Automation header instruction |

  @382252p @382253 @SanityPATCH  @SanityPATCHModal
  Scenario Outline:Sanity Testing- Modal- Page Tab- Admin- To verify Header Instruction Text displays in the modal if provided in the config.
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName               | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block:Page Block Detail | Header Instruction Text |                   | Grantor State Program Create | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName               | fieldNewValue  | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Header Instruction Text | <new_helpText> | Grantor State Program Create | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I softly see "<new_helpText>" shown as page instruction text
    Examples:
      | Users | new_helpText           |
      | PM    | Automation Header Text |

  @382271 @382273 @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Sanity Testing- Modal- Page Block- Admin- To verify Header Instruction Text displays in the modal if provided in the config.
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName               | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block:Page Block Detail | Header Instruction Text |                   | Grantor State Program Create | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName               | fieldNewValue  | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Header Instruction Text | <new_helpText> | Grantor State Program Create | GNT__PageBlockTitle__c    | Information                |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I softly see "<new_helpText>" shown as page instruction text
    Examples:
      | Users | new_helpText           |
      | PM    | Automation Header Text |

  @382244p @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Sanity Testing- Modal- Admin- To verify in view modal on edit action is present.
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I click on top right button "New" in flex table with id "---program:-:programContactsTableId---"
    Then I see "Save" button is present on Modal
    Examples:
      | Users |
      | PM    |

  @382309p @382311 @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Test Case 382309: Sanity Testing- Modal- Page Block Detail- Admin- To verify all type of data type fields are getting rendered in the page block details.
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I softly see "Program Name" inside page block detail
    Then I softly see "Type" inside page block detail
    Then I softly see "Internal Organization" inside page block detail
    Then I softly see "Website Name" inside page block detail
    Then I softly see "Focus Area Required?" inside page block detail

    Examples:
      | Users |
      | PM    |

  @382312 @SanityPATCH  @SanityPATCHModal
  Scenario: Sanity Testing- Modal- Page Block Detail- SPI- To verify all type of data type fields are getting rendered in the page block details.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I click on "View" icon in flex table for first draft record
    Then I softly see "Award Title" inside page block detail
    Then I softly see "Type" inside page block detail
    Then I softly see "Award ID" inside page block detail
    Then I softly see "Schedule Title" inside page block detail
    Then I softly see "Start Date" inside page block detail
    Then I softly see "EGMS ID" inside page block detail

  @382289 @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Sanity Testing- Modal- Page Block Detail- SPI- To verify 'Help Text Long' displays after field label in the page block detail if provided in config.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <old_helpText>    | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <new_helpText> | TermConditionScheduleNewGrantor | PB-8624                   | PBD-21920                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I click on "View" icon in flex table for first draft record
    When I hovering mouse on i icon for field "Award Title" inside modal
    Then I see "<new_helpText>" shown as help text

    Examples:
      | User | new_helpText             | old_helpText |
      | SPI3 | Help Text for Automation |              |

  @382279 @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Sanity Testing- Modal- Page Block- SPI- To verify help text displays after field label in the page block if provided in config.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | coreComponentField              | filterId         |
      | Page Block            | Help Text | <old_helpText>    | TermConditionScheduleNewGrantor | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Help Text | <new_helpText> | TermConditionScheduleNewGrantor | Name                      | PB-8624                    |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    And I click on "View" icon in flex table for first draft record
    When I hovering mouse on help text icon inside "Schedule Details"
    Then I see "<new_helpText>" shown as help text

    Examples:
      | User | new_helpText             | old_helpText             |
      | SPI3 | Help Text for Automation | Help Text for Automation |

  @382274 @SanityPATCH  @SanityPATCHModal
  Scenario Outline:Sanity Testing- Modal- Page Block- SPI- To verify Header Instruction Text displays in the modal if provided in the config.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Page Block            | Header Instruction Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName               | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Header Instruction Text | <new_helpText> | TermConditionScheduleNewGrantor | Name                      | PB-8430                    |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    When I perform quick search for "SC-623375"
    When I click on "View" icon for "SC-623375" inside table
    Then I softly see "<new_helpText>" shown as page instruction text
    Examples:
      | User | new_helpText           | old_helpText |
      | SPI3 | Automation Header Text |              |

  @382233 @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Sanity Testing- Modal- SPI- To verify when user gives 'Header instructions' in config for page layout, it displays on UI.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Page Layout           | Page Instruction Text | <old_helpText>    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Page Instruction Text | <new_helpText> | TermConditionScheduleNewGrantor |                           |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    When I perform quick search for "SC-623375"
    When I click on "View" icon for "SC-623375" inside table
    Then I softly see "<new_helpText>" shown as page instruction text
    Examples:
      | User | new_helpText           | old_helpText |
      | SPI3 | Automation Header Text |              |

  @382297 @SanityPATCH  @SanityPATCHModal
  Scenario Outline: Sanity Testing- Modal- Page Block Detail- SPI- To verify 'Field Label Override' displays on UI.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName            | fieldOrignalValue | coreComponentField              | filterId         |
      | Page Block Config:Page Block Rule Detail | Field Label Override | <Old Label>       | TermConditionScheduleNewGrantor | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName            | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Field Label Override | <New Label>   | TermConditionScheduleNewGrantor | Name                      | PBD-21912                  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "<User>" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    When I perform quick search for "SC-623375"
    When I click on "View" icon for "SC-623375" inside table
    Then I softly see "<New Label>" shown as page instruction text
    Examples:
      | User | New Label     | Old Label      |
      | SPI3 | Schedule Name | Schedule Title |

  @382286 @SanityPATCH  @SanityPATCHModal
  Scenario: Sanity Testing- Modal- Page Block Detail- SPI- To verify help text displays after field label in the page block detail if provided in config.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Monitoring" tab
    And I click toggle button to select "Scheduled Activities - All"
    When I perform quick search for "SC-623375"
    When I click on "View" icon for "SC-623375" inside table

  @382247p @SanityPATCH
  Scenario: Sanity Testing- Modal- Page Tab- Admin- To verify Tab title displays as expected which is provided in the config.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue      | coreComponentField           | filterId         |
      | Page Tabs Config      | Is Active | false                  | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Tabs Config      | Tab Title | Automation Tab testing | Grantor State Program Create | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue               | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true                        | Grantor State Program Create | Name                      | TAB-3330                   |
      | Page Tabs Config:Page Layout Action | Tab Title | test Automation Tab testing | Grantor State Program Create | Name                      | TAB-3330                   |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see "test Automation Tab testing" Tab title displays on modal

  @382248 @SanityPATCH
  Scenario: Sanity Testing- Modal- Page Tab- PM- To verify Tab title displays as expected which is provided in the config.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue      | coreComponentField           | filterId         |
      | Page Tabs Config      | Tab Title | Automation Tab testing | Grantor State Program Create | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue               | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Tab Title | test Automation Tab testing | Grantor State Program Create | Name                      | TAB-3331                   |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    Then I see "test Automation Tab testing" Tab title displays on modal

  @207469 @207466 @207460 @207428
  Scenario:Modal- SPI- UI- Verify actions (like Save, Back, cancel etc) can be rendered on Modal
  |Modal- SPI- UI- Verify multiple page blocks can be added in modal|
  |Modal- SPI- UI- Verify if all required field are filled then we should be able to save and continue|
  |Modal- SPI- UI- Verify we can enter text in text fields|
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName        | fieldOrignalValue     | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | Automation Page Block | Create Grantor Preapplication | GNT__PageBlockTitle__c    | Automation Page Block      |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue         | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Page Block Title | Automation Page Block | Create Grantor Preapplication | GNT__PageBlockTitle__c    | Automation Page Block      |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement for Pre-App" and properties "PRE_APPLICATION_NEGOTIATION_YES"
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    When I navigate to "Opportunities" tab
    And I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I click toggle button to select "Not Yet Qualified Opportunities - All"
    And I perform quick search for "{SavedValue:Automation Runtime Announcement for Pre-App}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement for Pre-App}" inside table
    When I click on "Qualify" in the page details
    And I click on "Create Pre-Application" in the page details
    Then I see "Save and Continue" at bottom of Attachment Modal
    Then I softly see "Automation Page Block" page block displayed
    When I click modal button "Save and Continue"
    And I pause execution for "7" seconds
    And I click on "Save" in the page details
    And I pause execution for "7" seconds
    Then I see page title "Pre-Application View"

  @207457
  Scenario:Modal- SPI- UI- Verify if any required field is empty then error massage should display
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement for Pre-App" and properties "PRE_APPLICATION_NEGOTIATION_YES"
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    When I navigate to "Opportunities" tab
    And I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I click toggle button to select "Not Yet Qualified Opportunities - All"
    And I perform quick search for "{SavedValue:Automation Runtime Announcement for Pre-App}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement for Pre-App}" inside table
    When I click on "Qualify" in the page details
    And I get current URL
    And I click on "Create Pre-Application" in the page details
    And I enter value "" into field "fieldTitle__c"
    Then I see Required behavior under field "Title__c" with star mark on modal
    Then I see "Save and Continue" at bottom of Attachment Modal
    Then I see the following messages in the page details contains:
      | Pre-Application Title is required to save. |

  @207451
  Scenario: Modal- SPI- UI- Verify all fields where Required behavior under Page Block Details Config is ‘Required to save’ should have (*) on modal
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement for Pre-App" and properties "PRE_APPLICATION_NEGOTIATION_YES"
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    When I navigate to "Opportunities" tab
    And I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I click toggle button to select "Not Yet Qualified Opportunities - All"
    And I perform quick search for "{SavedValue:Automation Runtime Announcement for Pre-App}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement for Pre-App}" inside table
    When I click on "Qualify" in the page details
    And I click on "Create Pre-Application" in the page details
    And I enter value "" into field "fieldTitle__c"
    Then I see Required behavior under field "Title__c" with star mark on modal

  @207448 @207445
  Scenario: Modal- SPI- UI- Verify all fields where ‘Is Active’ checkbox is unchecked under Page Block Details Config should not display on modal
  |Modal- SPI- UI- Verify all fields where ‘Is Active’ checkbox is checked under Page Block Details Config should display on UI modal|
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement for Pre-App" and properties "PRE_APPLICATION_NEGOTIATION_YES"
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    When I navigate to "Opportunities" tab
    And I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I click toggle button to select "Not Yet Qualified Opportunities - All"
    And I perform quick search for "{SavedValue:Automation Runtime Announcement for Pre-App}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement for Pre-App}" inside table
    When I click on "Qualify" in the page details
    And I click on "Create Pre-Application" in the page details
    Then I softly see "Pre-Application Title" inside page block detail
    Then I softly see "Project Director" inside page block detail

