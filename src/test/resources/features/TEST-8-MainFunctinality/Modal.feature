@Modal-component @regression-QA @Modal
Business Need: Modal Component Scenarios
  Test all Modal component based scenarios
  As a configuration manager i make different configurational changes in Modal component and will validate them.

  @201270 @201271 @201272
  Scenario Outline:Modal- Admin- Config- Verify Pop-up window (modal window) should open,
  Action- Admin- Config- Verify ‘Modal title’ is displaying correctly,
  Action- PM- UI - Verify ‘Modal title’ is displaying correctly
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
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see "Create Program" opens in overLay window
    Examples:
      | Users |
      | Admin |
      | PM    |

  @201273
  Scenario: Action- SPI- UI- Verify ‘Modal title’ is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior |                   | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Title     |                   | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Width     |                   | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay  | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Title     | Automation Title | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Width     | 800              | GrantsList         | Name                      | View                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "security Review_Application"
    When I click on "View" icon for "security Review_Application" inside table
    Then I see "Automation Title" opens in overLay window

  @201274 @201275
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
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see modal window is open in same tab with style "width: 1000"
    Examples:
      | Users |
      | Admin |
      | PM    |

  @201276
  Scenario: Action- SPI- UI- Verify modal window size is as per Modal width
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior |                   | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Title     |                   | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Width     |                   | Programs           | Name                      | View                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior | Open in overlay  | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Title     | Automation Title | GrantsList         | Name                      | View                       |
      | Flex Table Action     | Modal Width     | 1000             | GrantsList         | Name                      | View                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "security Review_Application"
    When I click on "View" icon for "security Review_Application" inside table
    Then I see "Automation Title" opens in overLay window
    Then I see modal window is open in same tab with style "width: 1000"

  @201295 @201296
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
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see "Save and Continue" at bottom of Attachment Modal
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207417 @207418
  Scenario Outline: Modal- Admin- Config- Verify we can select options from dropdown for picklist fields,
  Modal- PM- UI- Verify we can select options from dropdown for picklist fields
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I click dropdown field "fieldType__c"
    When I pause execution for "3" seconds
    Then I see only the following ordered options in dropdown field "fieldType__c" :
      | --None-- | Block Grants | Earmark Grants | Emergency Grants | Formula Grants | Project Grants | Research Grants | Other |
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207420 @207421
  Scenario Outline: Modal- Admin- Config- Verify lookup works properly for look up fields,
  Modal- PM- UI- Verify lookup works properly for look up fields
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "ID" as "EGMSID"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see "Primary Funding Organization" field contains "Children’s Health Insurance Program" value
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207426 @207427
  Scenario Outline: Modal- Admin- Config- Verify we can enter text in text fields,
  Modal- PM- UI- Verify we can enter text in text fields
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I enter value "Test" into field "Abbreviation__c"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see "Title" field contains "Automation Program For Test" value
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207429 @207430
  Scenario Outline: Modal- Admin- Config- Verify we can enter numbers in text fields
    Given I delete the record "Automation Program 1234" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I enter value "Automation Program 1234" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    Then I see "Title" field contains "Automation Program 1234" value
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207432
  Scenario Outline: Test Case 207432: Modal- Admin- Config- Verify we can enter currency in fields
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ?            | Modal             | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior            | Open in overlay   | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Modal Title                |                   | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Modal Width                | 1000              | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Location                   | Row               | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Header Action Display Type | Button            | DataTableEnhanceProgramContacts | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ?            | Modal           | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior            | Open in overlay | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Modal Title                | Create Program  | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Modal Width                | 1000            | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Location                   | Row             | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Header Action Display Type | Button          | DataTableEnhanceProgramContacts | Name                      | Edit                       |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "Admin Program for Advance filter"
    When I click on "View" icon for "Admin Program for Advance filter" inside table
    When I navigate to "Overview" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    When I click on "Edit" icon for "Lisa Mitchell" inside table
    And I enter value "5000" into field "BaseSalary__c"
    And I click modal button "Save"
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207449 @207450
  Scenario Outline: Modal- Admin- Config- Verify all fields where Required behavior under Page Block Details Config is ‘Required to save’ should have (*) on modal,
  Modal- PM- UI- Verify all fields where Required behavior under Page Block Details Config is ‘Required to save’ should have (*) on modal
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Grantor State Program Create | Name                      | PBD-19308                  |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see Required behavior under field "ProgramName__c" with star mark on modal
    Then I see Required behavior under field "Type__c" with star mark on modal
    Then I see Required behavior under field "Account__c" with star mark on modal
    Then I see Required behavior under field "FocusAreaRequired__c" with star mark on modal
    Then I see Required behavior under field "IsGoalsRequired__c" with star mark on modal
    Then I see Required behavior under field "KPIsRequired__c" with star mark on modal
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207452 @207453
  Scenario Outline: Modal- Admin/PM- Config- Verify fields should rendered display on modal as per given sort order
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName  | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block Config:Page Block Rule Detail | Sort Order | 0                 | Grantor State Program | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Sort Order | 1                 | Grantor State Program | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Sort Order | 2                 | Grantor State Program | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Sort Order | 3                 | Grantor State Program | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Sort Order | 4                 | Grantor State Program | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Sort Order | 4                 | Grantor State Program | ApiGeneratedId:5 |
      | Page Block Config:Page Block Rule Detail | Sort Order | 25                | Grantor State Program | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName  | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Sort Order | 0             | Grantor State Program Create | Name                      | PBD-19262                  |
      | Page Block Config:Page Block Rule Detail | Sort Order | 1             | Grantor State Program Create | Name                      | PBD-19307                  |
      | Page Block Config:Page Block Rule Detail | Sort Order | 2             | Grantor State Program Create | Name                      | PBD-19308                  |
      | Page Block Config:Page Block Rule Detail | Sort Order | 3             | Grantor State Program Create | Name                      | PBD-19309                  |
      | Page Block Config:Page Block Rule Detail | Sort Order | 4             | Grantor State Program Create | Name                      | PBD-23562                  |
      | Page Block Config:Page Block Rule Detail | Sort Order | 4             | Grantor State Program Create | Name                      | PBD-19915                  |
      | Page Block Config:Page Block Rule Detail | Sort Order | 25            | Grantor State Program Create | Name                      | PBD-19311                  |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see "fieldProgramName__c" is displayed at position "1" inside table table name "Information" in modal
    Then I see "fieldAbbreviation__c" is displayed at position "2" inside table table name "Information" in modal
    Then I see "fieldType__c" is displayed at position "3" inside table table name "Information" in modal
    Then I see "fieldAccount__c" is displayed at position "4" inside table table name "Information" in modal
    Then I see "fieldAccount__c" is displayed at position "5" inside table table name "Information" in modal
    Then I see "fieldPrimaryFundingOrganization__c" is displayed at position "6" inside table table name "Information" in modal
    Then I see "fieldWebsiteAddress__c" is displayed at position "7" inside table table name "Information" in modal
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207455
  Scenario Outline: Modal- Admin/PM- Config- Verify if any required field is empty then error massage should display
    Given I delete the record "Automation Program 1234" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I enter value "" into field "ProgramName__c"
    And I click on "Save and Continue" in the page details
    Then I see the following message in the page details contains:
      | Program Name is required to save. |
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207458 @2074
  Scenario Outline: Modal- Admin- Config- Verify if all required field are filled then we should be able to save and continue
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "7" seconds
    Then I see page title "Planning ~ As a Grantor"
    Examples:
      | Users |
      | Admin |
      | PM    |

  @207461 @207462
  Scenario Outline: Modal- Admin/PM- Config- Verify when we hover on (i) icon on modal Help text should be displayed
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName      | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active      | true              | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <helpTextInModal> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName      | fieldNewValue     | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active      | true              | Grantor State Program Create | PB-7032                   | PBD-19307                  |
      | Page Block Config:Page Block Rule Detail | Help Text Long | <helpTextInModal> | Grantor State Program Create | PB-7032                   | PBD-19307                  |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I hovering mouse on i icon for field "Abbreviation" inside modal
    Then I see "<helpTextInModal>" shown as help text
    Then I see "Information" page block displayed
    Then I see "Program Specific Settings" page block displayed
    Examples:
      | Users | helpTextInModal                                                           |
      | Admin | This is a program abbreviation as determined by the internal organization |
      | PM    | This is a program abbreviation as determined by the internal organization |

  @207464 @207465
  Scenario Outline: Modal- Admin/PM- Config- Verify multiple page blocks can be added in modal
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program Create | PB-7032                   | PBD-19307                  |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program Create | PB-7615                   | PBD-19307                  |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see "Information" page block displayed
    Then I see "Program Specific Settings" page block displayed
    Examples:
      | Users |
      | Admin |
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
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I see "Save and Continue" at bottom of Attachment Modal
    And I pause execution for "5" seconds
    Then I see "Create Program" modal window is open in same tab
    Examples:
      | Users |
      | Admin |
      | PM    |