@Attachment-Component @regression-LWC @AttachmentLWC
Business Need: Attachment Component Scenarios
  Test all AttachmentLWC component based scenarios
  As a configuration manager i make different configurational changes in AttachmentLWC component and will validate them.

 @221532 @255614 @ValidateRequiredfieldasterisk'symbolonattachmentmodal @Vrushali @LWC-AttachmentTestSuit
  Scenario Outline:To verify asterisk symbol is visible for all mandatory fields such as Type,File,Description on UI with no space between word and symbol
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
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
  Scenario: To verify user is able to save '.jpg' file
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
#    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
#    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
#    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "10" seconds
    And I perform scroll on page layout
    And I click on top right button "Add" in tableName "Attachments"
    And I see "Add Attachments" is in attachment LWC modal window
      #255886
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "SharingAtCollabTest.png" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" on LWC modal
    And I pause execution for "5" seconds
      #221534 #221534
    And I select "Financial Artifacts" from dropdown of filetype
    When I upload attachment "TestAutomationFile.jpg" in attachments LWC modal
    And I enter value "Automation Test" into description box
    And I click on "Save" on LWC modal
    And I pause execution for "5" seconds
      #255891
    And I select "Other Artifacts" from dropdown of filetype
    When I upload attachment "SheetJSFileUpload.xlsx" in attachments LWC modal
    And I enter value "Test Description" into description box
    And I click on "Save" on LWC modal
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
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
#    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
#    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
#    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "10" seconds
    And I perform scroll on page layout
    And I click on top right button "Add" in tableName "Attachments"
    And I see "Add Attachments" is in attachment LWC modal window
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "RecordLevelDuplicateFile.pdf" in attachments LWC modal
    And I enter value "Test Description" into description box
    And I click on "Save" on LWC modal
    And I pause execution for "6" seconds
      #255889
    And I select "Financial Artifacts" from dropdown of filetype
    When I upload attachment "DuplicateFile.txt" in attachments LWC modal
    And I enter value "Test Automation" into description box
    And I click on "Save" on LWC modal
    And I pause execution for "5" seconds
      #255890
    And I select "Other Artifacts" from dropdown of filetype
    When I upload attachment "TestFileSharing.docx" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" on LWC modal
    And I pause execution for "5" seconds
    Then I can see attach the "RecordLevelDuplicateFile.pdf" file format in the attachment section
    Then I can see attach the "DuplicateFile.txt" file format in the attachment section
    Then I can see attach the "TestFileSharing.docx" file format in the attachment section

  @221523 @255441 @255863 @221533 @255008 @Validatemessage"Attachmentaddedsuccessfully" @@LWC-AttachmentTestSuit @Vrushali
  Scenario Outline: To verify, admin User are able to add the attachment in the LWC Attachment page block
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
#    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
#    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
#    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "10" seconds
    And I perform scroll on page layout
    And I click on top right button "Add" in tableName "Attachments"
    #255441
    Then I see "Add Attachments" is in attachment LWC modal window
    And I select "Other Artifacts" from dropdown of filetype
    When I upload attachment "TestAutomation.txt" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" on LWC modal
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
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I perform scroll on page layout
    And I click on top right button "Add" in tableName "Attachments"
    When I upload attachment "SendEmailAttachment.pdf" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" on LWC modal
    Then I see the following message in the LWC page details :
      | Please select type. |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221525 @255556 @Validatemessage"Fileshouldnotbeblank" @vrushali @LWC-AttachmentTestSuit
  Scenario Outline: To verify, user is not able to save attachment if mandatory field 'File' is not filled and getting error message as 'File should not be blank'. (Admin)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    And I enter value "Test" into description box
    And I click on "Save" on LWC modal
    Then I see the following message in the LWC page details :
      | File should not be blank. |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221526 @255562 @Validatemessage"Pleaseentervalueindescriptionfield" @vrushali @LWC-AttachmentTestSuit
  Scenario Outline: To verify, user is not able to save attachment if mandatory field 'Description' is not filled and getting error message as 'Please enter value in description field'. (Admin)
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "SendEmailAttachment.pdf" in attachments LWC modal
    And I click on "Save" on LWC modal
    Then I see the following message in the LWC page details :
      | Please enter value in description field. |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @221536 @255936 @Validatemsg"ThedocumentyouareattemptingtouploadexistsintWorkspace"foraddingduplicatefile
  Scenario Outline: Validate msg "The document you are attempting to upload exists in the Workspace" for adding duplicate file
    When I login as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
#    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
#    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
#    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "TestAutomationFile.jpg" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" on LWC modal
    And I pause execution for "5" seconds
    And I select "Financial Artifacts" from dropdown of filetype
    When I upload attachment "TestAutomationFile.jpg" in attachments LWC modal
    And I pause execution for "2" seconds
    And I enter value "Test Automation" into description box
    And I click on "Save" on LWC modal
    Then I see the following message in the LWC page details :
      | The document you are attempting to upload exists in the Workspace. |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @255672 @validatemsg"Fileshouldnotbeblank"afteraddingblanktextfile
  Scenario: validate msg "File should not be blank" after adding blank text file
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
#    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
#    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
#    And I click modal button "Save and Continue"
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    And I select "Program Artifacts" from dropdown of filetype
    When I upload attachment "blank.txt" in attachments LWC modal
    And I enter value "Test" into description box
    And I click on "Save" on LWC modal
    Then I see the following message in the LWC page details :
      | File should not be blank. |

  @221539
  Scenario: sdsfd
    Given I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I pause execution for "5" seconds
    And I click on top right button "Add" in tableName "Attachments"
    Then I see "Program Artifacts" from dropdown of filetype is displayed and enabled
    Then I see "Financial Artifacts" from dropdown of filetype is displayed and enabled
    Then I see "Other Artifacts" from dropdown of filetype is displayed and enabled

