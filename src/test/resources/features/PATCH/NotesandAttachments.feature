@NotesandAttachments @NotesAttachments
Business Need: NotesandAttachments Component Scenarios
  Test all NotesandAttachments component based scenarios
  As a configuration manager i make different configurational changes in NotesandAttachments component and will validate them.

  @382876 @382875 @202286 @202287 @202288
  Scenario Outline: Sanity TC - PM - To verify that Notes and Attachments tables should be render on page layout
  |Sanity TC - Admin - To verify that Notes and Attachments tables should be render on page layout|
  |Attachments- Admin- Config- Verify admin can configure to add ‘Attachments And Notes’ in page block|
  |Attachments- Admin- Config- Verify Attachments table is getting displayed on UI|
  |Attachments- PM- UI- Verify Attachments table is getting displayed on UI|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    When I enter value "Sanity Attachments and Notes table PM" into field "fieldProgramName__c"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I softly see "Attachments" page block displayed
    Then I softly see "Notes" page block displayed

    Examples:
      | Users |
     #| ADMIN |
      | PM    |

  @382881 @382885 @382891 @202289
  Scenario: Sanity TC - SPI - To verify that Notes and Attachments tables should be render on page layout
  |Sanity TC - SPI - To verify that user able to see Add action on Notes table at top level|
  |   Sanity TC - SPI - To verify that user able to see Add action on Attachments table at top level|
  |Sanity TC - SPI - To verify that on clicking Add action on Attachments table Add Attachments modal should be opened|
  |Attachments- SPI- UI- Verify Attachments table is getting displayed on UI|
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
    And I wait for "5" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I softly see "Attachments" page block displayed
    Then I softly see "Notes" page block displayed
    Then I see "Add" button inside "Notes" flex table
    Then I see "Add" button inside "Attachments" flex table
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    Then I see "Add Attachments" opens in overLay window

  @382883 @382884 @382887 @382886
  Scenario Outline: Sanity TC - PM - To verify that user able to see Add action on Notes table at top level
  |Sanity TC - Admin - To verify that user able to see Add action on Notes table at top level|
  |Sanity TC - PM - To verify that user able to see Add action on Attachments table at top level|
  |Sanity TC - Admin - To verify that user able to see Add action on Attachments table at top level|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table
    Then I see "Add" button inside "Attachments" flex table

    Examples:
      | Users |
     #| ADMIN |
      | PM    |

  @382890 @382889
  Scenario Outline: Sanity TC - PM - To verify that on clicking Add action on Attachments table Add Attachments modal should be opened
  |Sanity TC - Admin - To verify that on clicking Add action on Attachments table Add Attachments modal should be opened|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    Then I see "Add Attachments" opens in overLay window

    Examples:
      | Users |
     #| ADMIN |
      | PM    |

  @382892 @382893
  Scenario Outline: Sanity TC - PM - To verify that on clicking Add action on Notes table then Add Notes modal should be opened
  |Sanity TC - Admin - To verify that on clicking Add action on Notes table then Add Notes modal should be opened|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Notes"
    Then I see "Add Notes" opens in overLay window

    Examples:
      | Users |
     #| ADMIN |
      | PM    |

  @382894
  Scenario: Sanity TC - SPI - To verify that on clicking Add action on Notes table then Add Notes modal should be opened
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
    And I wait for "5" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Notes"
    Then I see "Add Notes" opens in overLay window

  @382902 @382909 @202290 @202291
  Scenario Outline: Sanity TC - PM - To verify that user able to see Edit action on Notes and Attachments tables at row level
  |Sanity TC - Admin - To verify that user able to see Edit action on Notes and Attachments tables at row level|
  |Attachments- Admin- Config- Verify we can add attachment from UI|
  |Attachments- PM- UI- Verify we can add attachment from UI|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I pause execution for "5" seconds
    And I upload attachment without random number "AttachmentTesting.pdf" of type "Program Artifacts" from computer
    And I enter value "Test Automation" into "Description"
    And I pause execution for "3" seconds
    And I click modal button "Save"
    And I pause execution for "2" seconds
    And I click on "close" button on "Add Attachments" modal
    Then I see row level action button "Edit" against "AttachmentTesting.pdf" in table name "Attachments"
    Then I see row level action button "Delete" against "AttachmentTesting.pdf" in table name "Attachments"
    Then I see row level action button "Download" against "AttachmentTesting.pdf" in table name "Attachments"
    Examples:
      | Users |
     #| ADMIN |
      | PM    |

  @382910 @202292
  Scenario: Sanity TC - SPI - To verify that user able to see Edit action on Notes and Attachments tables at row level
  |Attachments- SPI- UI- Verify we can add attachment from UI|
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
    And I wait for "5" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I upload attachment without random number "AttachmentTesting.pdf" of type "General Assurances" from computer
    And I enter value "Test Automation" into "Description"
    And I pause execution for "3" seconds
    And I click modal button "Save"
    And I pause execution for "2" seconds
    And I click on "close" button on "Add Attachments" modal
    And I pause execution for "5" seconds
    And I click on top right button "Add" in notes and attachment with name "Notes"
    And I enter value "Notes testing" into "Title"
    And I enter value "Notes testing" into "Description"
    And I click modal button "Save"
    And I pause execution for "5" seconds
    And I click on "close" button on "Add Notes" modal
    Then I see row level action button "Edit" against "AttachmentTesting.pdf" in table name "Attachments"
    Then I see row level action button "Edit" against "Notes testing" in table name "Notes"

  @383436
  Scenario: Sanity TC - SPI - To verify that user able to see Delete action on Notes and Attachments tables at row level
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
    And I wait for "5" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I upload attachment without random number "AttachmentTesting.pdf" of type "General Assurances" from computer
    And I enter value "Test Automation" into "Description"
    And I pause execution for "3" seconds
    And I click modal button "Save"
    And I pause execution for "2" seconds
    And I click on "close" button on "Add Attachments" modal
    Then I see row level action button "Delete" against "AttachmentTesting.pdf" in table name "Attachments"
    Then I see row level action button "Edit" against "AttachmentTesting.pdf" in table name "Attachments"
    Then I see row level action button "Download" against "AttachmentTesting.pdf" in table name "Attachments"

  @383447 @383448 @383433 @383435
  Scenario Outline: Sanity TC - Admin - To verify that user able to see View action on Notes table at row level
  |Sanity TC - PM - To verify that user able to see Delete action on Notes and Attachments tables at row level|
  |Sanity TC - Admin - To verify that user able to see Delete action on Notes and Attachments tables at row level|
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I upload attachment without random number "AttachmentTesting.pdf" of type "Program Artifacts" from computer
    And I enter value "Test Data" into "Description"
    And I pause execution for "3" seconds
    And I click modal button "Save"
    And I pause execution for "2" seconds
    And I click on "close" button on "Add Attachments" modal
    And I click on top right button "Add" in notes and attachment with name "Notes"
    And I enter value "Test Automation" into "Title"
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    And I click on "close" button on "Add Notes" modal
    Then I see row level action button "Download" against "AttachmentTesting.pdf" in table name "Attachements"
    Then I see row level action button "Edit" against "AttachmentTesting.pdf" in table name "Attachements"
    Then I see row level action button "Delete" against "AttachmentTesting.pdf" in table name "Attachements"
    Then I see row level action button "View" against "Test Automation" in table name "Notes"
    Then I see row level action button "Edit" against "Test Automation" in table name "Notes"
    Then I see row level action button "Delete" against "Test Automation" in table name "Notes"

    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @383452
  Scenario: Sanity TC - SPI - To verify that user able to see View action on Notes table at row level
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
    And I wait for "5" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Notes"
    And I enter value "Test Automation" into "Title"
    And I enter value "Test Data" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I see row level action button "Edit" against "Test Automation" in table name "Notes"
    Then I see row level action button "View" against "Test Automation" in table name "Notes"
    Then I see row level action button "Delete" against "Test Automation" in table name "Notes"

  @383767 @383766 @383766
  Scenario Outline: Sanity TC - PM - To verify that user able to see Download action on Attachments table at row level
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Files" sub tab
    Then I see row level action button "Download" against "SendEmailAttachment.pdf" in table name "Attachments"
    Then I see row level action button "Delete" against "SendEmailAttachment.pdf" in table name "Attachments"
    Examples:
      | User |
     # | ADMIN |
      | PM   |

  @383769
  Scenario: Sanity TC - SPI - To verify that user able to see Download action on Attachments table at row level
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
    And I wait for "5" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I see row level action button "Download" against "SendEmailAttachment.pdf" in table name "Attachments"

  @391250 @391248
  Scenario Outline: Sanity TC - PM - To verify after filling required details in Add attachment modal, attachment record is getting saved on click of save action.
  |Sanity TC - ADMIN - To verify after filling required details in Add attachment modal, attachment record is getting saved on click of save action.|
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Files" sub tab
    Then I see row level action button "Download" against "SendEmailAttachment.pdf" in table name "Attachments"
    Examples:
      | User |
     #| ADMIN |
      | PM   |

  @391263
  Scenario Outline: Sanity TC - Admin- To verify after filling required details in Add Notes modal, notes record is getting saved on click of save action.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue                  |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | {CommonConfig:NoteAndAttachmetBlock} |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Notes"
    And I enter value "Test Automation" into "Title"
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    And I click modal button "Close"
    And I refresh the page
    And I pause execution for "7" seconds
    Then I see row level action button "Delete" against "Test Automation" in table name "Notes"

    Examples:
      | Users |
     #| ADMIN |
      | PM    |

  @202298 @202299
  Scenario Outline: Delete attachment- Admin- Config-  Admin will be able to delete the attachments from the record
  |Delete attachment- PM- UI- Verify owner will be able to delete the own attachments from the record|
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Planning" tab
    And I pause execution for "5" seconds
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I navigate to "Overview" sub tab
    When I enter "ProgramEdition_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Files" sub tab
    Then I see row level action button "Delete" against "SendEmailAttachment.pdf" in table name "Attachments"
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table without accept popup
    Then I see confirmation box with body "Do you want to delete? Once it is deleted it cannot be restored." is displayed
    When I click "Yes" on modal confirmation box
    Then I see confirmation box with body "Record deleted successfully." is displayed
    And I click modal button "Ok"
    And I pause execution for "4" seconds
    Then I softly see "No Records Found" inside flex table with id "Attachments"

    Examples:
      | User |
     #| ADMIN |
      | PM   |

  @202300
  Scenario: Delete attachment- SPI- UI- Verify owner will be able to delete the own attachments from the record
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
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I select "General Assurances" from dropdown of filetype
    And I upload attachment "SendEmailAttachment.pdf" in attachment modal
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    When I close modal by clicking the top right x button
    And I refresh the page
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table without accept popup
    Then I see confirmation box with body "Do you want to delete? Once it is deleted it cannot be restored." is displayed
    When I click "Yes" on modal confirmation box
    Then I see confirmation box with body "Record deleted successfully." is displayed
    And I click modal button "Ok"
    And I pause execution for "4" seconds
    Then I softly see "No Records Found" inside flex table with id "Attachments"
