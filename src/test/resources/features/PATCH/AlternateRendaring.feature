@ComponentSanity @AlternateRendering
Feature: Component Sanity Testing AlternateRendering
  In this feature file, we use the following tags for component-wise execution:@AlternateRendering

  @55281 @AlternateRendering
  Scenario Outline:Modal- Alternate Rendering- Admin/PM- To Verify Checkbox Enable and Save Functionality, Display Values on UI
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program Create | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program Create | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program Create | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program Create | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program Create | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue              | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue                                     |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c}                        |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c}                        |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c}                        |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Grantor State Program        | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Grantor State Program        | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Grantor State Program        | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_Yes.xlsx"
    Then I select below checkbox options for field "fieldTypesOfAssistance__c"
      | Display Value on UI 1 |
      | Display Value on UI 2 |
      | Display Value on UI 3 |
      | Display Value on UI 4 |
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    Then I softly see field "Display Value on UI 1" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 2" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 3" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 4" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 5" as "Unchecked" for multipicklist
    Examples:
      | Users |
#      | Admin |
      | PM    |

  @545291 @AlternateRendering
  Scenario Outline: Modal- Alternate Rendering- Admin/PM- To Verify Radio button Select and Save Functionality, Display Values on UI
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program Create | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program Create | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program        | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program        | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program        | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue            | coreComponentField           | coreComponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                     | Grantor State Program Create | Name                      | {CommonConfigFile:AdminPmModalRadioType__c} |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRadioButton | Grantor State Program Create | Name                      | {CommonConfigFile:AdminPmModalRadioType__c} |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                    | Grantor State Program Create | Name                      | {CommonConfigFile:AdminPmModalRadioType__c} |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                     | Grantor State Program        | Name                      | {CommonConfigFile:PageLayoutRadioType__c}   |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRadioButton | Grantor State Program        | Name                      | {CommonConfigFile:PageLayoutRadioType__c}   |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                    | Grantor State Program        | Name                      | {CommonConfigFile:PageLayoutRadioType__c}   |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I enter value "Display 1" into field "RadioType__c"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    Then I softly see field "Display 1" as "Checked" for multipicklist

    Examples:
      | Users |
      | Admin |
#      | PM    |

  @545292 @AlternateRendering
  Scenario: Modal- Alternate Rendering- SPI- To Verify Checkbox Enable and Save Functionality, Display Values on UI
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor Contact    | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor Contact    | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor Contact    | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor Contact    | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor Contact    | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor Contact    | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue                     |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                      | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRadioButton   | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalRadioType__c}    |
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Overview" sub tab
    And I click on top right button "New" in flex table with id "---home:-:userContactsTableId---"
    And I pause execution for "3" seconds
    Then I select below checkbox options for field "fieldCheckboxType__c"
      | Display Value on UI 1 |
      | Display Value on UI 2 |
      | Display Value on UI 3 |
      | Display Value on UI 4 |
    Then I softly see field "Display Value on UI 1" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 2" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 3" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 4" as "Checked" for multipicklist

  @545293 @AlternateRendering
  Scenario: Modal- Alternate Rendering- SPI- To Verify Radio button Select and Save Functionality, Display Values on UI
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor Contact    | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor Contact    | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor Contact    | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor Contact    | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor Contact    | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor Contact    | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue                     |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                      | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRadioButton   | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Grantor Contact    | Name                      | {CommonConfigFile:SpiUserModalRadioType__c}    |
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Overview" sub tab
    And I click on top right button "New" in flex table with id "---home:-:userContactsTableId---"
    And I pause execution for "3" seconds
    And I enter value "Display 1" into field "RadioType__c"
    Then I softly see field "Display 1" as "Checked"
    Then I softly see field "Display 2" as "Unchecked"

  @545294 @AlternateRendering
  Scenario Outline: Page Layout- Alternate Rendering- Admin/PM- To Verify Checkbox Enable and Save Functionality, Display Values on UI
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program Create | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program Create | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program Create | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program Create | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program Create | ApiGeneratedId:5 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program Create | ApiGeneratedId:6 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program        | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue              | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue                                     |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c}                        |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c}                        |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Grantor State Program Create | Name                      | {CommonConfigFile:TypesOfAssistance__c}                        |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Grantor State Program        | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Grantor State Program        | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Grantor State Program        | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                      | Grantor State Program Create | Name                      | {CommonConfigFile:AdminPmModalRadioType__c}                    |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                      | Grantor State Program        | Name                      | {CommonConfigFile:AdminPmPageLayoutRadioType__c}               |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    Then I select below checkbox options for field "fieldTypesOfAssistance__c"
      | Display Value on UI 1 |
      | Display Value on UI 2 |
      | Display Value on UI 3 |
      | Display Value on UI 4 |
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    And I click on "Cancel" in the page details without processing
    Then I see confirmation box with message "Are you sure you want to cancel?" is displayed
    And I click "Yes" on modal confirmation box
    Then I softly see field "Display Value on UI 1" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 2" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 3" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 4" as "Checked" for multipicklist
    Examples:
      | Users |
      | Admin |
      | PM    |

  @545295 @AlternateRendering
  Scenario Outline: Page Layout- Alternate Rendering- Admin/PM- To Verify Radio button Select and Save Functionality, Display Values on UI
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program Create | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program Create | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program        | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program        | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program        | ApiGeneratedId:5 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program Create | ApiGeneratedId:6 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program        | ApiGeneratedId:7 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue            | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue                          |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                     | Grantor State Program Create | Name                      | {CommonConfigFile:AdminPmModalRadioType__c}         |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRadioButton | Grantor State Program Create | Name                      | {CommonConfigFile:AdminPmModalRadioType__c}         |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                    | Grantor State Program Create | Name                      | {CommonConfigFile:AdminPmModalRadioType__c}         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                     | Grantor State Program        | Name                      | {CommonConfigFile:AdminPmPageLayoutRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRadioButton | Grantor State Program        | Name                      | {CommonConfigFile:AdminPmPageLayoutRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                    | Grantor State Program        | Name                      | {CommonConfigFile:AdminPmPageLayoutRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                    | Grantor State Program Create | Name                      | {CommonConfigFile:AdminPmUserModalCheckboxType__c}  |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                    | Grantor State Program        | Name                      | {CommonConfigFile:AdminPmPageLayoutCheckboxType__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter in modal "Creation" values from "Program_Field_Values.xlsx"
    And I enter value "Display 1" into field "RadioType__c"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    Then I softly see field "Display 1" as "Checked" for multipicklist
    Then I softly see field "Display 2" as "Unchecked" for multipicklist
    Then I softly see field "Display 3" as "Unchecked" for multipicklist
    Then I softly see field "Display 4" as "Unchecked" for multipicklist

    Examples:
      | Users |
#      | Admin |
      | PM    |

  @545296 @AlternateRendering
  Scenario:Page Layout- Alternate Rendering- SPI- To Verify Checkbox Enable and Save Functionality, Display Values on UI
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor Contact           | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor Contact           | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor Contact           | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Recipient Pre-Application | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Recipient Pre-Application | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Recipient Pre-Application | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue              | coreComponentField            | coreCOmponentSubFieldName | coreComponentSubFieldValue                                       |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Create Grantor Preapplication | Name                      | {CommonConfigFile:CreatePreApplicationModalCheckboxType__c}      |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Create Grantor Preapplication | Name                      | {CommonConfigFile:CreatePreApplicationModalCheckboxType__c}      |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Create Grantor Preapplication | Name                      | {CommonConfigFile:CreatePreApplicationModalCheckboxType__c}      |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Recipient Pre-Application     | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Recipient Pre-Application     | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Recipient Pre-Application     | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement for Pre-App" and properties "PRE_APPLICATION_NEGOTIATION_YES"
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    When I navigate to "Opportunities" tab
    And I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I click toggle button to select "Not Yet Qualified Opportunities - All"
    And I perform quick search for "{SavedValue:Automation Runtime Announcement for Pre-App}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement for Pre-App}" inside table
    When I click on "Qualify" in the page details
    And I pause execution for "5" seconds
    And I click on "Create Pre-Application" in the page details
    And I halt execution
    Then I select below checkbox options for field "fieldCheckboxType__c"
      | Display Value on UI 1 |
      | Display Value on UI 2 |
      | Display Value on UI 3 |
      | Display Value on UI 4 |
    When I click modal button "Save and Continue"
    Then I softly see field "Display Value on UI 1" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 2" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 3" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 4" as "Checked" for multipicklist

  @545297 @AlternateRendering
  Scenario: Page Layout- Alternate Rendering- SPI- To Verify Radio button Select and Save Functionality, Display Values on UI
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Recipient Pre-Application | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Recipient Pre-Application | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Recipient Pre-Application | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Recipient Pre-Application | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Recipient Pre-Application | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Recipient Pre-Application | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue              | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue                                       |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                      | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRadioButton   | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutRadioType__c}    |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement for Pre-App" and properties "PRE_APPLICATION_NEGOTIATION_YES"
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    When I navigate to "Opportunities" tab
    And I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I click toggle button to select "Not Yet Qualified Opportunities - All"
    And I perform quick search for "{SavedValue:Automation Runtime Announcement for Pre-App}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement for Pre-App}" inside table
    When I click on "Qualify" in the page details
    And I pause execution for "5" seconds
    And I click on "Create Pre-Application" in the page details
    And I click modal button "Save and Continue"
    And I enter value "Display 1" into field "RadioType__c"
    And I click on "Save" in the page details
    Then I softly see field "Display 1" as "Checked"
    Then I softly see field "Display 2" as "Unchecked" for multipicklist
    Then I softly see field "Display 3" as "Unchecked" for multipicklist
    Then I softly see field "Display 4" as "Unchecked" for multipicklist

  @545298 @AlternateRendering
  Scenario: Page Layout- Alternate Rendering- SPI- To verify Download as PDF after render in Config functioning correctly
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Recipient Pre-Application | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Recipient Pre-Application | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Recipient Pre-Application | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Recipient Pre-Application | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Recipient Pre-Application | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Recipient Pre-Application | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue              | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue                                       |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                      | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRadioButton   | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutRadioType__c}    |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement for Pre-App" and properties "PRE_APPLICATION_NEGOTIATION_YES"
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    When I navigate to "Opportunities" tab
    And I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I click toggle button to select "Not Yet Qualified Opportunities - All"
    And I perform quick search for "{SavedValue:Automation Runtime Announcement for Pre-App}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement for Pre-App}" inside table
    When I click on "Qualify" in the page details
    And I pause execution for "5" seconds
    And I click on "Create Pre-Application" in the page details
    And I pause execution for "5" seconds
    And I click modal button "Save and Continue"
    And I enter value "Display 1" into field "RadioType__c"
    And I click on "Save" in the page details
    When I click on "Download As PDF" in the page details
    And I pause execution for "5" seconds
    And I download the file
    And I pause execution for "5" seconds
    Then I softly see "Display 1" on page "1" of "govgrants" pdf file

  @545299 @AlternateRendering
  Scenario: Page Layout- Alternate Rendering- SPI- To verify Take Snapshot after render in Config functioning correctly
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField        | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Recipient Pre-Application | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Recipient Pre-Application | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Recipient Pre-Application | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Recipient Pre-Application | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Recipient Pre-Application | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Recipient Pre-Application | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue              | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue                                       |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                      | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutCheckboxType__c} |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRadioButton   | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutRadioType__c}    |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Recipient Pre-Application | Name                      | {CommonConfigFile:CreatePreApplicationPageLayoutRadioType__c}    |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement for Pre-App" and properties "PRE_APPLICATION_NEGOTIATION_YES"
    When I am on "SUBPORTAL" portal
    And I login to "Grants Portal" app as "SPI3" user
    When I navigate to "Opportunities" tab
    And I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    When I click toggle button to select "Not Yet Qualified Opportunities - All"
    And I perform quick search for "{SavedValue:Automation Runtime Announcement for Pre-App}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement for Pre-App}" inside table
    When I click on "Qualify" in the page details
    And I pause execution for "5" seconds
    And I click on "Create Pre-Application" in the page details
    And I click modal button "Save and Continue"
    And I wait for "5" seconds
    And I enter value "Display 1" into field "RadioType__c"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    And I click on "Cancel" in the page details without processing
    Then I see confirmation box with message "Are you sure you want to cancel?" is displayed
    And I click "Yes" on modal confirmation box
    Then I softly see field "Display 1" as "Checked"
    When I click on "Take Snapshot" in the page details
    Then I see "Snapshot created successfully. Please refresh the page." page message displayed in page layout


  @545301 @AlternateRendering
  Scenario Outline: :Page Layout- Alternate Rendering- Admin/PM- To verify Take Snapshot after render in Config functioning correctly
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName                    | fieldOrignalValue | coreComponentField           | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program Create | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program Create | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program Create | ApiGeneratedId:2 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program Create | ApiGeneratedId:3 |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config |                   | Grantor State Program Create | ApiGeneratedId:4 |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false             | Grantor State Program Create | ApiGeneratedId:5 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program        | ApiGeneratedId:6 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program        | ApiGeneratedId:7 |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false             | Grantor State Program        | ApiGeneratedId:8 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName                    | fieldNewValue              | coreComponentField           | coreCOmponentSubFieldName | coreComponentSubFieldValue                                     |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Grantor State Program Create | Name                      | {CommonConfigFile:AdminPmUserModalCheckboxType__c}             |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Grantor State Program Create | Name                      | {CommonConfigFile:AdminPmUserModalCheckboxType__c}             |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Grantor State Program Create | Name                      | {CommonConfigFile:AdminPmUserModalCheckboxType__c}             |
      | Page Block Config:Page Block Rule Detail | Is Active                    | true                       | Grantor State Program        | Name                      | {CommonConfigFile:AdminPmPageLayoutCheckboxType__c}            |
      | Page Block Config:Page Block Rule Detail | Alternative Rendering Config | MultiPicklistRenderTestApp | Grantor State Program        | Name                      | {CommonConfigFile:AdminPmPageLayoutCheckboxType__c}            |
      | Page Block Config:Page Block Rule Detail | Hide Select All Checkbox     | false                      | Grantor State Program        | Name                      | {CommonConfigFile:AdminPmPageLayoutCheckboxType__c}            |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                      | Grantor State Program        | Name                      | {CommonConfigFile:AdminPmPageLayoutRadioType__c}               |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                      | Grantor State Program        | Name                      | {CommonConfigFile:CreateProgramModalTypesOfType__C}            |
      | Page Block Config:Page Block Rule Detail | Is Active                    | false                      | Grantor State Program        | Name                      | {CommonConfigFile:CreateProgramPageLayoutTypesOfAssistance__c} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    Then I select below checkbox options for field "fieldCheckboxType__c"
      | Display Value on UI 1 |
      | Display Value on UI 2 |
      | Display Value on UI 3 |
      | Display Value on UI 4 |
    When I enter in modal "Creation" values from "Program_Field_Values.xlsx"
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    And I click on "Cancel" in the page details without processing
    Then I see confirmation box with message "Are you sure you want to cancel?" is displayed
    And I click "Yes" on modal confirmation box
    Then I softly see field "Display Value on UI 1" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 2" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 3" as "Checked" for multipicklist
    Then I softly see field "Display Value on UI 4" as "Checked" for multipicklist
    When I click on "Take Snapshot" in the page details
    Then I see "Snapshot created successfully. Please refresh the page." page message displayed in page layout

    Examples:
      | Users |
#      | Admin |
      | PM    |

  ######2.0 Forms - Alternate Rendering (Suite ID: 506197)