@libraryFiles-component @regression
Feature: Library Files Component Scenarios
  Test all library files component based scenarios
  As a configuration manager i make different configurations changes in library files component and will validate them.

  @70260 @validateThatAccessGivenLibraryShouldDisplayOnUIForViewerProfileHomePhase
  Scenario: Verify that govgrant Viewer access given library is displayed under home phase library for Viewer profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    Then I see library/folder/file "Department of Community Health" is displayed under files library

  @70261 @validateThatAccessGivenFolderShouldDisplayOnUIForViewerProfileHomePhase
  Scenario: Verify that govgrant Viewer access given folder is displayed under home phase library for Viewer profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I see library/folder/file "testAutomationFolder1" is displayed under files library

  @70262 @validateThatAccessGivenFileShouldDisplayOnUIForViewerProfileHomePhase
  Scenario: Verify that govgrant Viewer access given file is displayed under home phase library for Viewer profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder1"
    Then I see library/folder/file "SendEmailAttachment.png" is displayed under files library

  @70263 @validateThatDownloadDropdownOptionIsDisplayedAtFileForViewerProfileHomePhase
  Scenario: Verify that Dropdown Option as Download is Displayed at File under home phase library for Viewer profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder1"
    When I click on dropdown at library/folder/file "SendEmailAttachment.png"
    Then I see "Download" option is present at library/folder/file "SendEmailAttachment.png"

  @70264 @validateThatFileShouldGetDownloadFromFolderForViewerProfileHomePhase
  Scenario: Verify that file is getting download from folder under home phase library for Viewer profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder2"
    When I click on dropdown at library/folder/file "automationTestingOfFiles.xls"
    When I click on "Download" option at library/folder/file "automationTestingOfFiles.xls"
    Then I see "First Name" in downloaded xls or csv file "govgrants"

  @70282 @validateThatAccessGivenLibraryShouldDisplayOnUIForAuthorProfileHomePhase
  Scenario: Verify that govgrant Viewer access given library is displayed under home phase library for Viewer profile
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    Then I see library/folder/file "Department of Community Health" is displayed under files library

  @70283 @validateThatByClickOnLibraryMultipleFoldersShouldDisplayedOnUIForAuthorProfileHomePhase
  Scenario: Verify that By click on library expand icon, multiple folders Should get displayed under home phase library by author
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I softly see library/folder/file "testAutomationFolder1" is displayed under files library
    Then I softly see library/folder/file "testAutomationFolder2" is displayed under files library
    Then I collect all the soft asserts

  @70285 @validateThatByClickOnAddNewFolderAFolderShouldGetAddedInLibraryByAuthor-HomePhase @reqChangeInMsg
  Scenario: Verify that By click on Add New Folder, a folder should get added under home phase library by author
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I enter value as "testAutomationFolder3" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    Then I softly see library/folder/file "testAutomationFolder3" is displayed under files library
    When I click on dropdown at library/folder/file "testAutomationFolder3"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolder3"
    #Then I softly see the following messages in the page details :
     # | Folder testAutomationFolder3 deleted successfully. |
    When I pause execution for "5" seconds
    Then I collect all the soft asserts

  @70289 @validateThatByClickOnRenameFolderAnUpdatedFolderShouldGetShownInLibraryByAuthor-HomePhase @reqChangeInMsg
  Scenario: Verify that By click on Rename, an updated folder name should get displayed under home phase library by author
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I enter value as "testAutomationFolder4" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    When I pause execution for "10" seconds
    When I click on dropdown at library/folder/file "testAutomationFolder4"
    When I click on "Rename Folder" option at library/folder/file "testAutomationFolder4"
    When I enter value as "testAutomationFolder4-Renamed" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    When I pause execution for "5" seconds
    Then I softly see library/folder/file "testAutomationFolder4-Renamed" is displayed under files library
    When I click on dropdown at library/folder/file "testAutomationFolder4-Renamed"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolder4-Renamed"
    #Then I softly see the following messages in the page details :
     # | Folder testAutomationFolder3 deleted successfully. |
    Then I collect all the soft asserts

  @70305 @validateThatAccessGivenLibraryShouldDisplayOnUIForAdminProfileHomePhase
  Scenario: Verify that govgrant Viewer access given library is displayed under home phase library for Admin profile
    When I login as "Automation" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    Then I see library/folder/file "Department of Community Health" is displayed under files library

  @70307 @validateThatByClickOnAddNewFolderAFolderShouldGetAddedInLibraryByAdmin-HomePhase @reqChangeInMsg
  Scenario: Verify that By click on Add New Folder, a folder should get added under home phase library by author
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I enter value as "testAutomationFolder3" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    Then I softly see library/folder/file "testAutomationFolder3" is displayed under files library
    When I click on dropdown at library/folder/file "testAutomationFolder3"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolder3"
    #Then I softly see the following messages in the page details :
     # | Folder testAutomationFolder3 deleted successfully. |
    When I pause execution for "5" seconds
    Then I collect all the soft asserts

  @70337 @validateThatByClickOnCancelButtonAModalWindowGetsClosed-HomePhase
  Scenario: Verify that Add new Folder Modal should get Closed when click on cancel button - Home phase
    When I login as "Automation" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I click on "Cancel" button in send email modal
    Then I see "New Folder" modal window is not displayed

  @70306 @validateThatAdminCanSeeAllActionsAtLibrary-HomePhase
  Scenario: Verify that admin can see add new folder,upload file, download file actions- Home phase
    When I login as "Automation" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    Then I softly see "Add New Folder" option is present at library/folder/file "Department of Community Health"
    Then I softly see "Upload File" option is present at library/folder/file "Department of Community Health"
    Then I softly see "Download Files" option is present at library/folder/file "Department of Community Health"
    Then I collect all the soft asserts

  @70546 @validateThatAdminCanSeeAllActionsAtFolder-HomePhase
  Scenario: Verify that admin can see add new folder,upload file, download file, Delete folder, Rename Folder actions at Folder- Home phase
    When I login as "Automation" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    Then I softly see "Add New Folder" option is present at library/folder/file "testAutomationFolder1"
    Then I softly see "Upload File" option is present at library/folder/file "testAutomationFolder1"
    Then I softly see "Download Files" option is present at library/folder/file "testAutomationFolder1"
    Then I softly see "Delete Folder" option is present at library/folder/file "testAutomationFolder1"
    Then I softly see "Rename Folder" option is present at library/folder/file "testAutomationFolder1"
    Then I collect all the soft asserts

  @70547 @validateThatAdminCanSeeAllActionsAtFile-HomePhase
  Scenario: Verify that admin can see download, Edit, Delete actions at File - Home phase
    When I login as "Automation" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder1"
    When I click on dropdown at library/folder/file "SendEmailAttachment.png"
    Then I softly see "Edit File" option is present at library/folder/file "SendEmailAttachment.png"
    Then I softly see "Delete File" option is present at library/folder/file "SendEmailAttachment.png"
    Then I softly see "Download File" option is present at library/folder/file "SendEmailAttachment.png"
    Then I collect all the soft asserts

  @70284 @validateThatAuthorCanSeeAllActionsAtLibrary-HomePhase
  Scenario: Verify that admin can see add new folder,upload file, download file actions- Home phase
    When I login as "Automation-PM" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    Then I softly see "Add New Folder" option is present at library/folder/file "Department of Community Health"
    Then I softly see "Upload File" option is present at library/folder/file "Department of Community Health"
    Then I softly see "Download Files" option is present at library/folder/file "Department of Community Health"
    Then I collect all the soft asserts

  @70354 @validateThatIfAttachmentNotUploadedThenUploadButtonIsDisabled-HomePhase
  Scenario: Verify that Upload button is disabled when user click on upload button without uploading Attachment - home phase library
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    Then I see "Upload" button is disabled at modal under library

  @70358 @validateThatAddNewFolderOptionIsPresentAtExistingFolderDropDownMenuByAdmin-HomePhase
  Scenario: Verify that Add New Folder option is present at existing folder drop-down menu under home phase library - by admin
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    Then I see "Add New Folder" option is present at library/folder/file "testAutomationFolder1"

  @70359 @validateThatByClickOnAddNewFolderAFolderShouldGetAddedInExistingFolderByAdmin-HomePhase @reqChangeInMsg
  Scenario: Verify that By click on Add New Folder, a folder should get added under home phase library - by admin
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    When I click on "Add New Folder" option at library/folder/file "testAutomationFolder1"
    When I enter value as "testAutomationFolderInFolder" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    Then I softly see library/folder/file "testAutomationFolderInFolder" is displayed under files library
    When I click on expand icon at library/folder "testAutomationFolder1"
    When I click on dropdown at library/folder/file "testAutomationFolderInFolder"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolderInFolder"
    #Then I softly see the following messages in the page details :
     # | Folder testAutomationFolder3 deleted successfully. |
    When I pause execution for "5" seconds
    Then I collect all the soft asserts

  @70360 @validateThatDeleteFolderIsDisplayedInLibraryByAuthor-HomePhase
  Scenario: Verify that the Delete folder option is available at library dropdown under home phase by author
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    Then I see "Delete Folder" option is present at library/folder/file "testAutomationFolder1"

  @70361 @validateThatIfMultipleFoldersArePresentInFolderThenOnDeleteAnAlertMsgIsDisplayedInLibrary-HomePhase
  Scenario: Verify that if multiple folders are present in folder then on delete operation an alert message is displayed - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder2"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolder2"
    Then I see the following messages in the page details contains:
      | You can delete a Content Folder only if it's empty. |

  @70362 @validateThatFolderCanBeDeletedFromLibraryByAuthor-HomePhase
  Scenario: Verify that folder present under library can be deleted by author - Home phase
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I enter value as "testAutomationFolderByAuthor" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    And I pause execution for "2" seconds
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolderByAuthor"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolderByAuthor"
    And I pause execution for "3" seconds
    Then I do not see library/folder/file "testAutomationFolderByAuthor" is displayed under files library

  @70363 @validateThatAlertMessageIsDisplayedByClickOnSaveButtonIfFolderNameIsEmptyAtRenameFolderOperation-HomePhase
  Scenario: Verify that required fields validation msg appears below folder name field under Rename folder modal - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    When I click on "Rename Folder" option at library/folder/file "testAutomationFolder1"
    When I enter value as "" in field "Folder Name" at Library Files
    Then I see the text containing :
      | Folder name is required |

  @70364 @validateThatFolderNameIsNotGettingRenamedByClickOnCloseIconAtRenameFolderOperation-HomePhase
  Scenario: Verify that that the cross button works in rename folder modal - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    When I click on "Rename Folder" option at library/folder/file "testAutomationFolder1"
    When I click on "×" icon at "Edit Folder" modal under Library
    Then I see library/folder/file "testAutomationFolder1" is displayed under files library

  @70365 @validateThatAfterClickOnCancelButtonAtEditFolderModalTheFolderNameIsNotRenamed-HomePhase
  Scenario: Verify that by click on cancel button at edit folder modal , existing folder name is not changed - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    When I click on "Rename Folder" option at library/folder/file "testAutomationFolder1"
    When I enter value as "FolderRename" in field "Folder Name" at Library Files
    When I click on "Cancel" button in send email modal
    Then I see library/folder/file "testAutomationFolder1" is displayed under files library

  @70409 @validateThatFileShouldGetDownloadFromFolderForAuthorProfileHomePhase @wip
  Scenario: Verify that file is getting download from folder under home phase library for Author profile
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder2"
    When I click on dropdown at library/folder/file "automationTestingOfFiles.xls"
    When I click on "Download" option at library/folder/file "automationTestingOfFiles.xls"
    Then I see "First Name" in downloaded xls or csv file "automationTestingOfFiles"

  @70367 @validateThatWhenClickOnDownloadFileAtLibraryThenFilesFromThatLibraryGetsDownloadedAtHomePhase
  Scenario: Verify that if click on download at library then files only from that library is getting downloaded under home phase library
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Download Files" option at library/folder/file "Department of Community Health"
    Then I softly see "Program Name" in downloaded xls or csv file "govgrants"
    Then I softly cannot see "First Name" in downloaded xls or csv file "govgrants"
    Then I collect all the soft asserts

  @70433 @validateThatFolderWithSameNameIsNotGettingCreatedUnderSameLibrary-AtHomePhase
  Scenario: Verify that if user create folder with name same as existing then an alert message is displayed - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I enter value as "testAutomationFolder1" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    Then I see the following messages in the page details contains:
      | A Content Folder with the name testAutomationFolder1 already exists in the Content Folder 07H1C000000kCx2. |

  @70434 @validateDeletionOfFolderHavingFilesInItWithAdminUser-HomePhase
  Scenario: Verify that if folder is having files then user can't delete the folder - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolder1"
    Then I see the following messages in the page details contains:
      | You can delete a Content Folder only if it's empty. |

  @70286 @validateThatAuthorCanUploadFileUnderFolder-HomePhase
  Scenario: Verify that an author can upload file in folder under home phase library
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    When I click on "Upload File" option at library/folder/file "testAutomationFolder1"
    When I upload file "SendEmailAttachment.pdf" into library
    When I enter value as "test Automation Description" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder1"
    Then I softly see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    Then I collect all the soft asserts

  @70338 @validateThatAlertMessageIsDisplayedByClickOnSaveButtonIfFolderNameIsEmptyAtAddNewFolderOperation-HomePhase
  Scenario: Verify that required fields validation msg appears below folder name field under Add New folder modal - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I enter value as "" in field "Folder Name" at Library Files
    Then I see the text containing :
      | Folder name is required |

  @70355 @validateThatLibraryNameIsDisplayedByDefaultInUploadFilePDFModalWindow-HomePhase
  Scenario: Verify that Library name is displayed by default in upload file PDF modal window - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    Then I see default library/folder as "Department of Community Health" is displayed

  @71055 @validateThatFolderNameIsDisplayedByDefaultInUploadFilePDFModalWindow-HomePhase
  Scenario: Verify that folder name is displayed by default in upload file PDF modal window - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    When I click on "Upload File" option at library/folder/file "testAutomationFolder1"
    Then I see default library/folder as "testAutomationFolder1" is displayed

  @70407 @validateThatFileFromLibraryFolderShouldBeEditableByAuthor-HomePhase
  Scenario: Verify that By click on edit file, a file name should get updated and shown under library - by author
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "SheetJSFileUpload (8).xlsx"
    When I click on "Edit File" option at library/folder/file "SheetJSFileUpload (8).xlsx"
    When I enter value as "TestAutomationSheetJSFileUpload (8).xlsx" in field "Title" at Library Files
    When I click on "Save" button in send email modal
    When I pause execution for "6" seconds
    Then I softly see library/folder/file "TestAutomationSheetJSFileUpload (8).xlsx" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomationSheetJSFileUpload (8).xlsx"
    When I click on "Edit File" option at library/folder/file "TestAutomationSheetJSFileUpload (8).xlsx"
    When I enter value as "SheetJSFileUpload (8).xlsx" in field "Title" at Library Files
    When I click on "Save" button in send email modal
    Then I softly see library/folder/file "SheetJSFileUpload (8).xlsx" is displayed under files library
    Then I collect all the soft asserts

  @70410 @validateThatUserCanUploadFileFromFileList-HomePhase-FileList
  Scenario: Verify that user can upload file from HomePhase - FileList table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "WorkSpaceFilesFlexToggle" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "WorkSpaceFilesFlexToggle"
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "SendEmailAttachment.pdf" in "WorkSpaceFilesFlexToggle" panel
    Then I softly see "No Records Found" inside flex table with id "WorkSpaceFilesFlexToggle"
    Then I collect all the soft asserts

  @70411 @validateThatFileUploadedFromFileListIsDisplayedUnderRespectiveLibraryAtFilesLibraryTab-HomePhase-FileList
  Scenario: Verify thatfile uploaded from FileList tab is displayed under selected folder/library at library files tab - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I softly see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    Then I collect all the soft asserts

  @70435 @validateThatByClickOnRenameFolderAnUpdatedFolderShouldGetShownInLibraryByAdmin-HomePhase
  Scenario: Verify that By click on Rename, an updated folder name should get displayed under home phase library by admin
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I enter value as "testAutomationFolder4" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    When I pause execution for "10" seconds
    When I click on dropdown at library/folder/file "testAutomationFolder4"
    When I click on "Rename Folder" option at library/folder/file "testAutomationFolder4"
    When I enter value as "testAutomationFolder4-Renamed" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    When I pause execution for "5" seconds
    Then I softly see library/folder/file "testAutomationFolder4-Renamed" is displayed under files library
    When I click on dropdown at library/folder/file "testAutomationFolder4-Renamed"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolder4-Renamed"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "testAutomationFolder4-Renamed" is displayed under files library
    Then I collect all the soft asserts

  @70436 @validateThatFolderCanBeDeletedFromLibraryByAdminIfItIsEmpty-HomePhase
  Scenario: Verify that folder present under library can be deleted by admin if it is empty - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I enter value as "testAutomationFolderByAdmin" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    And I pause execution for "2" seconds
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolderByAdmin"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolderByAdmin"
    And I pause execution for "3" seconds
    Then I do not see library/folder/file "testAutomationFolderByAdmin" is displayed under files library

  @70491 @validateThatIfFileIsAssociatedWithAnyRecordThenShouldNotBeDeleted-HomePhase
  Scenario: Verify that if file is associate with any record then user can't delete that file - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "SheetJSFileUpload (8).xlsx"
    When I click on "Delete File" option at library/folder/file "SheetJSFileUpload (8).xlsx"
    Then I see the following messages in the page details contains:
      | You can not delete File SheetJSFileUpload (8).xlsx, as it is associated with business records. |

  @70495 @validateThatFileUploadedFromLibraryFilesIsDisplayedUnderFilesListTab-HomePhase-FileList
  Scenario: Verify that file uploaded from LibraryFiles tab is displayed under files list tab - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    When I upload file "SendEmailAttachment.pdf" into library
    When I enter value as "test Automation Description" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "SendEmailAttachment.pdf" in "WorkSpaceFilesFlexToggle" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "WorkSpaceFilesFlexToggle"
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "SendEmailAttachment.pdf" in "WorkSpaceFilesFlexToggle" panel
    Then I softly see "No Records Found" inside flex table with id "WorkSpaceFilesFlexToggle"
    Then I collect all the soft asserts

  @70490 @validateThatUserCanUploadFileOfWithoutEnteringDescriptionInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file without entering description under upload file modal - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I softly see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    Then I collect all the soft asserts

  @70493 @validateThatUserCanUploadFileOfTypeDocxInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type Doc.x under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    When I upload file "TestAutomationFile.docx" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I softly see library/folder/file "TestAutomationFile.docx" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomationFile.docx"
    When I click on "Delete File" option at library/folder/file "TestAutomationFile.docx"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "TestAutomationFile.docx" is displayed under files library
    Then I collect all the soft asserts

  @70496 @validateThatUserCanDownloadFileFromFileListTab-HomePhase-FileList
  Scenario: Verify that user can download file from FileList tab - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "automationTestingOfFiles.xls" in "WorkSpaceFilesFlexToggle" panel
    When I click on "Download" icon for "automationTestingOfFiles.xls" inside table
    Then I see "First Name" in downloaded xls or csv file "govgrants"

  @70499 @validateThatFileUploadedFromRecordDetailIsDisplayedUnderHomePhaseFilesListTab-RecordLevel
  Scenario: Verify that file added from record level is displayed under home phase files list tab - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "PlanningFilesgrid"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "PlanningFilesgrid" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "PlanningFilesgrid"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "SendEmailAttachment.pdf" in "WorkSpaceFilesFlexToggle" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "WorkSpaceFilesFlexToggle"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SendEmailAttachment.pdf" in "PlanningFilesgrid" panel
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "PlanningFilesgrid" panel
    Then I softly see "No Records Found" inside flex table with id "PlanningFilesgrid"
    Then I collect all the soft asserts

  @70534 @validateThatUserCanUploadFileOfTypeXlsxInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type Xlsx under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    When I upload file "SheetJSFileUploadDateTime.xlsx" into library
    When I enter value as "test Automation Description xlsx upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I softly see library/folder/file "SheetJSFileUploadDateTime.xlsx" is displayed under files library
    When I click on dropdown at library/folder/file "SheetJSFileUploadDateTime.xlsx"
    When I click on "Delete File" option at library/folder/file "SheetJSFileUploadDateTime.xlsx"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SheetJSFileUploadDateTime.xlsx" is displayed under files library
    Then I collect all the soft asserts

  @70535 @validateThatUserCanUploadFileOfTypeZipInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type Zip under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    When I upload file "TestAutomationFile.zip" into library
    When I enter value as "test Automation Description zip file upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I softly see library/folder/file "TestAutomationFile.zip" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomationFile.zip"
    When I click on "Delete File" option at library/folder/file "TestAutomationFile.zip"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "TestAutomationFile.zip" is displayed under files library
    Then I collect all the soft asserts

  @70536 @validateThatUserCanUploadFileOfTypeTxtInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type .txt under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    When I upload file "TestAutomation.txt" into library
    When I enter value as "test Automation Description text file upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I softly see library/folder/file "TestAutomation.txt" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomation.txt"
    When I click on "Delete File" option at library/folder/file "TestAutomation.txt"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "TestAutomation.txt" is displayed under files library
    Then I collect all the soft asserts

  @70537 @validateThatUserCanUploadFileOfTypePDFInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type pdf under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    When I upload file "SendEmailAttachment.pdf" into library
    When I enter value as "test Automation Description PDF upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I softly see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    Then I collect all the soft asserts

  @70538 @validateThatUserCanUploadFileOfTypePptxInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type pptx under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    When I upload file "TestAutomationFile.pptx" into library
    When I enter value as "test Automation Description Pptx upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I softly see library/folder/file "TestAutomationFile.pptx" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomationFile.pptx"
    When I click on "Delete File" option at library/folder/file "TestAutomationFile.pptx"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "TestAutomationFile.pptx" is displayed under files library
    Then I collect all the soft asserts

  @70539 @validateThatUserCanUploadFileOfTypeJPGInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type jpg under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    When I upload file "TestAutomationFile.jpg" into library
    When I enter value as "test Automation Description jpg upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I softly see library/folder/file "TestAutomationFile.jpg" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomationFile.jpg"
    When I click on "Delete File" option at library/folder/file "TestAutomationFile.jpg"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "TestAutomationFile.jpg" is displayed under files library
    Then I collect all the soft asserts

  @70497 @validateByClickOnCloseIconAtEditFileModalOperationAModalIsGettingClosed-HomePhase
  Scenario: Verify that a modal is getting closed by lick on cross button under edit file modal - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "automationTestingOfFiles.xls" in "WorkSpaceFilesFlexToggle" panel
    When I click on "Edit" icon for "automationTestingOfFiles.xls" inside table
    When I click on "×" icon at "File Edit" modal under Library
    Then I see "File Edit" modal window with id "WorkSpaceFilesmodalDiv" is not displayed

  @70498 @validateByClickOnCloseIconAtEditFileModalOperationAModalIsGettingClosed-HomePhase
  Scenario: Verify that a modal is getting closed by lick on cross button under edit file modal - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "automationTestingOfFiles.xls" in "WorkSpaceFilesFlexToggle" panel
    When I click on "Edit" icon for "automationTestingOfFiles.xls" inside table
    When I click on "Cancel" button in send email modal
    Then I see "File Edit" modal window with id "WorkSpaceFilesmodalDiv" is not displayed

  @70729 @validateThatUserCanDownloadFileFromPlanningFilesTableAtAttachmentTab-RecordLevel @wip @NeedDeleteAPI
  Scenario: Verify that user can download file from planning Files table at attachment tab - Record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "PlanningFilesgrid"
    When I upload file "SheetJSFileUpload.xlsx" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "SheetJSFileUpload.xlsx" in "PlanningFilesgrid" panel
    When I click on "Download" icon for "SheetJSFileUpload.xlsx" inside table
    Then I softly see "Organization" in downloaded xls or csv file "govgrants"

    @70730 @validateThatUserCanDeleteFileFromPlanningFilesTableAtAttachmentTab-RecordLevel
    Scenario: Verify that user can delete file from planning Files table at attachment tab - Record level
      When I login as "Automation" user
      When I setup my app as "As a Grantor"
      And I navigate to "Planning" tab
      And I click toggle button to select "Draft Programs"
      When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
      When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
      When I navigate to "Attachments" sub tab
      When I click on top right button "Add Files" in flex table with id "PlanningFilesgrid"
      When I upload file "SheetJSFileUpload.xlsx" into library
      When I click on SelectChange Folder in add file modal
      When I Select/Change Folder as "Department of Community Health" in add file modal
      When I enter value as "test Automation upload from files list" in field "Description" at Library Files
      When I click on "Upload" button in send email modal
      When I pause execution for "7" seconds
      When I perform quick search for "SheetJSFileUpload.xlsx" in "PlanningFilesgrid" panel
      When I click on "Delete" icon for "SheetJSFileUpload.xlsx" inside table
      When I click "Yes" on modal confirmation box
      When I pause execution for "3" seconds
      When I perform quick search for "SheetJSFileUpload.xlsx" in "PlanningFilesgrid" panel
      Then I see "No Records Found" inside flex table with id "SheetJSFileUpload.xlsx"

      @70731 @validateThatDescriptionAddedAtFileUploadModalIsDisplayedUnderPlanningFilesTableAtAttachmentTab-RecordLevel
      Scenario: Verify that description added at upload file modal is shown under planning files table - Record level
        When I login as "Automation" user
        When I setup my app as "As a Grantor"
        And I navigate to "Planning" tab
        And I click toggle button to select "Draft Programs"
        When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
        When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
        When I navigate to "Attachments" sub tab
        When I click on top right button "Add Files" in flex table with id "PlanningFilesgrid"
        When I upload file "TestAutomationFile.csv" into library
        When I click on SelectChange Folder in add file modal
        When I Select/Change Folder as "Department of Community Health" in add file modal
        When I enter value as "test Automation upload from record level" in field "Description" at Library Files
        When I click on "Upload" button in send email modal
        When I pause execution for "7" seconds
        When I perform quick search for "TestAutomationFile.csv" in "PlanningFilesgrid" panel
        Then I softly see value "test Automation upload from record level" for title "Description" inside table "PlanningFilesgrid"
        When I click on "Delete" icon for "TestAutomationFile.csv" inside table
        When I click "Yes" on modal confirmation box
        When I pause execution for "3" seconds
        When I perform quick search for "TestAutomationFile.csv" in "PlanningFilesgrid" panel
        Then I softly see "No Records Found" inside flex table with id "PlanningFilesgrid"
        Then I collect all the soft asserts