@FieldHistory
Business Need: history Component Scenarios
  Test all history Component based scenarios
  As a configuration manager i make different changes related to flow and will validate them in history component.

  @69537 @204898 @204899 @205057 @205058 @205061 @205063
  Scenario Outline: Validate all program records are shown in Field History table if Program object is selected in dropdown
  |Field History-Admin User- To verify, user should be able to see field history for selected filter as program.|
  |Field History- Admin user-To verify, user should be able to see field history by applying filter for review steps.|
  |Field History - PM user- User should be able to see the header help text on mouse pointer of help icon besides quick search.|
  |Field History - PM user - User should be able search the field history by quick search|
  |Field History - PM user- User should be able to search by entering text in quick search filter.|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | {CommonConfig:HistoryTab}  |
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                     | Program |
      | {SavedValue:PM Username} | Step 1  |
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    When I select "Program" from dropdown inside page block
    And I pause execution for "5" seconds
    Then I softly see "{SavedValue:PEGMSID}" value in flex table id "---program:-:historyTableId---"
    #204899
    When I select "Review Step" from dropdown inside page block
    And I pause execution for "5" seconds
    Then I softly see "Review Step" option is selected for fieldHistory table
    #205040
    When I hovering mouse on help text icon inside "---program:-:historyTableId---" for table
    Then I softly see "Quick Search is not supported for following columns : New Value,Old Value" shown as help text
    #205057
    When I perform quick search for "{SavedValue:Changed By}" in "---program:-:historyTableId---" panel
    Then I softly see value "{SavedValue:Changed By}" for title "Changed By" inside table "---program:-:historyTableId---"

    Examples:
      | User |
     #| ADMIN |
      | PM   |

  @205064 @205067 @205068 @205070 @205090 @205092 @205095 @205097 @205213 @205214
  Scenario Outline: Field History - PM user - User should be able to see the 'New Value' for selected record.
  Field History - PM user - User should be able to see the 'Old Value' for selected record.
  Field History - PM user - User should be able to see the 'Changed Field'  for selected record.
  Field History -PM user- User should be able to see the 'Changed By' value for selected record.
  Field History -PM user- User should be able to see the 'EGMS ID' value for selected record.
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                     | Program |
      | {SavedValue:PM Username} | Step 1  |
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    Then I see value "Submitted For Approval" for title "New Value" inside table "---program:-:historyTableId---"
    Then I see value "Created" for title "Old Value" inside table "---program:-:historyTableId---"
    Then I see value "Status" for title "Changed Field" inside table "---program:-:historyTableId---"

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205098 @205099
  Scenario Outline:Field History- PM user - User should be able to perform export functionality 'Download as PDF' for selected record.
  Field History- Admin user - User should be able to perform export functionality 'Download as PDF' for selected record.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as PDF" from parallel lines dropdown of "Field History"
    And I download the file
    Then I see "EGMS ID" on page "1" of "govgrants" pdf file

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205100 @205101 @checkmanually
  Scenario Outline: Field History- PM user - User should be able to perform export functionality 'Download as CSV' for selected record.
  Field History- Admin user - User should be able to perform export functionality 'Download as CSV' for selected record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Grid             | Enable Export (XLS / CSV) | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField |
      | Flex Grid:General     | Enable Export (XLS / CSV) | true          | History            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    When I navigate to "Planning" tab
    When I click toggle button to select "Internal Programs - Active"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Download as XLS" from parallel lines dropdown of "Field History"
    And I download the file
    Then I see "Field History" in downloaded xls or csv file "govgrants"
    Examples:
      | User |
    #  | ADMIN   |
      | PM   |

  @205445 @205468 @205506 @205507
  Scenario Outline: Field history: PM user-To verify, User change the number field from backend then it should display changed and previous value in the new and old value column
  |Field history: PM user-To verify, User change the percent field from backend then it should display changed and previous value in the new and old value column.|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Numberfield_NumberofApprovals} |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "12" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Number" as "OldNumber"
    And I click on "Edit" in the page details
    And I enter value "20" into field "fieldNumber__c"
    And I click on "Save" in the page details
    And I save the field labeled "Number" as "NewNumber"
    And I refresh the page
    When I navigate to "History" sub tab
    #NumberField
    Then I see "{SavedValue:NewNumber}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldNumber}" shown inside "Old Value" column in history table

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @205506 @205507
  Scenario Outline: Field history: PM user-To verify, User change the percent field from backend then it should display changed and previous value in the new and old value column.|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                 |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PercentField_Percent}          |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "74" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Percent" as "OldPercent"
    And I click on "Edit" in the page details
    And I enter value "95" into field "Percent__c"
    And I click on "Save" in the page details
    And I save the field labeled "Percent" as "NewPercent"
    And I refresh the page
    When I navigate to "History" sub tab
     #PercentField
    Then I see "{SavedValue:NewPercent}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldPercent}" shown inside "Old Value" column in history table

    Examples:
      | User |
#      | ADMIN |
      | PM   |

  @205546 @205547
  Scenario Outline: Field History - PM user- To verify, User change the negative value for percent field from backend then it should display value inside bracket in the new value column.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PercentField_Percent}         |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "-78" into field "Percent__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Percent" as "OldNegativePercent"
    And I click on "Edit" in the page details
    And I enter value "-45" into field "Percent__c"
    And I click on "Save" in the page details
    And I save the field labeled "Percent" as "NewNegativePercent"
    And I refresh the page
    When I navigate to "History" sub tab
    #Percent
    Then I see "{SavedValue:NewNegativePercent}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldNegativePercent}" shown inside "Old Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205561 @205552
  Scenario Outline: Field History - Admin user -To verify, User change the picklist field value from backend then it should display changed and previous value in the new and old value column.|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:PicklistField_ProgramSubType} |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "Project Grants" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Type" as "OldType"
    And I click on "Edit" in the page details
    And I enter value "Project Grants" into field "ProgramSubType__c"
    And I click on "Save" in the page details
    And I save the field labeled "Type" as "NewType"
    And I refresh the page
    When I navigate to "History" sub tab
    #Picklist
    Then I see "{SavedValue:NewType}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldType}" shown inside "Old Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205572 @205584 @205598
  Scenario Outline: Field History -PM user -To verify, User change the text field value from backend then it should display changed and previous value in the new and old value column.
     Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Abbreviation__c}            |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "ABC" into field "Abbreviation__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Abbreviation" as "OldAbbreviation"
    And I click on "Edit" in the page details
    And I enter value "XYZ" into field "Abbreviation__c"
    And I click on "Save" in the page details
    And I save the field labeled "Abbreviation" as "NewAbbreviation"
    And I refresh the page
    When I navigate to "History" sub tab
    #TextField
    Then I see "{SavedValue:NewAbbreviation}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldAbbreviation}" shown inside "Old Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205599 @114727 @205604 @205605
  Scenario Outline: Validate the currency field format under field history table inside new value column
  |History Field : Admin User -To verify, User change the currency field from backend then it should display changed and previous value in the new and old value column
  |Field History -PM user - To verify, User change the currency field value from backend then it should display only one time in the field history table
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "45" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Funded Amount" as "OldFundedAmount"
    And I click on "Edit" in the page details
    And I enter value "67" into field "FundedAmount__c"
    And I click on "Save" in the page details
    And I save the field labeled "Funded Amount" as "NewFundedAmount"
    And I refresh the page
    When I navigate to "History" sub tab
    #CurrencyField
    Then I see "{SavedValue:NewFundedAmount}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldFundedAmount}" shown inside "Old Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205601 @205603
  Scenario Outline: History Field : ADMIN User -To verify, User change the negative currency field value from backend then it should display in the new value column
  |Field History - ADMIN user - To verify, User change the date field from edit layout then it should display changed and previous value in the new and old value column.|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:CurrencyField_FundedAmount} |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    And I enter value "0" into field "fieldStartDate__c"
    And I click on "Save" in the page details
    And I save the field labeled "Project Period Start Date" as "OldStartDate"
    And I click on "Edit" in the page details
    And I enter value "30" into field "fieldStartDate__c"
    And I click on "Save" in the page details
    And I save the field labeled "Project Period Start Date" as "NewStartDate"
    When I navigate to "History" sub tab
    #NegativeCurrencyField
    Then I see "({SavedValue:OldFundedAmount})" shown inside "New Value" column in history table
    Then I see "({SavedValue:NewFundedAmount})" shown inside "New Value" column in history table

 Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205606 @205607
  Scenario Outline: Field History - ADMIN user - To verify, User change the date field from edit layout then it should display changed and previous value in the new and old value column.|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue              |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:ProjectPeriodStartDate}     |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    And I enter value "0" into field "fieldStartDate__c"
    And I click on "Save" in the page details
    And I save the field labeled "Project Period Start Date" as "OldStartDate"
    And I click on "Edit" in the page details
    And I enter value "30" into field "fieldStartDate__c"
    And I click on "Save" in the page details
    And I save the field labeled "Project Period Start Date" as "NewStartDate"
    When I navigate to "History" sub tab
    #DateField
    Then I see "{SavedValue:OldStartDate}" shown inside "New Value" column in history table
    Then I see "{SavedValue:NewStartDate}" shown inside "New Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205637 @205636
  Scenario Outline: Field History - PM user -To verify, User change the URL field from backend then it should display changed and previous value in the new and old value column.
  |Field History : PM user - To verify, User change the date time field from backend then it should display changed and previous value in the new and old value column|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue             |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:URL__c}                    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "www.google.com" into field "URL__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "X_URL" as "OldURL"
    And I click on "Edit" in the page details
    And I enter value "www.facebook.com" into field "URL__c"
    And I click on "Save" in the page details
    And I save the field labeled "X_URL" as "NewURL"
    And I refresh the page
    When I navigate to "History" sub tab
    #URLField
    Then I see "{SavedValue:NewURL}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldURL}" shown inside "Old Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205760 @205762
  Scenario Outline: Field History - PM user -To verify, User change the URL field from backend then it should display changed and previous value in the new and old value column.
  |Field History : PM user - To verify, User change the date time field from backend then it should display changed and previous value in the new and old value column|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue             |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:DateTimeField_DateAndTime} |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "09/26/2025 03:00 PM" into field "Date_And_Time__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Date And Time" as "OldDateAndTime"
    And I click on "Edit" in the page details
    And I enter value "12/26/2029 08:00 PM" into field "Date_And_Time__c"
    And I click on "Save" in the page details
    And I save the field labeled "Date And Time" as "NewDateAndTime"
    And I refresh the page
    When I navigate to "History" sub tab
    #DateAndTimeField
    Then I see "{SavedValue:NewDateAndTime}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldDateAndTime}" shown inside "Old Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205766 @205767
  Scenario Outline:Field History : PM user - To verify, User change the phone field value from backend then it should display changed and previous value in the new and old value column.
  |Field History : PM user - To verify, User change the checkbox field value from edit layout then it should display changed and previous value in the new and old value column.|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:Phone_Number__c}    |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "8456321479" into field "Phone_Number__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Phone Number" as "OldPhoneNumber"
    And I click on "Edit" in the page details
    And I enter value "9845632147" into field "Phone_Number__c"
    And I click on "Save" in the page details
    And I save the field labeled "Phone Number" as "NewPhoneNumber"
    And I refresh the page
    When I navigate to "History" sub tab
    #PhoneNumberField
    Then I see "{SavedValue:NewPhoneNumber}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldPhoneNumber}" shown inside "Old Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205770 @205771
  Scenario Outline:Field History : PM user - To verify, User change the checkbox field value from edit layout then it should display changed and previous value in the new and old value column.|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:CheckBoxField_CFDA} |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "Checked" into field "CFDA_Data__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "CFDA" as "OldCFDA"
    And I click on "Edit" in the page details
    And I enter value "Unchecked" into field "CFDA_Data__c"
    And I click on "Save" in the page details
    And I save the field labeled "CFDA" as "NewCFDA"
    And I refresh the page
    When I navigate to "History" sub tab
    #CheckboxField
    Then I see "false" shown inside "New Value" column in history table
    Then I see "true" shown inside "Old Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205776 @205777
  Scenario Outline: Field History : PM user - To verify, User change the lookup field value from backend then it should display changed and previous value in the new and old value column.
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue               |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:AuthorizedSignatory__c}      |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I select value "Automation ADMIN" into field "fieldAuthorizedSignatory__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Authorized Signatory" as "OldAuthorizedSignatory"
    And I click on "Edit" in the page details
    And I select value "Automation PM" into field "fieldAuthorizedSignatory__c"
    And I click on "Save" in the page details
    And I save the field labeled "Authorized Signatory" as "NewAuthorizedSignatory"
    And I refresh the page
    When I navigate to "History" sub tab
    #LookupField
    Then I see "{SavedValue:OldAuthorizedSignatory}" shown inside "Old Value" column in history table
    Then I see "{SavedValue:NewAuthorizedSignatory}" shown inside "New Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @205783 @205784
  Scenario Outline: Field History : PM user - To verify, User change the text area field value from edit layout then it should display changed and previous value in the new and old value column.|
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue               |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:TextAreaField_Authorization} |
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "Test Data" into field "Authorization__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Authorization" as "OldAuthorization"
    And I click on "Edit" in the page details
    And I enter value "Test Automation" into field "Authorization__c"
    And I click on "Save" in the page details
    And I save the field labeled "Authorization" as "NewAuthorization"
    And I refresh the page
    When I navigate to "History" sub tab
     #TextArea
    Then I see "{SavedValue:OldAuthorization}" shown inside "Old Value" column in history table
    Then I see "{SavedValue:NewAuthorization}" shown inside "New Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @91687 @205059 @205060
  Scenario: validate advance filter at field history table in record view mode
  | Field History - PM user - User should be able search field history by applying advance filter.|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | {CommonConfig:HistoryTab}  |
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    And I save the field labeled "EGMS ID" as "PEGMSID"
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "---program:-:contactsTableId---"
    When I click "Associate" after selection of "{SavedValue:EXE Username}" by showing entries "All" in flex table with id "---program:-:associateContactsTableId---"
    When I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---program:-:approverTableId---" by clicking "New" :
      | Name                     | Program |
      | {SavedValue:PM Username} | Step 1  |
    And I click on "Submit For Approval" in the page details
    When I navigate to "History" sub tab
    When I click on advance filter "#advfHistory" of table id "---program:-:historyTableId---"
    When I enter advance filter values inside id "advfHistory"
      | Changed Field | Equals to | Status |
    Then I see value "Status" for title "Changed Field" inside table "---program:-:historyTableId---"

  @205102 @205103
  Scenario Outline: Field History- PM user - User should be able to refresh the field history block using Refresh option from burger icon option.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Active"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "History" sub tab
    When I click on parallel lines menu bar with data target value "#toggleFlexTableHistory"
    And I select "Refresh" from parallel lines dropdown of "Field History"
    Then I see parent page is refreshing

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @114729
  Scenario: validate the decimal currency field format under field history table inside new value column
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName | fieldOrignalValue | filterId         |
      | Page Block Config:Page Block Rule Detail | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Page Block Config:Page Block Rule Detail | Is Active | true          | Grantor State Program | Name                      | {pagelayout:ExpectedFunding__c} |
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I save the field labeled "EGMS ID" as "PEGMSID"
    And I click on "Edit" in the page details
    And I enter value "$200,000.50" into field "fieldExpectedFunding__c"
    And I click on "Save" in the page details
    And I save the field labeled "X_Expected Funding" as "OldExpectedFunding"
    And I click on "Edit" in the page details
    And I enter value "$300,000.55" into field "fieldExpectedFunding__c"
    And I click on "Save" in the page details
    And I save the field labeled "X_Expected Funding" as "NewExpectedFunding"
    And I pause execution for "5" seconds
    When I navigate to "History" sub tab
    And I refresh the page
    #TextArea
    Then I see "{SavedValue:OldExpectedFunding}" shown inside "Old Value" column in history table
    Then I see "{SavedValue:NewExpectedFunding}" shown inside "New Value" column in history table

  @205477 @205478
  Scenario Outline: Field History : PM User -To verify, User change the negative value number field as a from backend then it should display in the new value column.
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "3" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    And I enter value "-20" into field "Number__c"
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "Number" as "OldNegativeNumber"
    And I click on "Edit" in the page details
    And I enter value "-75" into field "Number__c"
    And I click on "Save" in the page details
    And I save the field labeled "Number" as "NewNegativeNumber"
    And I refresh the page
    When I navigate to "History" sub tab
    Then I see "{SavedValue:NewNegativeNumber}" shown inside "New Value" column in history table
    Then I see "{SavedValue:OldNumber}" shown inside "Old Value" column in history table

    Examples:
      | User |
     # | ADMIN |
      | PM   |
