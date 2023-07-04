@Attachment-Component @regression-LWC @AttachmentLWC
Business Need: Attachment Component Scenarios
  Test all AttachmentLWC component based scenarios
  As a configuration manager i make different configurational changes in AttachmentLWC component and will validate them.

  @221532 @255614 @ValidateRequiredfieldasterisk'symbolonattachmentmodal @Vrushali @LWC-AttachmentTestSuit
  Scenario Outline:To verify asterisk symbol is visible for all mandatory fields such as Type,File,Description on UI with no space between word and symbol
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:ProgramForLWCAttachmentsTesting}"
    When I click on "View" icon for "{Framework_recordUsed:ProgramForLWCAttachmentsTesting}" inside table
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "10" seconds
    And I perform scroll on page layout
    And I click on top right button "Add" in tableName "Attachments"
    Then I see asterisk mark at "Type" field in LWC
    Then I see asterisk mark at "File" field in LWC
    Then I see asterisk mark at "Description" field in LWC
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221534 @255886 @255891 @Toverifyuserisabletosave'.jpg'file @LWC-AttachmentTestSuit @Vrushali
  Scenario: To verify user is able to save '.jpg','.xlsx','.png' file
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "10" seconds
    And I perform scroll on page layout
    And I click on top right button "Add" in tableName "Attachments"
    And I see "Add Attachments" is in LWC modal window
      #255886
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "SharingAtCollabTest.png" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    And I pause execution for "5" seconds
      #221534 #221534
    And I select "Financial Artifacts" from dropdown of filetype
    When I upload attachment "TestAutomationFile.jpg" in attachments LWC modal
    And I enter value "Automation Test" into description box
    And I click on "Save" button in LWC
    And I pause execution for "5" seconds
      #255891
    And I select "Other Artifacts" from dropdown of filetype
    When I upload attachment "SheetJSFileUpload.xlsx" in attachments LWC modal
    And I enter value "Test Description" into description box
    And I click on "Save" button in LWC
    And I pause execution for "5" seconds
    When I close LWC modal by clicking the top right x button
    And I refresh the page
    And I perform scroll on page layout
    Then I can see attach the "SharingAtCollabTest.png" file format in the attachment section
    Then I can see attach the "TestAutomationFile.jpg" file format in the attachment section
    Then I can see attach the "SheetJSFileUpload.xlsx" file format in the attachment section

  @255887 @255889 @255890 @Toverifyuserisabletosave'.pdf,.txt,.docx'file @LWC-AttachmentTestSuit @Vrushali
  Scenario:To verify user is able to save '.pdf,.txt,.docx' file
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "10" seconds
    And I perform scroll on page layout
    And I click on top right button "Add" in tableName "Attachments"
    And I see "Add Attachments" is in LWC modal window
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "RecordLevelDuplicateFile.pdf" in attachments LWC modal
    And I enter value "Test Description" into description box
    And I click on "Save" button in LWC
    And I pause execution for "6" seconds
      #255889
    And I select "Financial Artifacts" from dropdown of filetype
    When I upload attachment "DuplicateFile.txt" in attachments LWC modal
    And I enter value "Test Automation" into description box
    And I click on "Save" button in LWC
    And I pause execution for "5" seconds
      #255890
    And I select "Other Artifacts" from dropdown of filetype
    When I upload attachment "TestFileSharing.docx" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    And I pause execution for "5" seconds
    Then I can see attach the "RecordLevelDuplicateFile.pdf" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    Then I can see attach the "TestFileSharing.docx" file format in the attachment section

  @221523 @255441 @255863 @221533 @255008 @222489 @Validatemessage_Attachmentaddedsuccessfully @LWC-AttachmentTestSuit @Vrushali
  Scenario Outline: To verify, admin User are able to add the attachment in the LWC Attachment page block
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "10" seconds
    And I perform scroll on page layout
    And I click on top right button "Add" in tableName "Attachments"
    #255441 #222489
    Then I see "Add Attachments" is in LWC modal window
    And I select "Other Artifacts" from dropdown of filetype
    When I upload attachment "TestAutomation.txt" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    And I pause execution for "3" seconds
    #255863 #221523 #221533
    Then I see the following message in the LWC page details :
      | Attachment added successfully. |
    When I close LWC modal by clicking the top right x button
    And I refresh the page
    Then I can see attach the "TestAutomation.txt" file format in the attachment section
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221524 @255547 @Validatemessage"Pleaseselecttype" @vrushali @LWC-AttachmentTestSuit
  Scenario Outline: To verify, user is not able to save attachment if mandatory field 'Type' is not filled and getting error message as 'Please select Type'
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I perform scroll on page layout
    And I click on top right button "Add" in tableName "Attachments"
    When I upload attachment "SendEmailAttachment.pdf" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    Then I see the following message in the LWC page details :
      | Please select type. |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221525 @255556 @Validatemessage"Fileshouldnotbeblank" @vrushali @LWC-AttachmentTestSuit
  Scenario Outline: To verify, user is not able to save attachment if mandatory field 'File' is not filled and getting error message as 'File should not be blank'. (Admin)
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    Then I see the following message in the LWC page details :
      | File should not be blank. |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221526 @255562 @Validatemessage"Pleaseentervalueindescriptionfield" @vrushali @LWC-AttachmentTestSuit
  Scenario Outline: To verify, user is not able to save attachment if mandatory field 'Description' is not filled and getting error message as 'Please enter value in description field'. (Admin)
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "8" seconds
    When I enter "ProgramEdition_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "SendEmailAttachment.pdf" in attachments LWC modal
    And I click on "Save" button in LWC
    Then I see the following message in the LWC page details :
      | Please enter value in description field. |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221536 @255936 @Validatemsg"ThedocumentyouareattemptingtouploadexistsintWorkspace"foraddingduplicatefile @Vrushali @LWC-AttachmentTestSuit
  Scenario Outline: Validate msg "The document you are attempting to upload exists in the Workspace" for adding duplicate file
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "TestAutomationFile.jpg" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    And I pause execution for "5" seconds
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "TestAutomationFile.jpg" in attachments LWC modal
    And I pause execution for "2" seconds
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    Then I see the following message in the LWC page details :
      | The document you are attempting to upload exists in the Workspace |
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @255672 @validatemsg"Fileshouldnotbeblank"afteraddingblanktextfile @Vrushali @LWC-AttachmentTestSuit
  Scenario: validate msg "File should not be blank" after adding blank text file
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:ProgramForLWCAttachmentsTesting}"
    When I click on "View" icon for "{Framework_recordUsed:ProgramForLWCAttachmentsTesting}" inside table
#    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
#    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
#    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "blank.txt" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    Then I see the following message in the LWC page details :
      | File should not be blank. |

  @221539 @256574 @Toverifytypefieldisclickableuserisabletoselectit @Vrushali @LWC-AttachmentTestSuit
  Scenario Outline: To verify type field is clickable and user is able to select it
    Given I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:ProgramForLWCAttachmentsTesting}"
    When I click on "View" icon for "{Framework_recordUsed:ProgramForLWCAttachmentsTesting}" inside table
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    Then I see "Program Artifacts" from dropdown of filetype is displayed and enabled
    Then I see "Financial Artifacts" from dropdown of filetype is displayed and enabled
    Then I see "Other Artifacts" from dropdown of filetype is displayed and enabled
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221546 @Toverify'File'fieldisclickableuserisabletoselectanduploadfilefromcomputer @Vrushali @LWC-AttachmentTestSuit
  Scenario: To verify 'File' field is clickable and user is able to select and upload the file from computer
    Given I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    Then I can see Upload Files in "file" field is displayed and enabled
    When I upload attachment "supporting document.pdf" in attachments LWC modal
    Then I can see attach the "supporting document.pdf " file format in the attachment section

  @221527 @255589 @Vrushali @LWC-AttachmentTestSuit
  Scenario Outline:when user click on row level action delete, getting confirmation popup window and when click on 'Yes' then the record is getting deleted getting confirmation message as 'Record deleted successfully'
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "Create_Case.xlsx" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    When I close LWC modal by clicking the top right x button
    And I refresh the page
    When I click on "Delete" icon for file "Create_Case.xlsx" inside table name "Attachments" for LWC
    And I click on "Yes" on confirmation modal
    Then I see the following message in the LWC page details :
      | Attachment deleted successfully. |
    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @222487 @255488 @255420 @255427 @221528 @whenuserclicksonpageblockshrinkactionbuttonthencomponentgetsshrunk @LWC-AttachmentTestSuit
  Scenario Outline: when user clicks on page block shrink action button then component gets shrunk
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:ProgramForLWCAttachmentsTesting}"
    When I click on "View" icon for "{Framework_recordUsed:ProgramForLWCAttachmentsTesting}" inside table
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on "up" arrow in "Attachments" table
    Then I do not see "Attachments" table
    And I pause execution for "5" seconds
    And I click on "down" arrow in "Attachments" table
    #221528
    Then I softly see column "Name" in table name "Attachments"
    Then I softly see column "Type" in table name "Attachments"
    Then I softly see column "Description" in table name "Attachments"
    Then I softly see column "Date Attached" in table name "Attachments"
    Then I softly see column "Attached By" in table name "Attachments"
    Then I softly see column "Actions" in table name "Attachments"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221545 @255319 @221551 @255351 @221544 @Vrushali @LWC-AttachmentTestSuit
  Scenario Outline: To verify, When User click on edit action then Edit Notes modal should be displayed
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "TestFileSharing.docx" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    When I close LWC modal by clicking the top right x button
    And I refresh the page
    And I pause execution for "5" seconds
    #And I perform scroll on page layout
    And I click on "Edit" icon for file "TestFileSharing.docx" inside table name "Attachments" for LWC
    #221545
    Then I see "Edit Attachment" is in LWC modal window
    And I enter value "Test Description" into description box
    And I click on "Save" button in LWC
    When I close LWC modal by clicking the top right x button
    And I refresh the page
    And I perform scroll on page layout
    #221551 #255351 #221544
    Then I can see "Test Description" into column "Descrption" against value "TestFileSharing.docx"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221540 @255172 @221541 @Toverify,Editrowlevelactionisvisibleforonlyrecordowner @Vrushali @LWC-AttachmentTestSuit
  Scenario Outline:To verify, Edit row level action is visible for only record owner
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
#    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
#    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
#    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "TestFileSharing.docx" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    And I pause execution for "5" seconds
    When I close LWC modal by clicking the top right x button
    And I refresh the page
    And I perform scroll on page layout
    Then I softly can see row level action button "Edit" against "TestFileSharing.docx" in table name "Attachments"
    #221541
    Then I softly can see row level action button "Delete" against "TestFileSharing.docx" in table name "Attachments"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221531 @Toverifitrytoattachblankfilethenerrormessageshouldbedisplayedas'Fileshouldnobeblank' @Vrushali @LWC-AttachmentTestSuit
  Scenario: validate msg "File should not be blank" after adding blank text file
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "AP-A11-001"
    When I click on "View" icon for "AP-A11-001" inside table
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Title I, II, III assurances" from dropdown of filetype
    When I upload attachment "blank.txt" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    Then I see the following message in the LWC page details :
      | File should not be blank. |

  @221543 @255188 @255352 @255439 @255862 @Toverify,Edittherecordonlybyrecordowner @Vrushali @LWC-AttachmentTestSuit
  Scenario: To verify, Edit the record only by the record owner
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "AP-A11-001"
    When I click on "View" icon for "AP-A11-001" inside table
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Attachments"
    And I select "General Assurances" from dropdown of filetype
    When I upload attachment "actionsAtFlexTable.png" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
      #255439 #255862
    Then I see the following message in the LWC page details :
      | Attachment added successfully. |
    And I pause execution for "5" seconds
    When I close LWC modal by clicking the top right x button
    And I refresh the page
    And I perform scroll on page layout
    And I pause execution for "5" seconds
    Then I softly can see row level action button "Edit" against "actionsAtFlexTable.png" in table name "Attachments"
    And I see row level action "Delete" file against "actionsAtFlexTable.png" in table name "Attachments"
      #255352
    Then I can see "Test" into column "Descrption" against value "actionsAtFlexTable.png"

  @255290 @Toverify,EditedrecordisdisplayedasexpectedonUI @Vrushali @LWC-AttachmentTestSuit
  Scenario: To verify, Edited the record is displayed as expected on the UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "AP-A11-001"
    When I click on "View" icon for "AP-A11-001" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Suspension" from dropdown of filetype
    When I upload attachment "TestFileSharing.docx" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    And I pause execution for "5" seconds
    When I close LWC modal by clicking the top right x button
    And I refresh the page
    And I pause execution for "10" seconds
    Then I softly can see row level action button "Edit" against "TestFileSharing.docx" in table name "Attachments"

  @255419 @whenuserclicksonpageblockshrinkactionbuttonthencomponentgetsshrunk @Vrushali @LWC-AttachmentTestSuit
  Scenario: when the user clicks on page block shrink action button then the component gets shrunk
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "AP-A11-001"
    When I click on "View" icon for "AP-A11-001" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on "up" arrow in "Attachments" table
    Then I do not see "Attachments" table
    And I pause execution for "5" seconds
    And I click on "down" arrow in "Attachments" table
    Then I softly see column "Name" in table name "Attachments"
    Then I softly see column "Type" in table name "Attachments"
    Then I softly see column "Description" in table name "Attachments"
    Then I softly see column "Date Attached" in table name "Attachments"
    Then I softly see column "Attached By" in table name "Attachments"
    Then I softly see column "Actions" in table name "Attachments"

  @255548 @Validatemessage"Pleaseselecttype" @Vrushali @LWC-AttachmentTestSuit
  Scenario: Validate message  "Please select type"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "AP-A11-001"
    When I click on "View" icon for "AP-A11-001" inside table
    When I navigate to "Files" sub tab
    And I click on top right button "Add" in tableName "Attachments"
    When I upload attachment "TestFileSharing.docx" in attachments LWC modal
    And I enter value "Automation" into description box
    And I click on "Save" button in LWC
    Then I see the following message in the LWC page details :
      | Please select type. |

  @255555 @Validatemessage"Fileshouldnotbeblank." @Vrushali @LWC-AttachmentTestSuit
  Scenario:Validate message "File should not be blank."
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "AP-A11-001"
    When I click on "View" icon for "AP-A11-001" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Suspension" from dropdown of filetype
    And I enter value "Automation Testing" into description box
    And I click on "Save" button in LWC
    Then I see the following message in the LWC page details :
      | File should not be blank. |

  @255561 @Validatemessage"Pleaseentervalueindescriptionfield" @Vrushali @LWC-AttachmentTestSuit
  Scenario: Validate message "Please enter value in description field"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "AP-A11-001"
    When I click on "View" icon for "AP-A11-001" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Suspension" from dropdown of filetype
    When I upload attachment "TestFileSharing.docx" in attachments LWC modal
    And I click on "Save" button in LWC
    Then I see the following message in the LWC page details :
      | Please enter value in description field. |

  @255613 @ValidateRequiredfield'asterisk'symbolonattachmentmodal @Vrushali @LWC-AttachmentTestSuit
  Scenario: Validate Required field 'asterisk ' symbol on attachment modal
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "AP-A11-001"
    When I click on "View" icon for "AP-A11-001" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    Then I see asterisk mark at "Type" field in LWC
    Then I see asterisk mark at "File" field in LWC
    Then I see asterisk mark at "Description" field in LWC

  @256575 @Toverifytypefieldisclickableanduserisabletoselectit. @Vrushali @LWC-AttachmentTestSuit
  Scenario:To verify type field is clickable and user is able to select it.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "AP-A11-001"
    When I click on "View" icon for "AP-A11-001" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    Then I see "General Assurances" from dropdown of filetype is displayed and enabled
    Then I see "Civil rights assurances" from dropdown of filetype is displayed and enabled
    Then I see "Certification regarding Dabarment" from dropdown of filetype is displayed and enabled
    Then I see "Suspension" from dropdown of filetype is displayed and enabled
    Then I see "Ineligibility and Voluntary Exclusion Lower Tier Covered Transactions" from dropdown of filetype is displayed and enabled
    Then I see "Title I, II, III assurances" from dropdown of filetype is displayed and enabled
    Then I see "Idea assurances" from dropdown of filetype is displayed and enabled
    Then I see "Justification for project cost" from dropdown of filetype is displayed and enabled

  @255935 @Validateerrormsg"ThedocumentyouareattemptingtouploadexistsintheWorkspace' @Vrushali @LWC-AttachmentTestSuit
  Scenario:Validate error msg"The document you are attempting to upload exists in the Workspace'
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "AP-A11-001"
    When I click on "View" icon for "AP-A11-001" inside table
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Suspension" from dropdown of filetype
    When I upload attachment "TestAutomationFile.jpg" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    And I pause execution for "5" seconds
    And I select "Suspension" from dropdown of filetype
    When I upload attachment "TestAutomationFile.jpg" in attachments LWC modal
    And I pause execution for "2" seconds
    And I enter value "Test Automation" into description box
    And I click on "Save" button in LWC
    Then I see the following message in the LWC page details :
      | The document you are attempting to upload exists in the Workspace |

  @221566 @255405 @Toverify,Totalrecordsshoulddisplayedasperrecordadding&deleting
  Scenario Outline:To verify, Total records should displayed as per record adding & deleting
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "TestFileSharing.docx" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" button in LWC
    When I close LWC modal by clicking the top right x button
    And I refresh the page
    Then I see total records count in "Snapshot History" table equals to Total record displayed on UI
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221530 @Toverifyallfilesaregettingattachedfrom'Uploadfilefromworkspace'section
  Scenario: To verify all files are getting attached from 'Upload file from workspace' section
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I get "EGMS ID" of program
    And I click on top right button "Add" in tableName "Attachments"
    And I click on "Upload file from workspace" in modal
    And I click on "select all checkbox" in "Upload file from workspace" tab
    Then I see all files get selected "Upload file from workspace__item" tab

  @221538
  Scenario: To verify only one file is getting attached even user clicked multiple times on attach button in upload file from workspace. (Admin)
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    And I click inside "Primary Funding Organization" and select "Health and Human Services" from table in Create Program modal
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org_LWC.xlsx"
    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I get "EGMS ID" of program
    And I click on top right button "Add" in tableName "Attachments"
    And I click on "Upload file from workspace" in modal
    And I click on "2" checkbox inside "Upload file from workspace"
    And I click on "Attach" button on "Add Attachments" modal
    And I click on "Attach" button on "Add Attachments" modal
    Then I see only one file should get attached