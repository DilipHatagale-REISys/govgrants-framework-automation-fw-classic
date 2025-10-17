@EnhancedFlexTable @DataTableEnhanced
Business Need: DataTableEnhanced Component Scenarios
  Test all DataTableEnhanced component based scenarios
  As a configuration manager i make different configurational changes in DataTableEnhanced component and will validate them.

  @77110 @77112  @379019 @77183
  Scenario Outline: enabling of page size dropdown at bottom inside enhanced enhanced flex table planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Page Size  | false             | ApiGeneratedId:0 |
      | Flex Grid             | Default Page Size | 5                 | ApiGeneratedId:1 |
      | Flex Grid             | Disable Menu      | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Enable Page Size  | true          | DataTableEnhanceProgramContacts |                           |                            |
      | Flex Grid:General     | Default Page Size | 5             | DataTableEnhanceProgramContacts |                           |                            |
      | Flex Grid:General     | Disable Menu      | true          | DataTableEnhanceProgramContacts |                           |                            |
    Given I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    Then I see "Entries" with page size dropdown in enhanced grid "---program:-:programContactsTableId---"
    Then I see Menu icon is disabled from planning flex table "Contacts"

    Examples:
      | User |
      | PM   |

  @77220 @77221
  Scenario Outline: Changing specific column value in ascending order with order by and sort by field from config and validating it inside  enhanced flex table planning
  |  Scenario Outline: Changing specific column value in Descending order with order by and sort by field from config and validating it inside  enhanced flex table planning |
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ProjectRole__c | DataTableEnhanceProgramContacts |                           |                            |
      | Flex Grid:General     | Sort Direction | ASC            | DataTableEnhanceProgramContacts |                           |                            |
    Given I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    Then I see column "ProjectRole__c" value is in "Ascending" order
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Flex Grid             | Order By       |                   | ApiGeneratedId:0 |
      | Flex Grid             | Sort Direction |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Grid:General     | Order By       | ProjectRole__c | DataTableEnhanceProgramContacts |                           |                            |
      | Flex Grid:General     | Sort Direction | DESC           | DataTableEnhanceProgramContacts |                           |                            |
    And I refresh the page
    Then I see column "ProjectRole__c" value is in "Descending" order

    Examples:
      | User |
    #  | ADMIN |
      | PM   |

  @77284
  Scenario Outline: validate enabling of overall total field after checking checkbox true of Enable Over All Total from config and validating it inside enhanced data table-planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Enable Over All Total | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Enable Over All Total | true          | DataTableEnhanceProgramContacts | Name                      | FTC-14086                  |
    Given I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    Then I see over all total for "BaseSalary__c" field at enhanced grid

    Examples:
      | User |
    #  | ADMIN |
      | PM   |

  @77329
  Scenario: validate display of number of project areas column after checking checkbox true of Hide Grouping Column field from config and validating it inside enhanced data table -planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue | filterId         |
      | Flex Table List       | Hide Grouping Column | false             | ApiGeneratedId:0 |
      | Flex Table List       | Enable Row Grouping  | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName            | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Hide Grouping Column | true          | GrantorRelatedAwards2 | Name                      | FTC-13092                  |
      | Flex Table List       | Enable Row Grouping  | true          | GrantorRelatedAwards2 | Name                      | FTC-13092                  |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    When I navigate to "Subawards" content inside "Grants, Subawards & Amendments" subheader on left panel
    And I click toggle button to select "Subawards  - All"
    Then I see "Version Number" not displayed in enhanced grid table column title

  @104862
  Scenario: verify that sorting label displayed inside enhanced data table
    Given I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I pause execution for "5" seconds
    Then I softly see sorting label as "* Records are sorted by Last Modified Date ascending order" inside "---program:-:programContactsTableId---" table

  @104409
  Scenario Outline: validate picklist field value as none inside enhanced data table in inline edit mode
    Given I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I perform quick search for "Automation PM" in "---program:-:programContactsTableId---" panel
    When I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:programContactsTableId---"
    Then I see "--None--:Authorized Signatory:Ebiz POC:Fiscal Contact:Grants Administrator:Principal Investigator:Program Manager:Project Director/Manager:Other" inside selectbox field "ProjectRole__c"

    Examples:
      | User |
      | PM   |

  @132268
  Scenario Outline:validate title,Label and value at mini page layout is getting displayed properly on mouse hover at enhanced data table
    Given I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateProgramContactsTableId---"
    When I perform quick search for "Automation PM" in "---program:-:programContactsTableId---" panel
    And I pause execution for "5" seconds
    When I hover mouse on lookup link "Automation PM" at table
    And I pause execution for "4" seconds
    Then I see "Name" as "Automation PM" in mini page layout

    Examples:
      | User |
      | PM   |

  @204743 @204744
  Scenario: Is active- SPI- UI- Verify flex table should be displayed
  |Is active- SPI- UI- Verify flex table should not be displayed|
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---program:-:NotYetQualifiedTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---program:-:NotYetQualifiedTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Files" sub tab
    Then I see Header field "Notes" displayed as a Header on flex table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField        | coreCOmponentSubFieldName | coreComponentSubFieldValue        |
      | Page Block:Page Block Detail | Is Active | false         | Recipient ApplicationView | Name                      | {CommonConfigFileTest:NotesBlock} |
    And I refresh the page
    Then I do not see Header field "Notes" displayed as a Header on flex table

  @204745 @204746
  Scenario Outline: Header instruction- Admin- Config- Verify if given header help text is getting displayed under 'i' icon,Header instruction- PM- UI- Verify if given header help text is getting displayed under 'i' icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Header Help Text | <defaultHelpText> | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header Help Text | <newHelpText> | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    When I hovering mouse on help text "---program:-:EDataTableForHelpTextIconTableId---" icon
    Then I see "Help text for Automation" shown as help text
    Examples:
      | User | defaultHelpText                                                                                         | newHelpText              |
     # | Admin | State or funding organization contacts for applicants to refer.Tgfhg!$#%^$&^(**)_(+_)134655898-00=;/.,] | Help text for Automation |
      | PM   | State or funding organization contacts for applicants to refer.Tgfhg!$#%^$&^(**)_(+_)134655898-00=;/.,] | Help text for Automation |

  @204748 @204749 @204751 @204752
  Scenario Outline: Display Field Name - Admin -Config- Verify if all fields from 'Display field names' are getting displayed under on flex Table,Display Field Name -PM- UI- Verify if all fields from 'Display field names' are getting displayed under on flex Table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names | <defaultFieldsApi> | ApiGeneratedId:1 |
      | Flex Table            | Header              | Contacts           | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header              | Contacts       | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Display Field Names | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    Then I see "Project Role" in flex table header "DataTableEnhanceProgramContactsFlexToggle"
    Then I see "Name" in flex table header "DataTableEnhanceProgramContactsFlexToggle"
    Then I see "Email" in flex table header "DataTableEnhanceProgramContactsFlexToggle"
    Then I see "Organization" in flex table header "DataTableEnhanceProgramContactsFlexToggle"
    Then I see "BaseSalary" in flex table header "DataTableEnhanceProgramContactsFlexToggle"

    Examples:
      | User | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
     # | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM   | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @204991 @204992 @379020
  Scenario Outline: Page Size- Admin- Config- Verify dropdown to select page size manually should not appear on UI,
  Page Size- PM- UI- Verify dropdown to select page size manually should not appear on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:1 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:3 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | false          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    Then I do not see "Entries" page size inside table "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | User | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
    #  | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM   | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @204988 @204989   @204994 @204995 @204997 @205005 @205010 @205011 @379021
  Scenario Outline: Page Size- Admin- Config- Verify dropdown appears on UI to select page size manually,Page Size- PM- UI- Verify dropdown appears on UI to select page size manually
  | Default Page Size- Admin- Config- Verify default number of records displayed in flex table are as mentioned in ‘Default Page Size’,|
  |Default Page Size - PM- UI- Verify default number of records displayed in flex table are as mentioned in ‘Default Page Size’,|
  |Total Records Count- Admin- Config- Verify ‘Total Records Count’ displays on UI|
  |Total Records Count- PM- UI- Verify ‘Total Records Count’ displays on UI|
  | Pagination- Admin- Config- Verify ‘Pagination’ displays on UI,Pagination - PM- UI- Verify ‘Pagination’ displays on UI|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Grid             | Default Page Size          | 10                 | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Grid:General     | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    Then I see "Entries" page size inside table "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I softly see table contains "Showing 1 to" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I softly see "---program:-:DataTableEnhanceTableIDforContactsTable---" table contains "Page 1 of"

    Examples:
      | User | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
   #  | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM   | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205007 @205008
  Scenario Outline: Total Records Count- Admin- Config- Verify Total Records Count should not display on UI,
  Total Records Count- PM- UI- Verify Total Records Count should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true               | ApiGeneratedId:3 |
      | Flex Table            | Default Page Size          | 10                 | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | false          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    Then I do not see "Total Records:" page size inside table "---program:-:DataTableEnhanceTableIDforContactsTable---"

    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205013 @205014 @379022
  Scenario Outline: Pagination - Admin- Config- Verify Pagination should not display on UI,
  Pagination - PM- UI- Verify Pagination should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Default Page Size          | 5                  | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | false          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    Then I do not see "---program:-:DataTableEnhanceTableIDforContactsTable---" table contains "Page 1 of"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205026 @205027 @205023 @205024
  Scenario Outline: Auto Index - Admin- Config- Verify index column (#) should not display on UI,
  Auto Index - PM- UI- Verify index column (#) should not display on UI
  | Auto Index- Admin- Config- Verify records are getting indexed under separate column (#),Auto Index - PM- UI- Verify records are getting indexed under separate column (#)|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | false          | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    Then I do not see "#" in flex table header "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true               | ApiGeneratedId:3 |
      | Flex Table            | Default Page Size          | 5                  | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    And I refresh the page
    Then I see "#" in flex table header "---program:-:DataTableEnhanceTableIDforContactsTable---"

    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205046 @205047 @205029 @205030 @205049 @205050
  Scenario Outline: Record Selection- Admin- Config- Verify Record Selection Column should not display on UI,
  |Record Selection- PM- UI- Verify Record Selection Column should not display on UI|
  |Record Selection- Admin- Config- Verify ‘Record Selection Column’ displays on UI,|
  |Record Selection- PM- UI- Verify ‘Record Selection Column’ displays on UI|
  | Record Selection- Admin- Config- Verify correct Record Selection Column Header displays on UI|
  | Record Selection- PM- UI- Verify correct Record Selection Column Header displays on UI|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names     | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination       | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Record Selection | false              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index       | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names     | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination       | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | false          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index       | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    Then I do not see "Select All Check Box" displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names     | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination       | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Record Selection | false              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index       | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName               | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names     | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination       | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Record Selection | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index       | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    And I refresh the page
    Then I see "Select All Check Box" displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"

    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205052 @205053
  Scenario Outline: Record Selection- Admin- Config- Verify Record Selection Column rendered on desired position on UI,Record Selection- PM- UI- Verify Record Selection Column rendered on desired position on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                        | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names              | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Record Selection          | false              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index                | true               | ApiGeneratedId:1 |
      | Flex Table            | Record Selection Column Position | none               | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                        | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names              | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Record Selection          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index                | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Record Selection Column Position | none           | Programs                        | Name                      | Record Selection           |
    Given I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207562 @207563 @207584 @207585
  Scenario Outline: Test Case 205052: Record Selection- Admin- Config- Verify Record Selection Column rendered on desired position on UI,
  Page description- Admin- Config- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows),
  Page description - PM- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true               | ApiGeneratedId:3 |
      | Flex Grid             | Default Page Size          | 5                  | ApiGeneratedId:4 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Grid:General     | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    Then I see "5" with page size dropdown at "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"

    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207565 @207566
  Scenario Outline: Records description- Admin- Config- Verify when we get any quick search results description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records),
  Records description - PM- UI- Verify when we get any quick search results description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true               | ApiGeneratedId:3 |
      | Flex Grid             | Default Page Size          | 10                 | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Grid:General     | Default Page Size          | 10             | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    When I performed quick search "Automation PM" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---" on page block
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
   #  | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207587 @207588
  Scenario Outline: Page description- Admin- Config- Verify when we get any quick search results Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
  Page description - PM- UI- Verify when we get any quick search results Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:3 |
      | Flex Grid             | Default Page Size          | 10                 | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Grid:General     | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I click on page navigation arrow "Next" for table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I see page description is displayed "Page 2 of" with "First" arrow inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
     # | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207590 @207591
  Scenario Outline: Page description- Admin- Config- Verify when we apply ‘Advance filter’ Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows),
  Page description - PM- UI- Verify when we apply ‘Advance filter’ Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:3 |
      | Flex Grid             | Default Page Size          | 10                 | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Grid:General     | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I enter advance filter values in table id "advfDataTableEnhanceProgramContacts"
      | Project Role | equals to | Other |
    Then I softly see "No Records Found" inside flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"

    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
     # | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207593 @207594
  Scenario Outline: Page description- Admin- Config- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows) and we can toggle page using arrows
  Page description - PM- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows) and we can toggle page using arrows
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:3 |
      | Flex Grid             | Default Page Size          | 10                 | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Grid:General     | Default Page Size          | 5              | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    And I click on page navigation arrow "Next" for table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I see page description is displayed "Page 2 of" with "First" arrow inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
    #  | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207596 @207597
  Scenario Outline: Page description- Admin- Config- Verify we can toggle page using arrows Next arrow should get disabled on last page,
  Page description - PM- UI- Verify we can toggle page using arrows Next arrow should get disabled on last page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:2 |
      | Flex Grid             | Default Page Size          | 10                 | ApiGeneratedId:3 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Grid:General     | Default Page Size          | 10             | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    And I click on page navigation arrow "Last" for table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I do not see pagination "Next" arrow displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
  #    | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |


  @207599 @207600
  Scenario Outline: Page description- Admin- Config- Verify we can toggle page using arrows Previous arrow should get disabled on First page
  Page description - PM- UI- Verify we can toggle page using arrows Previous arrow should get disabled on First page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:3 |
      | Flex Grid             | Default Page Size          | 5                  | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Grid:General     | Default Page Size          | 10             | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    And I click on page navigation arrow "Last" for table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    And I click on page navigation arrow "First" for table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I do not see pagination "Previous" arrow displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
    #  | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207602 @207603
  Scenario Outline: Page description- Admin- Config- Verify we can directly jump on last page using this arrow,
  Page description - PM- UI- Verify we can directly jump on last page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Page Size           | true               | ApiGeneratedId:3 |
      | Flex Grid             | Default Page Size          | 5                  | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Page Size           | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Grid:General     | Default Page Size          | 10             | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    And I click on page navigation arrow "Last" for table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I do not see pagination "Last" arrow displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
    #  | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @207605 @207606
  Scenario Outline: Page description- Admin/PM- Config- Verify we can directly jump on First page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I select value inside table "---program:-:DataTableEnhanceTableIDforContactsTable---" is "5"
    And I click on page navigation arrow "Last" for table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    And I click on page navigation arrow "First" for table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Then I do not see pagination "First" arrow displayed inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    Examples:
      | Users | defaultFieldsApi                                                                    | newFieldsApi                                                                        |
   #   | Admin | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @204993
  Scenario:Page Size- SPI- UI- Verify dropdown to select page size manually should not appear on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-9118                    |
      | Flex Table:General           | Enable Page Size           | false         | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---program:-:NotYetQualifiedTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---program:-:NotYetQualifiedTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Files" sub tab
    When I enter the following values into flex table with id "---program:-:ProgramReviewStepTemplatesTableId---" by clicking "New" :
      | Step Order | Step Name         | Description      |
      | 4          | Pre-Screen Review | Review Step Desc |

    #Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"
    Then I do not see "Entries" page size inside table "---program:-:FlexTableEnhancedNotesId---"

  @204990 @204996
  Scenario: Page Size- SPI- UI- Verify dropdown appears on UI to select page size manually,
  Default Page Size - SPI- UI- Verify default number of records displayed in flex table are as mentioned in ‘Default Page Size’
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Default Page Size          | 5                 | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size           | true          | AppContact         | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | AppContact         | Name                      |                            |
      | Flex Table:General    | Default Page Size          | 5             | AppContact         | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"
    Then I see "Entries" page size inside table "---program:-:FlexTableEnhancedNotesId---"
    Then I see "Total Records:" text-allignment is "center" in table id "---program:-:FlexTableEnhancedNotesId---"
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"

  @205009 @205015
  Scenario: Total Records Count- SPI- UI- Verify Total Records Count should not display on UI,
  Pagination - SPI- UI- Verify Pagination should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-9118                    |
      | Flex Table:General           | Enable Total Records Count | false         | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Pagination          | false         | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
   # Then I do not see "---program:-:FlexTableEnhancedNotesId---" table contains "Page 1 of"
    Then I do not see "Total Records:" page size inside table "---program:-:FlexTableEnhancedNotesId---"

  @205006 @205012 @207586
  Scenario: Total Records Count- SPI- UI- Verify ‘Total Records Count’ displays on UI,Pagination - SPI- UI- Verify ‘Pagination’ displays on UI,
  Page description - SPI- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-9118                    |
      | Flex Table:General           | Enable Page Size           | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Pagination          | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"
    Then I see "Total Records:" page size inside table "---program:-:FlexTableEnhancedNotesId---"
    Then I see page description is displayed "Page 1 of" with "Next" arrow inside table id "---program:-:FlexTableEnhancedNotesId---"

  @205028 @205048
  Scenario: Auto Index - SPI- UI- Verify index column (#) should not display on UI, Record Selection- SPI- UI- Verify Record Selection Column should not display on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Record Selection    | false             | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | false         | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Record Selection    | false         | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    Then I do not see "#" in flex table header "---program:-:FlexTableEnhancedNotesId---"
    Then I do not see "Select All Check Box" displayed inside table id "---program:-:FlexTableEnhancedNotesId---"

  @205025 @205031
  Scenario: Auto Index - SPI- UI- Verify records are getting indexed under separate column (#),Record Selection- SPI- UI- Verify ‘Record Selection Column’ displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
      | Flex Table            | Enable Auto Index          | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Record Selection    | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-9118                    |
      | Flex Table:General           | Enable Page Size           | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Pagination          | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Auto Index          | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Record Selection    | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    Then I see "#" in flex table header "---program:-:FlexTableEnhancedNotesId---"
    Then I see "Select All Check Box" displayed inside table id "---program:-:FlexTableEnhancedNotesId---"

  @205051 @205054
  Scenario:Record Selection- SPI- UI- Verify Record Selection Column rendered on desired position on UI,Record Selection- SPI- UI- Verify correct Record Selection Column Header displays on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName               | fieldOrignalValue | filterId         |
      | Page Block            | Is Active               | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Record Selection | false             | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName               | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active               | true          | RecipientGrant      | Name                      | PB-9118                    |
      | Flex Table:General           | Enable Record Selection | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    Then I see "Select All Check Box" displayed inside table id "---program:-:FlexTableEnhancedNotesId---"
    Then I see "Select All Check Box" column position is "!= 'Right" in table id "---program:-:FlexTableEnhancedNotesId---"

  @207564
  Scenario: Records description - SPI- UI- Verify correct description of records displayed on UI (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-9118                    |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    Then I see table contains "Showing 1 to" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207567
  Scenario: Records description - SPI- UI- Verify when we get any quick search results description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I performed quick search "Test" inside table id "---program:-:FlexTableEnhancedNotesId---" on page block
    Then I see table contains "Showing 1 to " inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207570
  Scenario: Records description - SPI- UI- Verify when we apply ‘Advance filter’ description of records displayed on UI should modify accordingly (eg. Showing 1 to 9 of 9 records)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I click on advance filter "#advfRecipientsGrantPackages" of table id "---program:-:FlexTableEnhancedNotesId---"
    When I enter advance filter values in table id "advfRecipientsGrantPackages"
      | Title | contains | Showing 1 to 5 of 8 records |
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207589 @207592
  Scenario: Page description - SPI- UI- Verify when we get any quick search results Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows),
  Page description - SPI- UI- Verify when we apply ‘Advance filter’ Page description displayed on UI should modify accordingly (eg. Page 1 of 5 with navigation arrows)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Check" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"
    When I click on advance filter "#advfRecipientGrantNotes" of table id "---program:-:FlexTableEnhancedNotesId---"
    When I enter advance filter values in table id "advfRecipientGrantNotes"
      | Title | contains | Check |
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207598 @207595
  Scenario: Page description - SPI- UI- Verify we can toggle page using arrows Next arrow should get disabled on last page
  Page description - SPI- UI- Verify no of page description is displayed on UI (eg. Page 1 of 5 with navigation arrows) and we can toggle page using arrows,
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:4 |
      | Flex Table            | Default Page Size          | 5                 | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-9118                    |
      | Flex Table:General           | Enable Page Size           | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Pagination          | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Default Page Size          | 5             | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"
    And I click on page navigation arrow "---program:-:FlexTableEnhancedNotesId---" for table id "Last"
    Then I do not see pagination "Next" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I click on page navigation arrow "---program:-:FlexTableEnhancedNotesId---" for table id "First"
    Then I see pagination "Next" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"
    Then I do not see pagination "Previous" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I click on page navigation arrow "---program:-:FlexTableEnhancedNotesId---" for table id "Last"
    Then I do not see pagination "Last" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"

  @207607 @207604
  Scenario: Page description - SPI- UI- Verify we can directly jump on First page using this arrow
  Page description - SPI- UI- Verify we can directly jump on last page using this arrow
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Page Block            | Is Active                  | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:1 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:4 |
      | Flex Table            | Default Page Size          | 5                 | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active                  | true          | RecipientGrant      | Name                      | PB-9118                    |
      | Flex Table:General           | Enable Page Size           | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Total Records Count | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Enable Pagination          | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General           | Default Page Size          | 5             | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"
    And I click on page navigation arrow "---program:-:FlexTableEnhancedNotesId---" for table id "Last"
    Then I do not see pagination "Last" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I click on page navigation arrow "---program:-:FlexTableEnhancedNotesId---" for table id "First"
    Then I do not see pagination "First" arrow displayed inside table id "---program:-:FlexTableEnhancedNotesId---"

    #########################Test suite: Advanced Filter (Suite ID: 205069)############################


  @205082
  Scenario: Advanced Filter- SPI- UI- Verify Advanced Filter option should not available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | false         | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    Then I do not see Advance Filter box is displayed inside table id "---program:-:FlexTableEnhancedNotesId---" in flex table

  @205081
  Scenario: Advanced Filter- SPI- UI- Verify Advanced Filter option available on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    Then I see Advance Filter box is displayed inside table id "---program:-:FlexTableEnhancedNotesId---" in flex table

  @205083 @205084
  Scenario Outline: Advanced Filter- Admin- Config- Verify when click on Advanced Filter text box does related previous search suggestion appears
  Advanced Filter- PM- UI- Verify when click on Advanced Filter text box does related previous search suggestion appears
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue  | filterId         |
      | Flex Table            | Display Field Names        | <defaultFieldsApi> | ApiGeneratedId:0 |
      | Flex Table            | Enable Total Records Count | true               | ApiGeneratedId:1 |
      | Flex Table            | Enable Filter              | true               | ApiGeneratedId:2 |
      | Flex Table            | Enable Pagination          | true               | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names        | <newFieldsApi> | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true           | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true           | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    And I perform quick search for "{SavedValue:EXE Username}" in "---program:-:associateContactsTableId---" panel
    And I check "{SavedValue:EXE Username}" boxes in flex table with id "---program:-:associateContactsTableId---"
    And I perform quick search for "{SavedValue:PM Username}" in "---program:-:associateContactsTableId---" panel
    And I check "{SavedValue:PM Username}" boxes in flex table with id "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:associateProgramContactsTableId---"
    When I navigate to "Overview" sub tab
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    And I click on "Column Name" after click advance filter
    Then I see dropdown value "Project Role" under field name "Column Name" inside flex table
    And I click on "Operator" after click advance filter
    Then I see dropdown value "equals to" under field name "Operator" inside flex table
    And I click on "Value" after click advance filter
    Then I see dropdown value "Other" under field name "Value" inside flex table
    Examples:
      | Users | newFieldsApi                                                                        | defaultFieldsApi                                                                    |
      | PM    | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c | ProjectRole__c,Contact__c,Contact__r.Email,Contact__r.Organization__c,BaseSalary__c |

  @205085
  Scenario: Advanced Filter- SPI- UI- Verify when click on Advanced Filter text box does related previous search suggestion appears
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I click on advance filter "#advfRecipientGrantNotes" of table id "---program:-:FlexTableEnhancedNotesId---"
    And I click on "Column Name" after click advance filter
    Then I see dropdown value "Title" under field name "Column Name" inside flex table


  @207579
  Scenario: Advance filter - SPI- UI- Verify when we get records with ‘Advance filter’ and refresh the page Advance filter should cleared and all records should be displayed on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
      | Flex Table            | Default Page Size   | 5                 | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Default Page Size   | 5             | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I click on advance filter "#advfRecipientGrantNotes" of table id "---program:-:FlexTableEnhancedNotesId---"
    When I enter advance filter values in table id "advfRecipientGrantNotes"
      | Title | contains | Check |
    Then I see table contains "Showing 1 to " inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I refresh the page
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"

##########################Test suite: Quick Search (Suite ID: 207520)#########################

  @207524
  Scenario: Quick Search- SPI- UI- Verify we can search records by entering numbers in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "11000" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Delete" icon for "11000" inside table
    When I click "Yes" on modal confirmation box
    And I click on top right button "Add" in flex table with id "---program:-:FlexTableEnhancedNotesId---"
    And I enter value "Rest" into field "Title"
    And I enter value "11000" into field "Body"
    When I click on top right button "Save" in flex table with id "---program:-:FlexTableEnhancedNotesId---"
    When I perform quick search for "11000" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to" inside table id "---program:-:FlexTableEnhancedNotesId---"


  @207527
  Scenario: Quick Search- SPI- UI- Verify we can search records by entering text in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "sds@dv.com" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Delete" icon for "sds@dv.com" inside table
    When I click "Yes" on modal confirmation box
    And I click on top right button "Add" in flex table with id "---program:-:FlexTableEnhancedNotesId---"
    And I enter value "sds@dv.com" into field "Title"
    And I enter value "Chakram" into field "Body"
    When I click on top right button "Save" in flex table with id "---program:-:FlexTableEnhancedNotesId---"
    When I perform quick search for "Chakram" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"


  @207530
  Scenario: Quick Search- SPI- SPI- Verify we can search records by entering partial text in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "sds@dv.com" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Delete" icon for "sds@dv.com" inside table
    When I click "Yes" on modal confirmation box
    And I click on top right button "Add" in flex table with id "---program:-:FlexTableEnhancedNotesId---"
    And I enter value "sds@dv.com" into field "Title"
    And I enter value "Test" into field "Body"
    When I click on top right button "Save" in flex table with id "---program:-:FlexTableEnhancedNotesId---"
    When I perform quick search for "sds" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to" inside table id "---program:-:FlexTableEnhancedNotesId---"


  @207533
  Scenario: Quick Search- SPI- UI- Verify we can search records by entering special characters in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "sds@dv.com" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Delete" icon for "sds@dv.com" inside table
    When I click "Yes" on modal confirmation box
    And I click on top right button "Add" in flex table with id "---program:-:FlexTableEnhancedNotesId---"
    And I enter value "sds@dv.com" into field "Title"
    And I enter value "Test" into field "Body"
    When I click on top right button "Save" in flex table with id "---program:-:FlexTableEnhancedNotesId---"
    When I perform quick search for "sds@dv.com" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"


  @207536
  Scenario: Quick Search- SPI- UI- Verify we can search records by entering apostrophe in quick search box
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "'apostrophe test''''" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"


  @207574
  Scenario: Quick search - SPI- UI- Config- Verify when we get any quick search results and refresh the page quick search should cleared and all records should be displayed on UI
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Page Block            | Enable Quick Search | true              | ApiGeneratedId:0 |
      | Page Block            | Enable Filter       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Quick Search | true          | RecipientGrantNotes | Name                      |                            |
      | Flex Table:General    | Enable Filter       | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "'apostrophe test''''" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see table contains "Showing 1 to 1 of 1 records" inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I refresh the page
    When I click on "Menu" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    When I click on "Reset Table" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    Then I see "5" with page size dropdown at "---program:-:FlexTableEnhancedNotesId---"

######################Test suite: Action Config (Suite ID: 205379)########################


  @205386 @205390
  Scenario: Action- SPI- UI- Verify action is rendered on UI,
  Action- SPI- UI- Verify action name is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Button Help Text |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text |               | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    Then I see "Actions" in flex table header "---program:-:FlexTableEnhancedNotesId---"
    Then I see action name "Edit" itself get displayed inside tableid "---program:-:FlexTableEnhancedNotesId---"
    Then I see action name "Delete" itself get displayed inside tableid "---program:-:FlexTableEnhancedNotesId---"


  @205399
  Scenario: Action- SPI- UI- Verify Button help text is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table            | Button Help Text | Edit              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue         | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Button Help Text | Test Button Help Text | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    And I hovering mouse on action "Edit" inside flex table
    Then I see action name "Test Button Help Text" itself get displayed on UI


  @205404 @205405 @205433 @205439
  Scenario: Action- SPI- UI- Verify Actions icons are rendered at expected positions,
  Action- SPI- UI- Verify Actions should be rendered as action name,
  Action- SPI- UI- Verify Actions are rendered at expected location,
  Action- SPI- UI- Verify if actions displayed on UI are following given sequence
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Flex Table Action     | Sequence         | 0                 | ApiGeneratedId:1 |
      | Flex Table            | Button Help Text |                   | ApiGeneratedId:2 |
      | Flex Table            | Location         |                   | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Sequence         | 0             | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Button Help Text |               | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Location         | Row           | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see "Edit" row action Button at position "1" inside tableid "---program:-:FlexTableEnhancedNotesId---"


  @205436
  Scenario: Action- SPI- UI- Verify action rendered as per expected ‘Header Action Display Type’
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row               | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior            | EditRecord        | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Header Action Display Type |                   | RecipientGrantNotes | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Location                   | Row           | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Header Action Display Type | Button        | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior            | EditRecord    | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:FlexTableEnhancedNotesId---" panel
    Then I see "Edit" row action Button at position "1" inside tableid "---program:-:FlexTableEnhancedNotesId---"

  @205442
  Scenario: Action- SPI- UI- Verify when Action behavior is ‘Open in same window’ action should be performed in same window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? |                   | RecipientGrantNotes | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | SameWindow    | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Edit" icon for "Lisa Mitchell" inside table
    Then I see no new tab is opened

  @205458
  Scenario: Action- SPI- UI- Verify when Action behavior is ‘Open in new window’ action should be performed in same window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? |                   | RecipientGrantNotes | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewWindow     | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Edit" icon for "Lisa Mitchell" inside table
    Then I see no new tab is opened

  @205464 @205491
  Scenario: Action- SPI- UI - Verify Confirmation window is getting displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    And I click on top right button "Add" in flex table with id "---program:-:FlexTableEnhancedNotesId---"
    And I enter value "Test Notes" into field "Title"
    And I enter value "Chrome" into field "Body"
    When I click on top right button "Save" in flex table with id "---program:-:FlexTableEnhancedNotesId---"
    When I perform quick search for "Test Notes" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Delete" icon for "Test Notes" inside table without accept popup
    Then I see confirmation box with body "Do you want to delete? Once it is deleted it cannot be restored." is displayed

  @205494
  Scenario: Action- SPI- UI- Verify ‘Modal title’ is displaying correctly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table Action     | Action Behavior       | EditRecord        | ApiGeneratedId:0 |
      | Flex Table Action     | Modal Title           |                   | ApiGeneratedId:1 |
      | Flex Table Action     | Where To Open ?       |                   | ApiGeneratedId:2 |
      | Flex Table Action     | Show Confirmation Box | false             | ApiGeneratedId:3 |
      | Flex Table Action     | Confirmation Message  |                   | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue    | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Behavior       | EditRecord       | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Modal Title           | Automation Title | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Where To Open ?       | Modal            | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Show Confirmation Box | true             | RecipientGrantNotes | Name                      | Edit                       |
      | Flex Table Action     | Confirmation Message  |                  | RecipientGrantNotes | Name                      | Edit                       |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Lisa Mitchell" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Edit" icon for "Lisa Mitchell" inside table
    Then I see "Automation Title" opens in overLay window

   #####################Test suite: Export functionality (Suite ID: 207538)#########################

  @207543 @207544 @207546 @207547
  Scenario Outline:Download as PDF- Admin- Config- Verify when we get any quick search results and click on download as PDF, we should see all records in PDF,
  Download as PDF- PM- UI- Verify when we get any quick search results and click on download as PDF, we should not see all records in PDF
  Download as PDF- Admin- Config- Verify when we get any quick search results and click on download as PDF, not only search result should be downloaded in PDF
  Download as PDF- PM- UI- Verify when we get any quick search results and click on download as PDF,not only search result should be downloaded in PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    When I perform quick search for "{PatchFramework_recordUsed:EnhancedFlexTableRecord}"
    When I click on "View" icon for "{PatchFramework_recordUsed:EnhancedFlexTableRecord}" inside table
    When I navigate to "Overview" sub tab
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Lisa Mitchell" in the table "---program:-:associateProgramContactsTableId---"
    When I click on "Menu" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click on "Download as PDF" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    And I download the file
    Then I see "Lisa Mitchell" on page "1" of "govgrants" pdf file
    Examples:
      | Users |
    #  | Admin |
      | PM    |

  @207545 @207548
  Scenario: Download as PDF- SPI- UI- Verify when we get any quick search results and click on download as PDF, we should see all records in PDF
  Download as PDF - SPI- UI- Verify when we get any quick search results and click on download as PDF,not only search result should be downloaded in PDF
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (PDF) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF) | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Notes three" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Menu" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    When I click on "Download as PDF" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I download the file
    Then I see "Notes three" on page "1" of "govgrants" pdf file

  @207549 @207550 @207552 @207553
  Scenario Outline: Download as XL / CSV- Admin- Config- Verify when we get any quick search results and click on download as XL / CSV, we should see all records in file
  Download as XL / CSV- PM- UI- Verify when we get any quick search results and click on download as XL / CSV, we should see all records in file
  Download as XL / CSV- Admin- Config- Verify when we get any quick search results and click on download as XL / CSV,not only search result should be downloaded in file
  Download as XL / CSV- PM- UI- Verify when we get any quick search results and click on download as XL / CSV,not only search result should be downloaded in file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | DataTableEnhanceProgramContacts | Name                      |                            |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:programContactsTableId---"
    When I click "Associate" after selection of "Lisa Mitchell" in the table "---program:-:associateProgramContactsTableId---"
    When I perform quick search for "Lisa Mitchell" in "---program:-:DataTableEnhanceTableIDforContactsTable---" panel
    When I click on "Menu" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    When I click on "Download as PDF" button inside table id "---program:-:DataTableEnhanceTableIDforContactsTable---"
    And I download the file
    Then I see "Lisa Mitchell" on page "1" of "govgrants" pdf file

    Examples:
      | Users |
    #  | Admin |
      | PM    |

  @207551 @207554
  Scenario: Download as XL / CSV- SPI- UI- Verify when we get any quick search results and click on download as XL / CSV, we should see all records in file
  Download as XL / CSV- SPI- UI- Verify when we get any quick search results and click on download as XL / CSV,not only search result should be downloaded in file
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Export (XLS / CSV) | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField  | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (XLS / CSV) | true          | RecipientGrantNotes | Name                      |                            |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Grants" tab
    And I click toggle button to select "Grants - All"
    When I perform quick search for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}"
    When I click on "View" icon for "{PatchFramework_recordUsed:AppProForAnnouncementTesting}" inside table
    And I navigate to "Files" sub tab
    When I perform quick search for "Notes three" in "---program:-:FlexTableEnhancedNotesId---" panel
    When I click on "Menu" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    When I click on "Download as PDF" button inside table id "---program:-:FlexTableEnhancedNotesId---"
    And I download the file
    Then I see "Lisa Mitchell" on page "1" of "govgrants" pdf file

  #######################################################################################

  @499346
  Scenario Outline: 2.0- Data Table Enhanced- PM- User Interface Behavior Config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                  | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Page Size           | true              | ApiGeneratedId:0 |
      | Flex Table            | Enable Pagination          | true              | ApiGeneratedId:1 |
      | Flex Grid             | Default Page Size          | 5                 | ApiGeneratedId:2 |
      | Flex Table            | Enable Help                | true              | ApiGeneratedId:3 |
      | Flex Table            | Enable Total Records Count | true              | ApiGeneratedId:4 |
      | Flex Table            | Enable Filter              | true              | ApiGeneratedId:5 |
      | Flex Table            | Enable Quick Search        | true              | ApiGeneratedId:6 |
      | Flex Table            | Enable Auto Index          | false             | ApiGeneratedId:7 |
      | Flex Table            | Disable Menu               | false             | ApiGeneratedId:8 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                  | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Page Size           | true          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Pagination          | true          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Grid:General     | Default Page Size          | 5             | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Help                | true          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Total Records Count | true          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Filter              | true          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Quick Search        | true          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Auto Index          | true          | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Disable Menu               | false         | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    #Then I softly see "Contacts" page block displayed
    Then I softly see "#" in enhanced flex grid header "---program:-:programContactsTableId---"
    Then I softly see quick search inside table id "---program:-:contactsTableId---"
    Then I softly see Advance Filter box is displayed inside table id "---program:-:contactsTableId---" in flex table
    Then I softly see "Menu" action is displayed at the "---program:-:contactsTableId---" modal
    Then I softly see Total Records count "Total Records:" in table name "---program:-:contactsTableId---"
    Then I softly see table contains "Showing 1 to 5" inside table id "---program:-:contactsTableId---"
    Then I softly see pagination is displayed with "Page 1 of" inside table id "---program:-:contactsTableId---"
    Then I softly see "Menu" action is displayed at the "---program:-:contactsTableId---" modal
    And I pause execution for "5" seconds
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Flex Table            | Disable Menu | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Disable Menu | true          | DataTableEnhanceProgramContacts | Name                      |                            |
    And I refresh the page
    Then I do not see "Menu" action is displayed at the "---program:-:contactsTableId---" modal

    Examples:
      | User |
      #| ADMIN |
      | PM   |

  @499349
  Scenario Outline: 2.0- Data Table Enhanced- PM- Information, SOQL config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue                                               | filterId         |
      | Flex Table            | Header             | Contacts                                                        | ApiGeneratedId:0 |
      | Flex Table            | Header Help Text   | State or funding organization contacts for applicants to refer. | ApiGeneratedId:1 |
      | Flex Table:General    | Header Instruction |                                                                 | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue                                                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Header             | Contacts Test                                                   | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Header Help Text   | State or funding organization contacts for applicants to refer. | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Header Instruction | Test Automation Header Instruction                              | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    Then I see "Contacts Test" page block displayed
    Then I see "Test Automation Header Instruction" shown as header instruction text for tableId "---program:-:contactsTableId---"
    And I pause execution for "4" seconds
    When I hovering mouse on help text "Contacts Test" icon
    And I pause execution for "3" seconds
    Then I softly see "State or funding organization contacts for applicants to refer." shown as help text

    Examples:
      | User |
      #| ADMIN |
      | PM   |

  @499353
  Scenario Outline: 3.0- Data Table Enhanced- PM- Export Setting, Record Selection
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                        | fieldOrignalValue                      | filterId         |
      | Flex Table            | Enable Export (PDF)              | true                                   | ApiGeneratedId:0 |
      | Flex Table            | Enable Export (XLS / CSV)        | true                                   | ApiGeneratedId:1 |
      | Flex Table:General    | Enable Record Selection          | true                                   | ApiGeneratedId:2 |
      | Flex Table:General    | Record Selection Column Position | left                                   | ApiGeneratedId:3 |
      | Flex Table            | Display Field Names              | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                        | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Export (PDF)              | true                                   | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Export (XLS / CSV)        | true                                   | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Enable Record Selection          | true                                   | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Record Selection Column Position | left                                   | DataTableEnhanceProgramContacts | Name                      |                            |
      | Flex Table:General    | Display Field Names              | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts | Name                      |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
    #Then I softly see "Contacts" page block displayed
    Then I see "Select All Check Box" displayed inside table id "---program:-:contactsTableId---"
    Then I see "Menu" action is displayed at the "---program:-:contactsTableId---" modal
    And I click on "Menu" button inside table id "---program:-:contactsTableId---"
    Then I softly see "Download as PDF" button is displayed
    Then I softly see "Download as XLS" button is displayed

    Examples:
      | User |
      #| ADMIN |
      | PM   |

  @499355
  Scenario Outline: 3.0- Data Table Enhanced- PM- Numeric Data Type Fields- Flex Table Detail Config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                      | filterId         |
      | Page Block            | Is Active             | true                                   | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Flex Table List       | Enable Row Grouping   | false                                  | ApiGeneratedId:2 |
      | Flex Table List       | Enable Sub Total      | false                                  | ApiGeneratedId:3 |
      | Flex Table List       | Enable Over All Total | false                                  | ApiGeneratedId:4 |
      | Flex Table List       | Hide Grouping Column  | false                                  | ApiGeneratedId:5 |
      | Flex Table List       | Formula               |                                        | ApiGeneratedId:6 |
      | Flex Table List       | Sub Total Label       |                                        | ApiGeneratedId:7 |
      | Flex Table List       | Help Text             | Help Data                              | ApiGeneratedId:8 |
      | Flex Table List       | Field Label Override  |                                        | ApiGeneratedId:9 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName             | fieldNewValue                                                                       | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Page Block:Page Block Detail | Is Active             | true                                                                                | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock}  |
      | Flex Table:General           | Display Field Names   | ProjectRole__c,Contact__c,Contact__r.Email,BaseSalary__c,Contact__r.Organization__c | DataTableEnhanceProgramContacts |                           |                                      |
      | Flex Table List              | Enable Row Grouping   | true                                                                                | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table List              | Enable Sub Total      | true                                                                                | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table List              | Enable Over All Total | true                                                                                | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table List              | Hide Grouping Column  | false                                                                               | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table List              | Formula               | {CommonConfigFileTest:Formula}                                                      | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table List              | Sub Total Label       | Sub Base Salary                                                                     | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table List              | Help Text             | Help Data                                                                           | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table List              | Field Label Override  | Base Salary                                                                         | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
    Then I softly see "Sub Base Salary-BaseSalary : -" inside rows of enhanced grid id "---program:-:contactsTableId---"
    When I hovering mouse on help text icon inside page block detail "Base Salary"
    And I pause execution for "2" seconds
    Then I softly see "Help Data" shown as help text
    Examples:
      | User |
      #| ADMIN |
      | PM   |

  @499486
  Scenario Outline: 3.0- Data Table Enhanced- PM- Lookup, Picklist Data Type Fields- Flex Table Detail Config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue                      | filterId          |
      | Page Block            | Is Active            | true                                   | ApiGeneratedId:0  |
      | Flex Table            | Display Field Names  | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1  |
      | Flex Table List       | Enable Row Grouping  | false                                  | ApiGeneratedId:2  |
      | Flex Table List       | Hide Grouping Column | false                                  | ApiGeneratedId:4  |
      | Flex Table List       | Help Text            |                                        | ApiGeneratedId:5  |
      | Flex Table List       | Field Label Override |                                        | ApiGeneratedId:6  |
      | Flex Table List       | Enable Row Grouping  | false                                  | ApiGeneratedId:7  |
      | Flex Table List       | Hide Grouping Column | false                                  | ApiGeneratedId:8  |
      | Flex Table List       | Help Text            |                                        | ApiGeneratedId:9  |
      | Flex Table List       | Field Label Override |                                        | ApiGeneratedId:10 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Page Block:Page Block Detail | Is Active            | true                                   | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock}   |
      | Flex Table:General           | Display Field Names  | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                                       |
      | Flex Table List              | Enable Row Grouping  | false                                  | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Contact__c}     |
      | Flex Table List              | Hide Grouping Column | false                                  | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Contact__c}     |
      | Flex Table List              | Help Text            | Help Name                              | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Contact__c}     |
      | Flex Table List              | Field Label Override | Name                                   | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Contact__c}     |
      | Flex Table List              | Enable Row Grouping  | true                                   | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
      | Flex Table List              | Hide Grouping Column | false                                  | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
      | Flex Table List              | Help Text            | Help Project Role                      | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
      | Flex Table List              | Field Label Override | Project Role                           | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
    #LookupFiled
    #Then I softly see row grouping for field "Contact__c" with group header "Base Salary : $0" and total value "$0.00"
    Then I see column header "Name" displayed in tableId "---program:-:contactsTableId---"
    And I hovering mouse on help text icon inside "Name" for flex table column
    And I pause execution for "2" seconds
    Then I softly see "Help Name" shown as help text
    #PicklistField
    Then I softly see "Project Role :" inside rows of enhanced grid id "---program:-:contactsTableId---"
    Then I see column header "Project Role" displayed in tableId "---program:-:contactsTableId---"
    And I hovering mouse on help text icon inside "Project Role" for flex table column
    And I pause execution for "2" seconds
    Then I softly see "Help Project Role" shown as help text
    And I hovering mouse on help text icon inside "Name" for flex table column
    And I pause execution for "2" seconds
    Then I softly see "Help Name" shown as help text
    #PicklistField
    Then I softly see "Project Role :" inside rows of enhanced grid id "---program:-:contactsTableId---"
    Then I see column header "Project Role" displayed in tableId "---program:-:contactsTableId---"
    And I hovering mouse on help text icon inside "Project Role" for flex table column
    And I pause execution for "2" seconds
    Then I softly see "Help Project Role" shown as help text

    Examples:
      | User |
      | PM   |

  @499490
  Scenario Outline: 3.0- Data Table Enhanced- PM- Checkbox, Email, URL Data Type Fields- Flex Table Detail Config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue                      | filterId          |
      | Page Block            | Is Active            | true                                   | ApiGeneratedId:0  |
      | Flex Table            | Display Field Names  | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1  |
      | Flex Table List       | Enable Row Grouping  | false                                  | ApiGeneratedId:2  |
      | Flex Table List       | Hide Grouping Column | false                                  | ApiGeneratedId:3  |
      | Flex Table List       | Help Text            |                                        | ApiGeneratedId:4  |
      | Flex Table List       | Field Label Override |                                        | ApiGeneratedId:5  |
      | Flex Table List       | Enable Row Grouping  | false                                  | ApiGeneratedId:6  |
      | Flex Table List       | Hide Grouping Column | false                                  | ApiGeneratedId:7  |
      | Flex Table List       | Help Text            |                                        | ApiGeneratedId:8  |
      | Flex Table List       | Field Label Override |                                        | ApiGeneratedId:9  |
      | Flex Table            | Display Field Names  | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:10 |
      | Flex Table List       | Enable Row Grouping  | false                                  | ApiGeneratedId:11 |
      | Flex Table List       | Hide Grouping Column | false                                  | ApiGeneratedId:12 |
      | Flex Table List       | Help Text            |                                        | ApiGeneratedId:13 |
      | Flex Table List       | Field Label Override |                                        | ApiGeneratedId:14 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                                 | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue             |
      | Page Block:Page Block Detail | Is Active            | true                                                                          | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock}    |
      | Flex Table:General           | Display Field Names  | {CommonConfigFileTest:ContactTableDFN},URL__c,IsKeyContact__c,ContactEmail__c | DataTableEnhanceProgramContacts |                           |                                        |
      | Flex Table List              | Enable Row Grouping  | true                                                                          | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:IsKeyContact__c} |
      | Flex Table List              | Hide Grouping Column | true                                                                          | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:IsKeyContact__c} |
      | Flex Table List              | Help Text            |                                                                               | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:IsKeyContact__c} |
      | Flex Table List              | Field Label Override |                                                                               | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:IsKeyContact__c} |
      | Flex Table List              | Enable Row Grouping  | true                                                                          | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Email}           |
      | Flex Table List              | Hide Grouping Column | false                                                                         | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Email}           |
      | Flex Table List              | Help Text            | Help Email                                                                    | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Email}           |
      | Flex Table List              | Field Label Override | Email Test                                                                    | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Email}           |
      | Flex Table:General           | Display Field Names  | {CommonConfigFileTest:ContactTableDFN},URL__c,IsKeyContact__c,ContactEmail__c | DataTableEnhanceProgramContacts |                           |                                        |
      | Flex Table List              | Enable Row Grouping  | true                                                                          | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:URL__c}          |
      | Flex Table List              | Hide Grouping Column | false                                                                         | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:URL__c}          |
      | Flex Table List              | Help Text            | Help URL                                                                      | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:URL__c}          |
      | Flex Table List              | Field Label Override | URL                                                                           | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:URL__c}          |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
    #CheckBoxField
    Then I softly see "Is Key Contact :" inside rows of enhanced grid id "---program:-:contactsTableId---"
    Then I softly do not see column header "Is Key Contact" displayed in tableId "---program:-:contactsTableId---"
      #EmailField
    Then I softly see "Email : -" inside rows of enhanced grid id "---program:-:contactsTableId---"
    Then I softly see column header "Email" displayed in tableId "---program:-:contactsTableId---"
    And I hovering mouse on help text icon inside "Email" for flex table column
    And I pause execution for "2" seconds
    Then I softly see "Help Email" shown as help text
      #URLFiled
    Then I softly see "URL : -" inside rows of enhanced grid id "---program:-:contactsTableId---"
    Then I see column header "URL" displayed in tableId "---program:-:contactsTableId---"
    And I hovering mouse on help text icon inside "URL" for flex table column
    And I pause execution for "2" seconds
    Then I softly see "Help URL" shown as help text

    Examples:
      | User |
      | PM   |

  @499492
  Scenario Outline:3.0- Data Table Enhanced- PM-  Standard and Text Data Type Fields- Flex Table Detail Config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue                      | filterId         |
      | Page Block            | Is Active            | true                                   | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names  | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Flex Table List       | Enable Row Grouping  | false                                  | ApiGeneratedId:2 |
      | Flex Table List       | Hide Grouping Column | false                                  | ApiGeneratedId:4 |
      | Flex Table List       | Help Text            |                                        | ApiGeneratedId:5 |
      | Flex Table List       | Field Label Override |                                        | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                               | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block:Page Block Detail | Is Active            | true                                        | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock} |
      | Flex Table:General           | Display Field Names  | {CommonConfigFileTest:ContactTableDFN},Name | DataTableEnhanceProgramContacts |                           |                                     |
      | Flex Table List              | Enable Row Grouping  | true                                        | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Name}         |
      | Flex Table List              | Hide Grouping Column | false                                       | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Name}         |
      | Flex Table List              | Help Text            | Help Key Contacts Name                      | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Name}         |
      | Flex Table List              | Field Label Override | Key Contacts Name                           | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Name}         |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
     #Standard/TextDataTypeField
    Then I softly see "Key Contacts Name :" inside rows of enhanced grid id "---program:-:contactsTableId---"
    Then I see column header "Key Contacts Name" displayed in tableId "---program:-:contactsTableId---"
    And I hovering mouse on help text icon inside "Key Contacts Name" for flex table column
    And I pause execution for "2" seconds
    Then I softly see "Help Key Contacts Name" shown as help text

    Examples:
      | User |
      #| ADMIN |
      | PM   |

  @499493
  Scenario Outline: 3.0- Data Table Enhanced- PM-  Date and Date & Time Data Type Fields- Flex Table Detail Config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue                      | filterId          |
      | Page Block            | Is Active            | true                                   | ApiGeneratedId:0  |
      | Flex Table            | Display Field Names  | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1  |
      | Flex Table List       | Enable Row Grouping  | false                                  | ApiGeneratedId:2  |
      | Flex Table List       | Hide Grouping Column | false                                  | ApiGeneratedId:3  |
      | Flex Table List       | Help Text            |                                        | ApiGeneratedId:4  |
      | Flex Table List       | Field Label Override |                                        | ApiGeneratedId:5  |
      | Flex Table List       | Enable Row Grouping  | false                                  | ApiGeneratedId:6  |
      | Flex Table List       | Hide Grouping Column | false                                  | ApiGeneratedId:7  |
      | Flex Table List       | Help Text            |                                        | ApiGeneratedId:8  |
      | Flex Table List       | Field Label Override |                                        | ApiGeneratedId:9  |
      | Flex Table            | Display Field Names  | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:10 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block:Page Block Detail | Is Active            | true                                                            | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock}     |
      | Flex Table:General           | Display Field Names  | {CommonConfigFileTest:ContactTableDFN},Date__c,Date_And_Time__c | DataTableEnhanceProgramContacts |                           |                                         |
      | Flex Table List              | Enable Row Grouping  | true                                                            | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Date__c}          |
      | Flex Table List              | Hide Grouping Column | false                                                           | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Date__c}          |
      | Flex Table List              | Help Text            | Help Date                                                       | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Date__c}          |
      | Flex Table List              | Field Label Override | Date                                                            | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Date__c}          |
      | Flex Table List              | Enable Row Grouping  | true                                                            | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Date_And_Time__c} |
      | Flex Table List              | Hide Grouping Column | true                                                            | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Date_And_Time__c} |
      | Flex Table List              | Help Text            |                                                                 | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Date_And_Time__c} |
      | Flex Table List              | Field Label Override | Date/Time                                                       | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Date_And_Time__c} |
      | Flex Table:General           | Display Field Names  | {CommonConfigFileTest:ContactTableDFN},Date__c,Date_And_Time__c | DataTableEnhanceProgramContacts |                           |                                         |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
     #DateField
    Then I softly see "Date : -" inside rows of enhanced grid id "---program:-:contactsTableId---"
    Then I see column header "Date" displayed in tableId "---program:-:contactsTableId---"
    When I hovering mouse on help text icon inside page block detail "Date"
    And I pause execution for "2" seconds
    Then I softly see "Help Date" shown as help text
      #Date/TimeField
    Then I softly see "Date/Time : -" inside rows of enhanced grid id "---program:-:contactsTableId---"
    Then I softly do not see column header "Date/Time" displayed in tableId "---program:-:contactsTableId---"

    Examples:
      | User |
      #| ADMIN |
      | PM   |

  @499494
  Scenario Outline: 3.0- Data Table Enhanced- PM-  Phone and Email Data Type Fields- Flex Table Detail Config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue                      | filterId         |
      | Page Block            | Is Active            | true                                   | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names  | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Flex Table List       | Enable Row Grouping  | false                                  | ApiGeneratedId:2 |
      | Flex Table List       | Hide Grouping Column | false                                  | ApiGeneratedId:4 |
      | Flex Table List       | Help Text            |                                        | ApiGeneratedId:5 |
      | Flex Table List       | Field Label Override |                                        | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue             |
      | Page Block:Page Block Detail | Is Active            | true                                                   | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock}    |
      | Flex Table:General           | Display Field Names  | {CommonConfigFileTest:ContactTableDFN},Phone_Number__c | DataTableEnhanceProgramContacts |                           |                                        |
      | Flex Table List              | Enable Row Grouping  | true                                                   | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Phone_Number__c} |
      | Flex Table List              | Hide Grouping Column | false                                                  | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Phone_Number__c} |
      | Flex Table List              | Help Text            | Help Phone Number                                      | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Phone_Number__c} |
      | Flex Table List              | Field Label Override | Phone Number                                           | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Phone_Number__c} |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
     #PhonenumberField
    Then I softly see "Phone Number : -" inside rows of enhanced grid id "---program:-:contactsTableId---"
    Then I see column header "Phone Number" displayed in tableId "---program:-:contactsTableId---"
    When I hovering mouse on help text icon inside page block detail "Phone Number"
    And I pause execution for "2" seconds
    Then I softly see "Help Phone Number" shown as help text

    Examples:
      | User |
      | PM   |

  @499495
  Scenario Outline: 3.0- Data Table Enhanced- PM-  Formula and Multi-Picklist Data Type Fields- Flex Table Detail Config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName            | fieldOrignalValue                      | filterId          |
      | Page Block            | Is Active            | true                                   | ApiGeneratedId:0  |
      | Flex Table            | Display Field Names  | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1  |
      | Flex Table List       | Enable Row Grouping  | false                                  | ApiGeneratedId:2  |
      | Flex Table List       | Hide Grouping Column | false                                  | ApiGeneratedId:3  |
      | Flex Table List       | Help Text            |                                        | ApiGeneratedId:4  |
      | Flex Table List       | Field Label Override |                                        | ApiGeneratedId:5  |
      | Flex Table List       | Enable Row Grouping  | false                                  | ApiGeneratedId:6  |
      | Flex Table List       | Hide Grouping Column | false                                  | ApiGeneratedId:7  |
      | Flex Table List       | Help Text            |                                        | ApiGeneratedId:8  |
      | Flex Table List       | Field Label Override |                                        | ApiGeneratedId:9  |
      | Flex Table            | Display Field Names  | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:10 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName            | fieldNewValue                                                        | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue                   |
      | Page Block:Page Block Detail | Is Active            | true                                                                 | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock}          |
      | Flex Table:General           | Display Field Names  | {CommonConfigFileTest:ContactTableDFN},City__c,Test_Multipicklist__c | DataTableEnhanceProgramContacts |                           |                                              |
      | Flex Table List              | Enable Row Grouping  | true                                                                 | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:City__c}               |
      | Flex Table List              | Hide Grouping Column | false                                                                | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:City__c}               |
      | Flex Table List              | Help Text            | Help City                                                            | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:City__c}               |
      | Flex Table List              | Field Label Override | City                                                                 | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:City__c}               |
      | Flex Table List              | Enable Row Grouping  | false                                                                | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Test_Multipicklist__c} |
      | Flex Table List              | Hide Grouping Column | false                                                                | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Test_Multipicklist__c} |
      | Flex Table List              | Help Text            | Help Multipicklist                                                   | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Test_Multipicklist__c} |
      | Flex Table List              | Field Label Override | Multipicklist                                                        | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:Test_Multipicklist__c} |
      | Flex Table:General           | Display Field Names  | {CommonConfigFileTest:ContactTableDFN},City__c,Test_Multipicklist__c | DataTableEnhanceProgramContacts |                           |                                              |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
     #FormulaField
    Then I softly see "City :" inside rows of enhanced grid id "---program:-:contactsTableId---"
    Then I see column header "City" displayed in tableId "---program:-:contactsTableId---"
    When I hovering mouse on help text icon inside page block detail "City"
    And I pause execution for "2" seconds
    Then I softly see "Help City" shown as help text
      #MultipicklistField-rowgrouping is NA for this
    Then I softly see column header "Multipicklist" displayed in tableId "---program:-:contactsTableId---"
    When I hovering mouse on help text icon inside page block detail "Multipicklist"
    And I pause execution for "2" seconds
    Then I softly see "Help Multipicklist" shown as help text

    Examples:
      | User |
      | PM   |

###################### Quick Search For All Data Types ############################
  @499820
  Scenario Outline: 3.0- Data Table Enhanced- PM-  Quick Search Scenarios- Numeric Data Type
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Page Block            | Is Active           | true                                   | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Flex Table            | Enable Quick Search | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName           | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block:Page Block Detail | Is Active           | true                                   | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock} |
      | Flex Table:General           | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                                     |
      | Flex Table:General           | Enable Quick Search | true                                   | DataTableEnhanceProgramContacts |                           |                                     |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
   # When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I select value inside table "---program:-:associateContactsTableId---" is "All"
    And I pause execution for "4" seconds
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
    And I perform quick search for "Automation PM1" in "---program:-:contactsTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:contactsTableId---" by clicking "Edit" :
      | Name           | BaseSalary |
      | Automation PM1 | 34500.56   |
    And I pause execution for "5" seconds
    #Search Exact Match
    And I perform quick search for "34500.56" in "---program:-:contactsTableId---" panel
    Then I softly see value "$34,500.56" for title "BaseSalary" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #Search Partial Match
    And I perform quick search for "500" in "---program:-:contactsTableId---" panel
    Then I softly see value "$34,500.56" for title "BaseSalary" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #Search Decimal Value
    And I perform quick search for ".5" in "---program:-:contactsTableId---" panel
    Then I softly see value "$34,500.56" for title "BaseSalary" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #Search with Incorrect Data
    And I perform quick search for "089" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #Search with Extra Spaces
    And I perform quick search for "   1 23" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #Search with Special Characters
    And I perform quick search for "!#%" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #Search with alphanumeric value
    And I perform quick search for "123ahkl" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"

    Examples:
      | User |
      #| ADMIN |
      | PM   |

  @499834
  Scenario Outline: 3.0- Data Table Enhanced- PM-  Quick Search Scenarios- Picklist, Lookup field Data Types
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Page Block            | Is Active           | true                                   | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName           | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block:Page Block Detail | Is Active           | true                                   | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock} |
      | Flex Table:General           | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                                     |
      | Flex Table:General           | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                                     |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I select value inside table "---program:-:associateContactsTableId---" is "All"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "4" seconds
    And I perform quick search for "Automation PM1" in "---program:-:contactsTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:contactsTableId---" by clicking "Edit" :
      | Name           | Project Role         |
      | Automation PM1 | Authorized Signatory |
    And I pause execution for "5" seconds
   #LookupFiled-Search Exact Match
    And I perform quick search for "Automation PM1" in "---program:-:contactsTableId---" panel
    Then I softly see value "Automation PM1" for title "Name" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
       #LookupFiled-Search Partial Match
    And I perform quick search for "Automation" in "---program:-:contactsTableId---" panel
    Then I softly see value "Automation PM1" for title "Name" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
     #LookupFiled-Search with Incorrect Data
    And I perform quick search for "SARAn" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #LookupFiled-Search with Extra Spaces
    And I perform quick search for "   Davi d" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #LookupFiled-Search with Special Characters
    And I perform quick search for "!#%" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #LookupFiled-Search with alphanumeric value
    And I perform quick search for "123Sarah" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
      #PicklistField-Search Exact Match
    And I perform quick search for "Authorized Signatory" in "---program:-:contactsTableId---" panel
    Then I softly see value "Authorized Signatory" for title "Project Role" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
#   #PicklistField-Search Partial Match #Not Supported
    And I perform quick search for "Signatory" in "---program:-:contactsTableId---" panel
    Then I softly see value "Authorized Signatory" for title "Project Role" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
     #PicklistField-Search with Incorrect Data
    And I perform quick search for "Signatury" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #PicklistField-Search with Extra Spaces
    And I perform quick search for "   Sign n" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #PicklistField-Search with Special Characters
    And I perform quick search for "!#%@" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #PicklistField-Search with alphanumeric value
    And I perform quick search for "123Auth" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"

    Examples:
      | User |
      #| ADMIN |
      | PM   |

  @500124
  Scenario Outline: 3.0- Data Table Enhanced- PM-  Quick Search Scenarios- Checkbox, Email, URL data type fields
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Page Block            | Is Active           | true                                   | ApiGeneratedId:0 |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName           | fieldNewValue                                                 | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block:Page Block Detail | Is Active           | true                                                          | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock} |
      | Flex Table:General           | Display Field Names | {CommonConfigFileTest:ContactTableDFN},URL__c,IsKeyContact__c | DataTableEnhanceProgramContacts |                           |                                     |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I select value inside table "---program:-:associateContactsTableId---" is "All"
    And I pause execution for "3" seconds
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
    #Email-Search Exact Match
    And I perform quick search for "sarahdavid345@gmail.com" in "---program:-:contactsTableId---" panel
    Then I softly see value "sarahdavid345@gmail.com" for title "Email" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
       #EmailFiled-Search Partial Match
    And I perform quick search for "sarah" in "---program:-:contactsTableId---" panel
    Then I softly see value "sarahdavid345@gmail.com" for title "Email" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
     #EmailFiled-Search with Incorrect Data
    And I perform quick search for "SARAn" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #EmailFiled-Search with Extra Spaces
    And I perform quick search for "   David 34" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #EmailFiled-Search with Special Characters
    And I perform quick search for "5@gma" in "---program:-:contactsTableId---" panel
    Then I softly see value "sarahdavid345@gmail.com" for title "Email" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #EmailField-Search with alphanumeric value
    And I perform quick search for "vid345" in "---program:-:contactsTableId---" panel
    Then I softly see value "sarahdavid345@gmail.com" for title "Email" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
      #URL-Search Exact Match
    And I perform quick search for "Automation PM1" in "---program:-:contactsTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:contactsTableId---" by clicking "Edit" :
      | Name           | URL               |
      | Automation PM1 | www.microsoft.com |
    And I pause execution for "5" seconds
    And I perform quick search for "www.microsoft.com" in "---program:-:contactsTableId---" panel
    Then I softly see value "www.microsoft.com" for title "URL" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
   #URL-Search Partial Match
    And I perform quick search for "microsoft" in "---program:-:contactsTableId---" panel
    Then I softly see value "www.microsoft.com" for title "URL" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
     #URL-Search with Incorrect Data
    And I perform quick search for "wwww." in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #URLField-Search with Extra Spaces
    And I perform quick search for "   micro n" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #URLField-Search with Special Characters
    And I perform quick search for "!#%@" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #URLField-Search with alphanumeric value
    And I perform quick search for "123micro" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    #ChekboxField Search Exact Match
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I perform quick search for "Automation PM1" in "---program:-:contactsTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:contactsTableId---" by clicking "Edit" :
      | Name           | Is Key Contact |
      | Automation PM1 | Checked        |
    And I pause execution for "5" seconds
    And I perform quick search for "True" in "---program:-:contactsTableId---" panel
    Then I softly see value "True" for title "Is Key Contact" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
   #Checkbox-Search Partial Match
    And I perform quick search for "fal" in "---program:-:contactsTableId---" panel
    Then I softly see value "false" for title "Is Key Contact" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
     #Checkbox-Search with Incorrect Data
    And I perform quick search for "truee" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #CheckboxField-Search with Extra Spaces
    And I perform quick search for "   false n" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"

    Examples:
      | User |
      #| ADMIN |
      | PM   |

  @500131
  Scenario Outline: 3.0- Data Table Enhanced- PM-  Quick Search Scenarios- Standard field and Text data type fields
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Page Block            | Is Active           | true                                   | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName           | fieldNewValue                                             | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block:Page Block Detail | Is Active           | true                                                      | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock} |
      | Flex Table:General           | Display Field Names | {CommonConfigFileTest:ContactTableDFN},CreatedBy,NSFID__c | DataTableEnhanceProgramContacts |                           |                                     |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I pause execution for "7" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    And I select value inside table "---program:-:associateContactsTableId---" is "All"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
     #StandardField-Search Exact Match
    And I perform quick search for "Automation PM" in "---program:-:contactsTableId---" panel
    Then I softly see value "Automation PM" for title "Created By ID" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
   #StandardField-Search Partial Match
    And I perform quick search for "mation PM" in "---program:-:contactsTableId---" panel
    Then I softly see value "Automation PM" for title "Created By ID" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
     #StandardField-Search with Incorrect Data
    And I perform quick search for "automatied" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #StandardField-Search with Extra Spaces
    And I perform quick search for "   matio n" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #StandardField-Search with Special Characters
    And I perform quick search for "!#%@" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #StandardField-Search with alphanumeric value
    And I perform quick search for "123auto" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    #TextField - Search Exact
    And I perform quick search for "Automation PM1" in "---program:-:contactsTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:contactsTableId---" by clicking "Edit" :
      | Name           | NSF ID    |
      | Automation PM1 | Test Data |
    And I pause execution for "5" seconds
    And I perform quick search for "Test Data" in "---program:-:contactsTableId---" panel
    Then I softly see value "Test Data" for title "NSF ID" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
   #TextField-Search Partial Match
    And I perform quick search for "st Data" in "---program:-:contactsTableId---" panel
    Then I softly see value "Test Data" for title "NSF ID" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
     #TextField-Search with Incorrect Data
    And I perform quick search for "tested" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #TextField-Search with Extra Spaces
    And I perform quick search for "   test n" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #TextField-Search with Special Characters
    And I perform quick search for "!#%@" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
    #TextField-Search with alphanumeric value
    And I perform quick search for "123data" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"

    Examples:
      | User |
      #| ADMIN |
      | PM   |

  @500135
  Scenario Outline: 3.0- Data Table Enhanced- PM-  Quick Search Scenarios-  Date and Date & Time data type fields
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Page Block            | Is Active           | true                                   | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName           | fieldNewValue                                                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue          |
      | Page Block:Page Block Detail | Is Active           | true                                                            | Grantor State Program           | Name                      | {CommonConfigFileTest:ContactBlock} |
      | Flex Table:General           | Display Field Names | {CommonConfigFileTest:ContactTableDFN},Date__c,Date_And_Time__c | DataTableEnhanceProgramContacts |                           |                                     |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of all records in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
    And I perform quick search for "Automation PM1" in "---program:-:contactsTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:contactsTableId---" by clicking "Edit" :
      | Name           | Date      |
      | Automation PM1 | 3/28/2025 |
    And I pause execution for "5" seconds
     #DateField-Search Exact Match
    And I perform quick search for "3/28/2025" in "---program:-:contactsTableId---" panel
    Then I softly see value "3/28/2025" for title "Date" inside table "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
   #DateField-Search Partial Match
    And I perform quick search for "3/" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
     #DateField-Search with Incorrect Data
    And I perform quick search for "3/30/2029" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
     #DateNTimeField-Search Partial Match
    And I perform quick search for "3/28/2026" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
    When I click on "Menu" button inside table id "---program:-:contactsTableId---"
    And I select "Reset Table" from parallel lines dropdown of "Contacts"
    And I pause execution for "5" seconds
     #DateNTimeField-Search with Incorrect Data
    And I perform quick search for "05:43 PM" in "---program:-:contactsTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:contactsTableId---"
  #DateNTimeField-Search Exact Match - if failed check this manually
    And I perform quick search for "Automation PM1" in "---program:-:contactsTableId---" panel
    And I edit the following rows inline in flex table with id "---program:-:contactsTableId---" by clicking "Edit" :
      | Name           | Date And Time       |
      | Automation PM1 | 3/28/2025, 05:43 AM |
    And I pause execution for "5" seconds
    And I perform quick search for "3/28/2025, 05:43 AM" in "---program:-:contactsTableId---" panel
    Then I softly see value "3/28/2025, 05:43 AM" for title "Date And Time" inside table "---program:-:contactsTableId---"

    Examples:
      | User |
      #| ADMIN |
      | PM   |

################ Data Table Enahnced - Actions ######################
  @500656
  Scenario Outline: 3.0- Data Table Enhanced- PM- Actions- Edit
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                | fieldOrignalValue                      | filterId         |
    #  | Flex Table Action     | Is Active                | true              | ApiGeneratedId:0 |
      | Flex Table Action     | Action Name              | Edit                                   | ApiGeneratedId:1 |
      | Flex Table Action     | Standard Action          | Edit                                   | ApiGeneratedId:2 |
      | Flex Table Action     | Location                 | Row                                    | ApiGeneratedId:3 |
      | Flex Table Action     | Single Row Edit Behavior | Inline                                 | ApiGeneratedId:4 |
      | Flex Table Action     | Action Behavior          | EditRecord                             | ApiGeneratedId:5 |
      | Flex Table            | Display Field Names      | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
   #   | Flex Table Action     | Is Active                | true          | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Action Name              | Edit                                   | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Standard Action          | Edit                                   | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Location                 | Row                                    | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Single Row Edit Behavior | Inline                                 | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Action Behavior          | EditRecord                             | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table:General    | Display Field Names      | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "10" seconds
    Then I softly can see row level action button "View" against "Automation PM" in flex table with id "---program:-:contactsTableId---"
    Then I softly can see row level action button "Edit" against "Automation PM" in flex table with id "---program:-:contactsTableId---"
    Then I softly can see row level action button "Remove" against "Automation PM" in flex table with id "---program:-:contactsTableId---"
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I see field "ProjectRole__c" is editable field
    Then I see field "BaseSalary__c" is editable field

    Examples:
      | User |
      #| ADMIN |
      | PM   |

  @500657
  Scenario Outline:  3.0- Data Table Enhanced- PM- Actions- View
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
    #  | Flex Table Action     | Is Active                | true              | ApiGeneratedId:0 |
      | Flex Table Action     | Action Name         | View                                   | ApiGeneratedId:1 |
      | Flex Table Action     | Standard Action     | View                                   | ApiGeneratedId:2 |
      | Flex Table Action     | Location            | Row                                    | ApiGeneratedId:3 |
      | Flex Table Action     | Where To Open ?     | SameWindow                             | ApiGeneratedId:4 |
      | Flex Table Action     | Action Behavior     | OpenURL                                | ApiGeneratedId:5 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
   #   | Flex Table Action     | Is Active                | true          | DataTableEnhanceProgramContacts | Name                      | Edit                       |
      | Flex Table Action     | Action Name         | View                                   | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Standard Action     | View                                   | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Location            | Row                                    | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Where To Open ?     | SameWindow                             | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Action Behavior     | OpenURL                                | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "4" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
    Then I softly can see row level action button "View" against "Automation PM" in flex table with id "---program:-:contactsTableId---"
    #Where to Open- Same Window
    And I click on "View" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see "Contact Information" page block displayed
    And I pause execution for "5" seconds
    And I click on back arrow
    #Where to Open- New Tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table Action     | Where To Open ? | SameWindow        | ApiGeneratedId:0 |
      | Flex Table Action     | Action Behavior | OpenURL           | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewTab        | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Action Behavior | OpenURL       | DataTableEnhanceProgramContacts | Name                      | View                       |
    And I refresh the page
    And I click on "View" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see new tab is opened
    Then I softly see "Contact Information" page block displayed
    And I switch to tab number "1"
    And I switch to parent tab
    And I pause execution for "4" seconds
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table Action     | Where To Open ? | SameWindow        | ApiGeneratedId:0 |
      | Flex Table Action     | Action Behavior | OpenURL           | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | Modal         | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Action Behavior | OpenURL       | DataTableEnhanceProgramContacts | Name                      | View                       |
    And I refresh the page
    And I click on "View" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    #Where to Open- Modal
    #Then I see "Create Contact" opens in overLay window
    Then I softly see "Contact Information" page block displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table Action     | Where To Open ? | SameWindow        | ApiGeneratedId:0 |
      | Flex Table Action     | Action Behavior | OpenURL           | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewWindow     | DataTableEnhanceProgramContacts | Name                      | View                       |
      | Flex Table Action     | Action Behavior | OpenURL       | DataTableEnhanceProgramContacts | Name                      | View                       |
    And I refresh the page
    #Where to Open- New Window
    And I click on "View" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see new tab is opened
    Then I softly see "Contact Information" page block displayed

    Examples:
      | User |
      | PM   |

  @500658
  Scenario Outline:  3.0- Data Table Enhanced- PM- Actions- Remove
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table Action     | Action Name         | Remove                                 | ApiGeneratedId:0 |
      | Flex Table Action     | Standard Action     | Delete                                 | ApiGeneratedId:1 |
      | Flex Table Action     | Location            | Row                                    | ApiGeneratedId:2 |
      | Flex Table Action     | Refresh Behavior    | Refresh the grid                       | ApiGeneratedId:3 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action Name         | Remove                                 | DataTableEnhanceProgramContacts | Name                      | Remove                     |
      | Flex Table Action     | Standard Action     | Delete                                 | DataTableEnhanceProgramContacts | Name                      | Remove                     |
      | Flex Table Action     | Location            | Row                                    | DataTableEnhanceProgramContacts | Name                      | Remove                     |
      | Flex Table Action     | Refresh Behavior    | Refresh the grid                       | DataTableEnhanceProgramContacts | Name                      | Remove                     |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation EXE" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation FD" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation FO" in the table "---program:-:associateContactsTableId---"
    And I pause execution for "5" seconds
    Then I softly can see row level action button "Remove" against "Automation PM" in flex table with id "---program:-:contactsTableId---"
    And I perform quick search for "Automation PM" in "---program:-:contactsTableId---" panel
    When I click on "Remove" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without accept popup
    Then I see "Yes" button is displayed on confirmation box
    Then I softly see confirmation box with body "This action will remove the record, Are you sure you want to remove?" is displayed
    And I click "Yes" on modal confirmation box
    Then I softly see the following message in the page details :
      | Record removed successfully. |
    Then I see table is refreshing
    And I pause execution for "5" seconds
    #Refresh the entire page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table Action     | Refresh Behavior    | Refresh the grid                       | ApiGeneratedId:4 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior    | Refresh the entire page                | DataTableEnhanceProgramContacts | Name                      | Remove                     |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                            |
    And I refresh the page
    And I pause execution for "4" seconds
    And I perform quick search for "Automation EXE" in "---program:-:contactsTableId---" panel
    And I click on "Remove" icon for "Automation EXE" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    And I click "Yes" on modal confirmation box
    Then I see entire page is refreshing
    And I pause execution for "5" seconds
    #Refresh all flextables
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table Action     | Refresh Behavior    | Refresh the grid                       | ApiGeneratedId:4 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Refresh Behavior    | Refresh all flextables                 | DataTableEnhanceProgramContacts | Name                      | Remove                     |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                            |
    And I refresh the page
    And I pause execution for "4" seconds
    And I perform quick search for "Automation FD" in "---program:-:contactsTableId---" panel
    And I click on "Remove" icon for "Automation FD" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    And I click "Yes" on modal confirmation box
    Then I see table is refreshing

    Examples:
      | User |
      | PM   |

  @500659
  Scenario Outline: 3.0- Data Table Enhanced- PM- Actions- New
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
     # | Flex Table Action     | Action Name         | New                              | ApiGeneratedId:0 |
     # | Flex Table Action     | Standard Action  | New               | ApiGeneratedId:1 |
      | Flex Table Action     | Location         | Top               | ApiGeneratedId:2 |
      | Flex Table Action     | Modal Title      | Create Contact    | ApiGeneratedId:3 |
      | Flex Table Action     | Button Help Text | New               | ApiGeneratedId:4 |
      | Flex Table Action     | Where To Open ?  | Modal             | ApiGeneratedId:5 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
     # | Flex Table Action     | Action Name         | New                              | DataTableEnhanceProgramContacts | Name                      | New                     |
    #  | Flex Table Action     | Standard Action  | New            | DataTableEnhanceProgramContacts | Name                      | New                        |
      | Flex Table Action     | Location         | Top            | DataTableEnhanceProgramContacts | Name                      | New                        |
      | Flex Table Action     | Modal Title      | Create Contact | DataTableEnhanceProgramContacts | Name                      | New                        |
      | Flex Table Action     | Button Help Text | New            | DataTableEnhanceProgramContacts | Name                      | New                        |
      | Flex Table Action     | Where To Open ?  | Modal          | DataTableEnhanceProgramContacts | Name                      | New                        |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I click on top right button "New" in flex table with id "---program:-:contactsTableId---"
    Then I softly see "Create Contact" opens in overLay window

    Examples:
      | User |
      | PM   |

################### Advance Filter For All Data Type ##########
  @500166
  Scenario Outline:  3.0- Data Table Enhanced- PM- Advance Filter- Numeric Data Types
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                             | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN},NumberOfPersonnel__c,Percentage__c | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation EXE" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation FD" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation FO" in the table "---program:-:associateContactsTableId---"
    And I edit the following rows inline in flex table with id "---program:-:contactsTableId---" by clicking "Edit" :
      | Name           | BaseSalary | Number Of Personnel | Percentage |
      | Automation PM  | 1500       | 5                   | 45         |
      | Automation EXE | 100        | 23                  | 90         |
      | Automation FD  | 345        | 9                   | 12         |
      | Automation FO  | 1200       | 4                   | 67         |
    #Number Field
    And I pause execution for "5" seconds
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:contactsTableId---"
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Number Of Personnel | equals to | 5 |
    Then I softly see value "5" for title "Number Of Personnel" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Number Of Personnel | greater than | 5 |
    Then I softly see value "9" for title "Number Of Personnel" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "2" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Number Of Personnel | less than | 5 |
    Then I softly see value "4" for title "Number Of Personnel" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Number Of Personnel | greater than or equal to | 9 |
    Then I softly see value "9" for title "Number Of Personnel" inside table "---program:-:contactsTableId---"
    Then I softly see value "23" for title "Number Of Personnel" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Number Of Personnel | less than or equal to | 9 |
    Then I softly see value "9" for title "Number Of Personnel" inside table "---program:-:contactsTableId---"
    Then I softly see value "5" for title "Number Of Personnel" inside table "---program:-:contactsTableId---"
    #Currency Field - Base Salary
    And I pause execution for "5" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | BaseSalary | equals to | 345 |
    Then I softly see value "$345.00" for title "BaseSalary" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | BaseSalary | greater than | 345 |
    Then I softly see value "$1,500.00" for title "BaseSalary" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "2" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | BaseSalary | less than | 345 |
    Then I softly see value "$100.00" for title "BaseSalary" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | BaseSalary | greater than or equal to | 1200 |
    Then I softly see value "$1,200.00" for title "BaseSalary" inside table "---program:-:contactsTableId---"
    Then I softly see value "$1,500.00" for title "BaseSalary" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | BaseSalary | less than or equal to | 345 |
    Then I softly see value "$345.00" for title "BaseSalary" inside table "---program:-:contactsTableId---"
    Then I softly see value "$100.00" for title "BaseSalary" inside table "---program:-:contactsTableId---"
    #Percentage Field - Percentage
    And I pause execution for "5" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Percentage | equals to | 45 |
    Then I softly see value "45%" for title "Percentage" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Percentage | greater than | 45 |
    Then I softly see value "90%" for title "Percentage" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "2" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Percentage | less than | 45 |
    Then I softly see value "12%" for title "Percentage" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Percentage | greater than or equal to | 67 |
    Then I softly see value "67%" for title "Percentage" inside table "---program:-:contactsTableId---"
    Then I softly see value "90%" for title "Percentage" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Percentage | less than or equal to | 67 |
    Then I softly see value "67%" for title "Percentage" inside table "---program:-:contactsTableId---"
    Then I softly see value "34%" for title "Percentage" inside table "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

  @500431
  Scenario Outline: 3.0- Data Table Enhanced- PM- Advance Filter- Text Data Types
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue                      | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active           | false                                  | ApiGeneratedId:0 |
      | Page Block Config:Page Block Rule Detail | Is Active           | false                                  | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                   | ApiGeneratedId:2 |
      | Flex Table                               | Display Field Names | {CommonConfigFileTest:ProgramTableDFN} | ApiGeneratedId:4 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                                           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                         |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                                                    | Grantor State Program | Name                      | {CommonConfigFileTest:TextAreaField_Authorization} |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                                                    | Grantor State Program | Name                      | {CommonConfigFileTest:LongTextArea_ProjectGoals}   |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                                                    | Grantor State Program | Name                      | {CommonConfigFileTest:TextField_Abbreviation}      |
      | Flex Table:General                       | Display Field Names | {CommonConfigFileTest:ProgramTableDFN},ProjectGoals__c,Authorization__c,Abbreviation__c | Programs              |                           |                                                    |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - My Records"
    #Text Field
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:contactsTableId---"
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Abbreviation | contains | kd |
    Then I softly see value "as kd" for title "Abbreviation" inside table "---program:-:programsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Abbreviation | does not contains | tk |
    Then I softly do not see value "tk" for title "Abbreviation" inside table "---program:-:programsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Abbreviation | starts with | as |
    Then I softly see value "as kd" for title "Abbreviation" inside table "---program:-:programsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Abbreviation | ends with | kd |
    Then I softly see value "as kd" for title "Abbreviation" inside table "---program:-:programsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    #Text Area Field
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Authorization | contains | Focus |
    Then I softly see value "Authorization Runtime Focus Area" for title "Authorization" inside table "---program:-:programsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Authorization | does not contains | tk |
    Then I softly do not see value "tk" for title "Authorization" inside table "---program:-:programsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Authorization | starts with | Authorization |
    Then I softly see value "Authorization Runtime Focus Area" for title "Authorization" inside table "---program:-:programsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Authorization | ends with | Focus Area |
    Then I softly see value "Authorization Runtime Focus Area" for title "Authorization" inside table "---program:-:programsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    #Long Text Area Field
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Project Goals | contains | Vrushali |
    Then I softly see value "Vrushali Table Enhanced Check Goals" for title "Project Goals" inside table "---program:-:programsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Project Goals | does not contains | tk |
    Then I softly do not see value "tk" for title "Project Goals" inside table "---program:-:programsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Project Goals | starts with | Vrushali |
    Then I softly see value "Vrushali Table Enhanced Check Goals" for title "Project Goals" inside table "---program:-:programsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Project Goals | ends with | Goals |
    Then I softly see value "Vrushali Table Enhanced Check Goals" for title "Project Goals" inside table "---program:-:programsTableId---"

    Examples:
      | User |
      | PM   |

  @500453
  Scenario Outline: 3.0- Data Table Enhanced- PM- Advance Filter- Email, URL data type fields
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                 | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN},ContactEmail__c,URL__c | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    #Email Field
    And I pause execution for "5" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation EXE" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation FD" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation FO" in the table "---program:-:associateContactsTableId---"
    And I edit the following rows inline in flex table with id "---program:-:contactsTableId---" by clicking "Edit" :
      | Name           | Contact Email    | URL                           |
      | Automation PM  | vrush@gmail.com  | www.google.com                |
      | Automation EXE | exe@yopmail.com  | frwklwcaut.sandbox.lightning. |
      | Automation FD  | fd@reisystems.in | https://app.keka.com/         |
      | Automation FO  | fd@reisystems.in | https://jenkins.reisys.com/   |
    And I pause execution for "4" seconds
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:contactsTableId---"
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Contact Email | contains | com |
    Then I softly see value "vrush@gmail.com" for title "Contact Email" inside table "---program:-:contactsTableId---"
    Then I softly see value "exe@yopmail.com" for title "Contact Email" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Contact Email | does not contains | com |
    Then I softly see value "fd@reisystems.in" for title "Contact Email" inside table "---program:-:contactsTableId---"
    Then I softly see value "fo@outlook.co.in" for title "Contact Email" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Contact Email | starts with | vru |
    Then I softly do not see value "fd@reisystems.in" for title "Contact Email" inside table "---program:-:contactsTableId---"
    Then I softly see value "vrush@gmail.com" for title "Contact Email" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Contact Email | ends with | in |
    Then I softly see value "fd@reisystems.in" for title "Contact Email" inside table "---program:-:contactsTableId---"
    Then I softly do not see value "vrush@gmail.com" for title "Contact Email" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    #URL field
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | URL | contains | .com |
    Then I softly see value "www.google.com" for title "URL" inside table "---program:-:contactsTableId---"
    Then I softly see value "https://app.keka.com/" for title "URL" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | URL | does not contains | com |
    Then I softly see value "frwklwcaut.sandbox.lightning." for title "URL" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | URL | starts with | https |
    Then I softly do not see value "frwklwcaut.sandbox.lightning." for title "URL" inside table "---program:-:contactsTableId---"
    Then I softly see value "https://jenkins.reisys.com/" for title "URL" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | URL | ends with | .lightning. |
    Then I softly see value "frwklwcaut.sandbox.lightning." for title "URL" inside table "---program:-:contactsTableId---"
    Then I softly do not see value "https://jenkins.reisys.com/" for title "URL" inside table "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

  @500438 @checkboxfieldcheckmanuallyforadvancefilter
  Scenario Outline: 3.0- Data Table Enhanced- PM- Advance Filter- Checkbox, Picklist, Lookup Data Types
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                    | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN},IsKeyContact__c,CreatedBy | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Overview" sub tab
    #Checkbox Field
    And I pause execution for "5" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation EXE" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation FD" in the table "---program:-:associateContactsTableId---"
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation FO" in the table "---program:-:associateContactsTableId---"
    And I edit the following rows inline in flex table with id "---program:-:contactsTableId---" by clicking "Edit" :
      | Name           | Project Role         | Is Key Contact |
      | Automation PM  | Authorized Signatory | Checked        |
      | Automation EXE | Ebiz POC             |                |
      | Automation FD  | Fiscal Contact       | Checked        |
      | Automation FO  | Program Manager      |                |
    And I pause execution for "4" seconds
#    And I click on advance filter of table id "---program:-:contactsTableId---" for LWC
#     When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
#      | Is Key Contact | equals to | Checked |
#    Then I softly see value "True" for title "Is Key Contact" inside table "---program:-:contactsTableId---"
#        And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
#    And I pause execution for "3" seconds
#     When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
#      | Is Key Contact | not equals to |  |
#    Then I softly see value "False" for title "Key Contacts Name" inside table "---program:-:contactsTableId---"
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:contactsTableId---"
    #Picklist Field
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Project Role | equals to | Authorized Signatory |
    Then I softly see value "Authorized Signatory" for title "Project Role" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Project Role | not equals to | Other |
    Then I softly do not see value "Other" for title "Project Role" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    #lookup field
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Created By ID | equals to | Automation PM |
    Then I softly see value "Automation PM" for title "Created By ID" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Created By ID | not equals to | Automation ADMIN |
    Then I softly do not see value "Automation ADMIN" for title "Created By ID" inside table "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

############## Hide Expression Json - Base Salary ##########
  @501246
  Scenario Outline: 3.0- Data Table Enhanced- PM- Hide Expression Json- User Type
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                     | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryUserType | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}            | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    Then I softly do not see column header "Base Salary" displayed in tableId "---program:-:contactsTableId---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                              | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryUserTypeApplicant | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                     | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                               | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryUserTypeInReviewer | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                      | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    And I pause execution for "6" seconds
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryNotInUserTypeInternal | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                         | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryNotInUserTypeApplicant | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                          | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryNotInUserTypeReviewer | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                         | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

  @501250
  Scenario Outline:3.0- Data Table Enhanced- PM- Hide Expression Json- Context
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryInContextEdit | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                 | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    Then I softly do not see column header "Base Salary" displayed in tableId "---program:-:contactsTableId---"
    When I navigate to "Overview" sub tab
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                             | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryNotInContextEdit | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                    | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryInContextView | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                 | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly do not see column header "Base Salary" displayed in tableId "---program:-:contactsTableId---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                             | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryNotInContextView | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                    | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

  @501236
  Scenario Outline:  3.0- Data Table Enhanced- PM- Hide Expression Json- $User
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                 | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryEquals$UserFirstName | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                        | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                    | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryNotEquals$UserFirstName | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                           | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

  @501248
  Scenario Outline: 3.0- Data Table Enhanced- PM- Hide Expression Json- Profile
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    | <defaultconfig>                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | <setupconfig1>                         | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    | <defaultconfig>                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | <setupconfig2>                         | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"

    Examples:
      | User | defaultconfig | setupconfig1                                          | setupconfig2                                             |
      | PM   |               | govgrants_config:HideColumnJsonBaseSalaryINProfilePM  | govgrants_config:HideColumnJsonBaseSalaryNOTINProfilePM  |
      | FO   |               | govgrants_config:HideColumnJsonBaseSalaryINProfileFO  | govgrants_config:HideColumnJsonBaseSalaryNOTINProfileFO  |
      | EXE  |               | govgrants_config:HideColumnJsonBaseSalaryINProfileEXE | govgrants_config:HideColumnJsonBaseSalaryNOTINProfileEXE |

  @501251
  Scenario Outline: 3.0- Data Table Enhanced- PM- Hide Expression Json- User App
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                    | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryInUserAppStateAsGrantor | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                           | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                       | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryNotInUserAppStateAsGrantor | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                              | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                    | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryInUserAppStateAsGrantee | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                           | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                       | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryNotInUserAppStateAsGrantee | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                              | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

  @501772
  Scenario Outline: 3.0- Data Table Enhanced- PM- Hide Expression Json- Combination
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                               | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryCombinationOfProfileContextUserApp | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                                      | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

  @501983
  Scenario Outline: 3.0- Data Table Enhanced- PM- Hide Expression Json- 3Groups(Combination of 3 Scenarios)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                               | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryCombinationOfProfileContextUserApp | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                                      | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

  @501254
  Scenario Outline:3.0- Data Table Enhanced- PM- Hide Expression Json- Queue
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                      | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryInQueuePM | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}             | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                         | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryNotInQueuePM | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

  @501989
  Scenario Outline: 3.0- Data Table Enhanced- PM- Hide Expression Json- 2Groups(Combination of 2 Scenarios)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                              | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalary2GroupsCobination | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                     | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

  @501223
  Scenario Outline: 3.0- Data Table Enhanced- PM- Hide Expression Json- Field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                       | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List                          | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryFieldStatusCreatedEqualsPM | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General                       | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                              | DataTableEnhanceProgramContacts |                           |                                      |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                                | Grantor State Program           | Name                      | {CommonConfigFileTest:Status}        |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    #Equals-Status-Created
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List                          | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryFieldStatusCreatedNotEqualsPM | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General                       | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                                 | DataTableEnhanceProgramContacts |                           |                                      |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                                   | Grantor State Program           | Name                      | {CommonConfigFileTest:Status}        |
    And I refresh the page
    And I pause execution for "4" seconds
    And I click on "Edit" in the page details
    And I pause execution for "4" seconds
    And I enter value "4000" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    #LessThanEquals-FundedAmount-4000
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                         | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue                        |
      | Flex Table List                          | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryFieldFundedAmtLessThanEquals | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c}              |
      | Flex Table:General                       | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                                | DataTableEnhanceProgramContacts |                           |                                                   |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                                  | Grantor State Program           | Name                      | {CommonConfigFileTest:CurrencyField_FundedAmount} |
    And I refresh the page
    And I wait for "4" seconds
    And I click on "Edit" in the page details
    And I pause execution for "4" seconds
    And I enter value "4000" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    #GreaterThanEquals-FundedAmount-4000
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                            | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue                        |
      | Flex Table List                          | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryFieldFundedAmtGreaterThanEquals | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c}              |
      | Flex Table:General                       | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                                   | DataTableEnhanceProgramContacts |                           |                                                   |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                                     | Grantor State Program           | Name                      | {CommonConfigFileTest:CurrencyField_FundedAmount} |
    And I refresh the page
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    #LessThan-FundedAmount-4000
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue                        |
      | Flex Table List                          | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryFieldFundedAmtLessThan | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c}              |
      | Flex Table:General                       | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                          | DataTableEnhanceProgramContacts |                           |                                                   |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                            | Grantor State Program           | Name                      | {CommonConfigFileTest:CurrencyField_FundedAmount} |
    And I refresh the page
    And I click on "Edit" in the page details
    And I pause execution for "4" seconds
    And I enter value "3000" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
     #GreaterThan-FundedAmount-4000
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                      | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue                        |
      | Flex Table List                          | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryFieldFundedAmtGreaterThan | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c}              |
      | Flex Table:General                       | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                             | DataTableEnhanceProgramContacts |                           |                                                   |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                               | Grantor State Program           | Name                      | {CommonConfigFileTest:CurrencyField_FundedAmount} |
    And I refresh the page
    And I click on "Edit" in the page details
    And I pause execution for "4" seconds
    And I enter value "4001" into field "FundedAmount__c"
    And I click on "Save" in the page details
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    #In-FocusAreaRequired-No
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List                          | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryFieldFocusAreaReqNo | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General                       | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                       | DataTableEnhanceProgramContacts |                           |                                      |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                         | Grantor State Program           | Name                      | {CommonConfigFileTest:FocusAreaReq}  |
    And I refresh the page
    And I click on "Edit" in the page details
    And I pause execution for "4" seconds
    And I enter value "No" into field "FocusAreaRequired__c"
    And I click on "Save" in the page details
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    #NotIn-FocusAreaRequired-YesNo
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List                          | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryFieldFocusAreaReqNoYes | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General                       | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                          | DataTableEnhanceProgramContacts |                           |                                      |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                            | Grantor State Program           | Name                      | {CommonConfigFileTest:FocusAreaReq}  |
    And I refresh the page
    And I click on "Edit" in the page details
    And I pause execution for "4" seconds
    And I enter value "Yes" into field "FocusAreaRequired__c"
    And I click on "Save" in the page details
    Then I softly see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"
    #Contains-Type-EmergencyGrants
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName           | fieldNewValue                                                     | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue               |
      | Flex Table List                          | Hide Column JSON    | govgrants_config:HideColumnJsonBaseSalaryFieldTypeEmergencyGrants | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c}     |
      | Flex Table:General                       | Display Field Names | {CommonConfigFileTest:ContactTableDFN}                            | DataTableEnhanceProgramContacts |                           |                                          |
      | Page Block Config:Page Block Rule Detail | Is Active           | true                                                              | Grantor State Program           | Name                      | {CommonConfigFileTest:PicklistTypeField} |
    And I refresh the page
    And I click on "Edit" in the page details
    And I pause execution for "4" seconds
    And I enter value "Emergency Grants" into field "Type__c"
    And I click on "Save" in the page details
    Then I softly do not see column header "BaseSalary" displayed in tableId "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

################### Read Only Cell Json and Read Only Column Json - Suite Id - 502442 #########
  @502433
  Scenario Outline: 3.0- Data Table Enhanced- PM- Read Only Column Json- $User
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                      | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Read Only Column Json | govgrants_config:ReadOnlyColumnJsonBaseSalary$User | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}             | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    When I click modal button "Close"
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see field "BaseSalary__c" is not editable
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                 | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCJNotEqualsBaseSalary$User | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    Then I softly see fields "BaseSalary__c" is in edit mode

    Examples:
      | User |
      | PM   |

  @502434
  Scenario Outline: 3.0- Data Table Enhanced- PM- Read Only Column Json- User Type
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                      | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCLBaseSalaryInApplicantUserType | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}             | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    When I click modal button "Close"
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see fields "BaseSalary__c" is in edit mode
    #UserType-Applicant
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                         | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCLBaseSalaryNotInApplicantUserType | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    Then I softly see field "BaseSalary__c" is not editable
    #UserType-InternalUser
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                     | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCLBaseSalaryInInternalUserType | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    Then I softly see field "BaseSalary__c" is not editable
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                        | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCLBaseSalaryNotInInternalUserType | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    Then I softly see fields "BaseSalary__c" is in edit mode
    #UserType-Reviewer
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                       | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCLBaseSalaryInReviewerUserTypePO | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
    When I re-login to "As a Grantor" app as "PO" user on "INTERNAL" portal
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    When I click modal button "Close"
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see field "BaseSalary__c" is not editable
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCLBaseSalaryNotInReviewerUserTypePO | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    Then I softly see fields "BaseSalary__c" is in edit mode

    Examples:
      | User |
      | PM   |

  @502435
  Scenario Outline: 3.0- Data Table Enhanced- PM- Read Only Column Json- Profile
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Read Only Column Json | <defaultconfig>                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Read Only Column Json | <setupconfig1>                         | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    When I click modal button "Close"
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see field "BaseSalary__c" is not editable
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json | <defaultconfig>   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue  | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Read Only Column Json | <setupconfig2> | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    Then I softly see fields "BaseSalary__c" is in edit mode

    Examples:
      | User | defaultconfig | setupconfig1                                | setupconfig2                                   |
      | PM   |               | govgrants_config:ROCLBaseSalaryInProfilePM  | govgrants_config:ROCLBaseSalaryNotInProfilePM  |
      | FO   |               | govgrants_config:ROCLBaseSalaryInProfileFO  | govgrants_config:ROCLBaseSalaryNotInProfileFO  |
      | EXE  |               | govgrants_config:ROCLBaseSalaryInProfileEXE | govgrants_config:ROCLBaseSalaryNotInProfileEXE |

  @502437
  Scenario Outline: 3.0- Data Table Enhanced- PM- Read Only Column Json- Context
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                 | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCJProjectRoleInContextEdit | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
      | Flex Table:General    | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}        | DataTableEnhanceProgramContacts |                           |                                       |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    When I click modal button "Close"
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see field "ProjectRole__c" is not editable
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                    | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCJProjectRoleNotInContextEdit | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see fields "ProjectRole__c" is in edit mode
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                 | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCJProjectRoleInContextView | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see field "ProjectRole__c" is not editable
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                    | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCJProjectRoleNotInContextView | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see fields "ProjectRole__c" is in edit mode

    Examples:
      | User |
      | PM   |

  @502439
  Scenario Outline: 3.0- Data Table Enhanced- PM- Read Only Column Json- User App
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                    | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCJProjectRoleInUserAppGrantor | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
      | Flex Table:General    | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}           | DataTableEnhanceProgramContacts |                           |                                       |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    When I click modal button "Close"
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see field "ProjectRole__c" is not editable
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                       | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCJProjectRoleNotInUserAppGrantor | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see fields "ProjectRole__c" is in edit mode
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    #User App - State As Grantee
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                    | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCJProjectRoleInUserAppGrantee | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see fields "ProjectRole__c" is in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                       | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCJProjectRoleNotInUserAppGrantee | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    #Then I softly see field inside table "ProjectRole__c" not in edit mode
    Then I do not see field "ProjectRole__c" is editable field
    #User App - Recipient
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                      | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCJProjectRoleInUserAppRecipient | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see fields "ProjectRole__c" is in edit mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Flex Table List       | Read Only Column Json |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                                         | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Flex Table List       | Read Only Column Json | govgrants_config:ROCJProjectRoleNotInUserAppRecipient | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:ProjectRole__c} |
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    #Then I softly see field inside table "ProjectRole__c" not in edit mode
    Then I do not see field "ProjectRole__c" is editable field

    Examples:
      | User |
      | PM   |

  @502441
  Scenario Outline: 3.0- Data Table Enhanced- PM- Read Only Column Json- Queue
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                             | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:ROCJProjectRoleInQueuePM | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}    | DataTableEnhanceProgramContacts |                           |                                      |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "Automation PM" in the table "---program:-:associateContactsTableId---"
    When I click modal button "Close"
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see field "ProjectRole__c" is not editable
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table List       | Hide Column JSON    |                                        | ApiGeneratedId:0 |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List       | Hide Column JSON    | govgrants_config:ROCJProjectRoleNotInQueuePM | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN}       | DataTableEnhanceProgramContacts |                           |                                      |
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see fields "ProjectRole__c" is in edit mode

    Examples:
      | User |
      | PM   |

  @502430
  Scenario Outline: 3.0- Data Table Enhanced- PM- Read Only Cell Json- Field
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue                                                       | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List                          | Read Only Column Json | govgrants_config:HideColumnJsonBaseSalaryFieldStatusCreatedEqualsPM | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General                       | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}                              | DataTableEnhanceProgramContacts |                           |                                      |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                                                | Grantor State Program           | Name                      | {CommonConfigFileTest:Status}        |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "{program:programsTableId}"
    When I enter in modal "ProgramCreation_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "6" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_LWC_org.xlsx"
    And I click on "Save" in the page details
    And I pause execution for "6" seconds
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" in the table "---program:-:associateContactsTableId---"
    When I click modal button "Close"
    And I refresh the page
    And I click on "Edit" icon for "{SavedValue:EXE Username}" inside flex table with id "---program:-:contactsTableId---" without waiting for record
   # Then I softly see field inside table "BaseSalary__c" not in edit mode
    Then I do not see field "BaseSalary__c" is editable field
    #Equals-Status-Created
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue                                                          | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List                          | Read Only Column Json | govgrants_config:HideColumnJsonBaseSalaryFieldStatusCreatedNotEqualsPM | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General                       | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}                                 | DataTableEnhanceProgramContacts |                           |                                      |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                                                   | Grantor State Program           | Name                      | {CommonConfigFileTest:Status}        |
    And I refresh the page
    And I click on "Edit" in the page details
    And I wait for "3" seconds
    And I enter value "4000" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "3" seconds
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "{SavedValue:EXE Username}" inside flex table with id "---program:-:contactsTableId---" without waiting for record
   # Then I softly see field inside table "BaseSalary__c" not in edit mode
    Then I do not see field "BaseSalary__c" is editable field
    #LessThanEquals-FundedAmount-4000
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue                                                         | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue                        |
      | Flex Table List                          | Read Only Column Json | govgrants_config:HideColumnJsonBaseSalaryFieldFundedAmtLessThanEquals | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c}              |
      | Flex Table:General                       | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}                                | DataTableEnhanceProgramContacts |                           |                                                   |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                                                  | Grantor State Program           | Name                      | {CommonConfigFileTest:CurrencyField_FundedAmount} |
    And I refresh the page
    And I click on "Edit" in the page details
    And I enter value "4000" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "4" seconds
    And I refresh the page
    And I click on "Edit" icon for "{SavedValue:EXE Username}" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    #Then I softly see field inside table "BaseSalary__c" not in edit mode
    Then I softly do not see field "BaseSalary__c" is editable field
    #GreaterThanEquals-FundedAmount-4000
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue                                                            | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue                        |
      | Flex Table List                          | Read Only Column Json | govgrants_config:HideColumnJsonBaseSalaryFieldFundedAmtGreaterThanEquals | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c}              |
      | Flex Table:General                       | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}                                   | DataTableEnhanceProgramContacts |                           |                                                   |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                                                     | Grantor State Program           | Name                      | {CommonConfigFileTest:CurrencyField_FundedAmount} |
    And I refresh the page
    And I pause execution for "5" seconds
    And I click on "Edit" icon for "{SavedValue:EXE Username}" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    #Then I softly see field inside table "BaseSalary__c" not in edit mode
    Then I softly do not see field "BaseSalary__c" is editable field
    #LessThan-FundedAmount-4000
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue                                                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue                        |
      | Flex Table List                          | Read Only Column Json | govgrants_config:HideColumnJsonBaseSalaryFieldFundedAmtLessThan | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c}              |
      | Flex Table:General                       | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}                          | DataTableEnhanceProgramContacts |                           |                                                   |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                                            | Grantor State Program           | Name                      | {CommonConfigFileTest:CurrencyField_FundedAmount} |
    And I refresh the page
    And I click on "Edit" in the page details
    And I enter value "3000" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "{SavedValue:EXE Username}" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see field inside table "BaseSalary__c" not in edit mode
     #GreaterThan-FundedAmount-4000
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue                                                      | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue                        |
      | Flex Table List                          | Read Only Column Json | govgrants_config:HideColumnJsonBaseSalaryFieldFundedAmtGreaterThan | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c}              |
      | Flex Table:General                       | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}                             | DataTableEnhanceProgramContacts |                           |                                                   |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                                               | Grantor State Program           | Name                      | {CommonConfigFileTest:CurrencyField_FundedAmount} |
    And I refresh the page
    And I click on "Edit" in the page details
    And I enter value "4001" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I refresh the page
    And I pause execution for "4" seconds
    And I click on "Edit" icon for "{SavedValue:EXE Username}" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see field inside table "BaseSalary__c" not in edit mode
    #In-FocusAreaRequired-No
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue                                                | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List                          | Read Only Column Json | govgrants_config:HideColumnJsonBaseSalaryFieldFocusAreaReqNo | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General                       | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}                       | DataTableEnhanceProgramContacts |                           |                                      |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                                         | Grantor State Program           | Name                      | {CommonConfigFileTest:FocusAreaReq}  |
    And I refresh the page
    And I click on "Edit" in the page details
    And I enter value "No" into field "FocusAreaRequired__c"
    And I click on "Save" in the page details
    And I refresh the page
    And I pause execution for "4" seconds
    And I click on "Edit" icon for "{SavedValue:EXE Username}" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see field inside table "BaseSalary__c" not in edit mode
    #NotIn-FocusAreaRequired-YesNo
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue                                                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue           |
      | Flex Table List                          | Read Only Column Json | govgrants_config:HideColumnJsonBaseSalaryFieldFocusAreaReqNoYes | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c} |
      | Flex Table:General                       | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}                          | DataTableEnhanceProgramContacts |                           |                                      |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                                            | Grantor State Program           | Name                      | {CommonConfigFileTest:FocusAreaReq}  |
    And I refresh the page
    And I click on "Edit" in the page details
    And I enter value "Yes" into field "FocusAreaRequired__c"
    And I click on "Save" in the page details
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "{SavedValue:EXE Username}" inside flex table with id "---program:-:contactsTableId---" without waiting for record
   # Then I softly see field inside table "BaseSalary__c" not in edit mode
    Then I softly see fields "BaseSalary__c" is in edit mode
    #Contains-Type-EmergencyGrants
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName             | fieldOrignalValue                      | filterId         |
      | Flex Table List                          | Read Only Column Json |                                        | ApiGeneratedId:0 |
      | Flex Table                               | Display Field Names   | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:1 |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName             | fieldNewValue                                                     | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue               |
      | Flex Table List                          | Read Only Column Json | govgrants_config:HideColumnJsonBaseSalaryFieldTypeEmergencyGrants | DataTableEnhanceProgramContacts | Name                      | {CommonConfigFileTest:BaseSalary__c}     |
      | Flex Table:General                       | Display Field Names   | {CommonConfigFileTest:ContactTableDFN}                            | DataTableEnhanceProgramContacts |                           |                                          |
      | Page Block Config:Page Block Rule Detail | Is Active             | true                                                              | Grantor State Program           | Name                      | {CommonConfigFileTest:PicklistTypeField} |
    And I refresh the page
    And I click on "Edit" in the page details
    And I enter value "Emergency Grants" into field "Type__c"
    And I click on "Save" in the page details
    And I refresh the page
    And I pause execution for "3" seconds
    And I click on "Edit" icon for "{SavedValue:EXE Username}" inside flex table with id "---program:-:contactsTableId---" without waiting for record
    Then I softly see field inside table "BaseSalary__c" not in edit mode

    Examples:
      | User |
      | PM   |

  @500452 @checkmanuallyfordateandtimrfield
  Scenario Outline: 3.0- Data Table Enhanced- PM- Advance Filter- Date and Date & Time data type fields
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue                      | filterId         |
      | Flex Table            | Display Field Names | {CommonConfigFileTest:ContactTableDFN} | ApiGeneratedId:6 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue                                                   | coreComponentField              | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Display Field Names | {CommonConfigFileTest:ContactTableDFN},Date__c,Date_And_Time__c | DataTableEnhanceProgramContacts |                           |                            |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{DataTableEnhanced:ContactTable}" in "---program:-:programsTableId---" panel
    When I click on "View" icon for "{DataTableEnhanced:ContactTable}" inside flex table with id "---program:-:programsTableId---"
    When I navigate to "Overview" sub tab
    #Date Field
    When I click on advance filter "#advfDataTableEnhanceProgramContacts" of table id "---program:-:contactsTableId---"
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Date | equals to | May 19, 2025 |
    Then I softly see value "5/19/2025" for title "Date" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Date | greater than | May 19, 2025 |
    Then I softly see value "5/25/2027" for title "Date" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Date | less than | May 19, 2025 |
    Then I softly see value "4/15/2025" for title "Date" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Date | greater than or equal to | May 25, 2027 |
    Then I softly see value "5/25/2027" for title "Date" inside table "---program:-:contactsTableId---"
    And I clear all the filter from the table id "advfDataTableEnhanceProgramContacts"
    And I pause execution for "3" seconds
    When I enter advance filter values inside id "advfDataTableEnhanceProgramContacts"
      | Date | less than or equal to | Apr 15, 2025 |
    Then I softly see value "4/15/2025" for title "Date" inside table "---program:-:contactsTableId---"

    Examples:
      | User |
      | PM   |

  @501958
  Scenario Outline: 3.0- Data Table Enhanced- PM- List View Config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue              | filterId         |
      | Flex Table List       | Label          | Internal Programs - My Records | ApiGeneratedId:0 |
      | Flex Table List       | Is Master View | true                           | ApiGeneratedId:1 |
      | Flex Table List       | Active ?       | true                           | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table List       | Label          | Internal Programs - My Records | Programs           | Name                      | FLV-5607                   |
      | Flex Table List       | Is Master View | true                           | Programs           | Name                      | FLV-5607                   |
      | Flex Table List       | Active ?       | true                           | Programs           | Name                      | FLV-5607                   |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - My Records"
    Then I softly see list view "Internal Programs - My Records" in table

    Examples:
      | User |
      | PM   |
