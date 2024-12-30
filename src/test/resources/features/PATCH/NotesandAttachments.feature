@NotesandAttachments-PATCHcomponent @regression-PATCH @NotesAttachments
Business Need: NotesandAttachments Component Scenarios
  Test all NotesandAttachments component based scenarios
  As a configuration manager i make different configurational changes in NotesandAttachments component and will validate them.

  @382876 @382875 @SanityPATCH @SanityPATCHNotes
  Scenario Outline: Sanity TC - PM - To verify that Notes and Attachments tables should be render on page layout
  |Sanity TC - Admin - To verify that Notes and Attachments tables should be render on page layout|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | PB-6708                    |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I pause execution for "10" seconds
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

  @382881 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - SPI - To verify that Notes and Attachments tables should be render on page layout
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    When I navigate to "Files" sub tab
    Then I softly see "Attachments" page block displayed
    Then I softly see "Notes" page block displayed

  @382883 @382884 @SanityPATCH @SanityPATCHNotes
  Scenario Outline: Sanity TC - PM - To verify that user able to see Add action on Notes table at top level
  |Sanity TC - Admin - To verify that user able to see Add action on Notes table at top level|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | PB-6708                    |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table
    Examples:
      | Users |
     #| ADMIN |
      | PM    |

  @382885 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - SPI - To verify that user able to see Add action on Notes table at top level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Notes" flex table

  @382887 @382886 @SanityPATCH @SanityPATCHNotes
  Scenario Outline: Sanity TC - PM - To verify that user able to see Add action on Attachments table at top level
  |Sanity TC - Admin - To verify that user able to see Add action on Attachments table at top level|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | PB-6708                    |
    When I login to "As a Grantor" app as "<Users>" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Attachments" flex table
    Examples:
      | Users |
     #| ADMIN |
      | PM    |

  @382888 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - SPI - To verify that user able to see Add action on Attachments table at top level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    When I navigate to "Files" sub tab
    Then I see "Add" button inside "Attachments" flex table

  @382890 @382889 @SanityPATCH @SanityPATCHNotes
  Scenario Outline: Sanity TC - PM - To verify that on clicking Add action on Attachments table Add Attachments modal should be opened
  |Sanity TC - Admin - To verify that on clicking Add action on Attachments table Add Attachments modal should be opened|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | PB-6708                    |
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

  @382891 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - SPI - To verify that on clicking Add action on Attachments table Add Attachments modal should be opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    Then I see "Add Attachments" opens in overLay window

  @382892 @382893 @SanityPATCH @SanityPATCHNotes
  Scenario Outline: Sanity TC - PM - To verify that on clicking Add action on Notes table then Add Notes modal should be opened
  |Sanity TC - Admin - To verify that on clicking Add action on Notes table then Add Notes modal should be opened|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | PB-6708                    |
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

  @382894 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - SPI - To verify that on clicking Add action on Notes table then Add Notes modal should be opened
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Notes"
    Then I see "Add Notes" opens in overLay window

  @382902 @382909 @SanityPATCH @SanityPATCHNotes
  Scenario Outline: Sanity TC - PM - To verify that user able to see Edit action on Notes and Attachments tables at row level
  |Sanity TC - Admin - To verify that user able to see Edit action on Notes and Attachments tables at row level|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | PB-6708                    |
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
    And I click on the "Close" button on the "Notes and Attachment" section
    Then I see row level action button "Edit" against "AttachmentTesting.pdf" in table name "Attachments"
    Then I see row level action button "Delete" against "AttachmentTesting.pdf" in table name "Attachments"
    Then I see row level action button "Download" against "AttachmentTesting.pdf" in table name "Attachments"
    Examples:
      | Users |
     #| ADMIN |
      | PM    |

  @382910 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - SPI - To verify that user able to see Edit action on Notes and Attachments tables at row level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I upload attachment without random number "AttachmentTesting.pdf" of type "Program Artifacts" from computer
    And I enter value "Test Automation" into "Description"
    And I pause execution for "3" seconds
    And I click modal button "Save"
    And I pause execution for "2" seconds
    And I click on "close" button on "Add Attachments" modal
    Then I see row level action button "Edit" against "AttachmentTesting.png" in table name "Attachments"
    Then I see row level action button "Edit" against "Notes testing" in table name "Notes"

  @383433 @383435 @SanityPATCH @SanityPATCHNotes
  Scenario Outline: Sanity TC - PM - To verify that user able to see Delete action on Notes and Attachments tables at row level
  |Sanity TC - Admin - To verify that user able to see Delete action on Notes and Attachments tables at row level|
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | PB-6708                    |
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
    And I click on "close" button on "Add Notes" modal
    Then I see row level action button "Delete" against "Test Automation" in table name "Notes"
    Examples:
      | Users |
     #| ADMIN |
      | PM    |

  @383436 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - SPI - To verify that user able to see Delete action on Notes and Attachments tables at row level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I upload attachment without random number "AttachmentTesting.pdf" of type "Program Artifacts" from computer
    And I enter value "Test Automation" into "Description"
    And I pause execution for "3" seconds
    And I click modal button "Save"
    And I pause execution for "2" seconds
    And I click on "close" button on "Add Attachments" modal
    Then I see row level action button "Delete" against "AttachmentTesting.png" in table name "Attachments"
    Then I see row level action button "Delete" against "Notes testing" in table name "Notes"

  @383447 @SanityPATCH @SanityPATCHNotes @wip
  Scenario: Sanity TC - Admin - To verify that user able to see View action on Notes table at row level
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsgridTableId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I upload attachment without random number "AttachmentTesting.pdf" of type "Program Artifacts" from computer
    And I enter value "Test Automation" into "Description"
    And I pause execution for "3" seconds
    And I click modal button "Save"
    And I pause execution for "2" seconds
    And I click on "close" button on "Add Attachments" modal
    And I click on top right button "Add" in notes and attachment with name "Notes"
    And I enter value "Test Automation" into "Title"
    And I enter value "Test Automation" into "Description"
    And I click on "close" button on "Add Notes" modal
    Then I see row level action button "View" against "AttachmentTesting.png" in table name "Attachments"
    Then I see row level action button "View" against "Notes testing" in table name "Notes"

  @383448 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - PM - To verify that user able to see View action on Notes table at row level
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:ProgramsgridTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_PATCH.xlsx"
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in notes and attachment with name "Attachments"
    And I upload attachment without random number "AttachmentTesting.pdf" of type "Program Artifacts" from computer
    And I enter value "Test Automation" into "Description"
    And I pause execution for "3" seconds
    And I click modal button "Save"
    And I pause execution for "2" seconds
    And I click on "close" button on "Add Attachments" modal
    And I click on top right button "Add" in notes and attachment with name "Notes"
    And I enter value "Test Automation" into "Title"
    And I enter value "Test Automation" into "Description"
    And I click modal button "Save"
    And I click on "close" button on "Add Notes" modal
    Then I see row level action button "Download" against "AttachmentTesting.png" in table name "Attachments"
    Then I see row level action button "View" against "Notes testing" in table name "Notes"

  @383452 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - SPI - To verify that user able to see View action on Notes table at row level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    When I navigate to "Files" sub tab
    Then I see row level action button "View" against "SendEmailAttachment.pdf" in table name "Attachments"
    Then I see row level action button "View" against "Notes testing" in table name "Notes"

  @383766 @SanityPATCH @SanityPATCHNotes @wip
  Scenario: Sanity TC - Admin - To verify that user able to see Download action on Attachments table at row level
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - All"
    And I perform quick search for "Sanity Attachments and Notes table Admin" in "---program:-:ProgramsgridTableId---" panel
    When I click on "View" icon for "Sanity Attachments and Notes table Admin" inside table
    When I navigate to "Files" sub tab
    Then I see row level action button "Download" against "AttachmentTesting.png" in table name "Attachments"
    Then I see row level action button "Download" against "Notes testing" in table name "Notes"

  @383767 @383766 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - PM - To verify that user able to see Download action on Attachments table at row level
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    And I pause execution for "10" seconds
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
    Then I see row level action button "View" against "SendEmailAttachment.pdf" in table name "Attachments"

  @383769
  Scenario: Sanity TC - SPI - To verify that user able to see Download action on Attachments table at row level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Application For Announcement Testing"
    When I click on "View" icon for "Application For Announcement Testing" inside table
    When I navigate to "Files" sub tab
    Then I see row level action button "Download" against "SendEmailAttachment.pdf" in table name "Attachments"

  @391248 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - Admin - To verify after filling required details in Add attachment modal, attachment record is getting saved on click of save action.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I pause execution for "10" seconds
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
    And I pause execution for "7" seconds
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Files" sub tab
    Then I see row level action button "Download" against "SendEmailAttachment.pdf" in table name "Attachments"

  @391250 @SanityPATCH @SanityPATCHNotes
  Scenario: Sanity TC - PM - To verify after filling required details in Add attachment modal, attachment record is getting saved on click of save action.
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Planning" tab
    And I pause execution for "10" seconds
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

  @391263 @SanityPATCH @SanityPATCHNotes
  Scenario Outline: Sanity TC - Admin- To verify after filling required details in Add Notes modal, notes record is getting saved on click of save action.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | coreComponentField    | filterId         |
      | Page Block            | Is Active        | true              | Grantor State Program | ApiGeneratedId:0 |
      | Page Block            | Hide for Profile |                   | Grantor State Program | ApiGeneratedId:1 |
      | Page Block            | Hide for User    |                   | Grantor State Program | ApiGeneratedId:2 |
      | Page Block            | Hide for Context |                   | Grantor State Program | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName        | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active        | true          | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Profile |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for User    |               | Grantor State Program | Name                      | PB-6708                    |
      | Page Block:Page Block Detail | Hide for Context |               | Grantor State Program | Name                      | PB-6708                    |
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