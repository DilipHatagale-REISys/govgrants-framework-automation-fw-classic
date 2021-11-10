@libraryFiles-component @regression-test5 @libraryFiles
Business Need: Library Files Component Scenarios
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
    Then I see "Download File" option is present at library/folder/file "SendEmailAttachment.png"

  @70282 @validateThatAccessGivenLibraryShouldDisplayOnUIForAuthorProfileHomePhase
  Scenario: Verify that govgrant Viewer access given library is displayed under home phase library for Viewer profile
    When I login as "Automation-EXE" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    Then I see library/folder/file "Secretary of Health" is displayed under files library

  @70283 @validateThatByClickOnLibraryMultipleFoldersShouldDisplayedOnUIForAuthorProfileHomePhase
  Scenario: Verify that By click on library expand icon, multiple folders Should get displayed under home phase library by author
    When I login as "Automation-EXE" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Secretary of Health"
    Then I softly see library/folder/file "AuthorFolder1" is displayed under files library
    Then I softly see library/folder/file "AdminCreatedFolder1" is displayed under files library

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
    When I pause execution for "4" seconds
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
    Then I do not see "New Folder" modal window is displayed

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

  @70284 @validateThatAuthorCanSeeAllActionsAtLibrary-HomePhase
  Scenario: Verify that admin can see add new folder,upload file, download file actions- Home phase
    When I login as "Automation-EXE" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    Then I softly see "Add New Folder" option is present at library/folder/file "Department of Community Health"
    Then I softly see "Upload File" option is present at library/folder/file "Department of Community Health"
    Then I softly see "Download Files" option is present at library/folder/file "Department of Community Health"

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
    When I click on expand icon at library/folder "testAutomationFolder1"
    Then I softly see library/folder/file "testAutomationFolderInFolder" is displayed under files library
    When I click on dropdown at library/folder/file "testAutomationFolderInFolder"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolderInFolder"
    When I pause execution for "5" seconds
    Then I softly do not see library/folder/file "testAutomationFolderInFolder" is displayed under files library

  @70360 @validateThatDeleteFolderIsDisplayedInLibraryByAuthor-HomePhase
  Scenario: Verify that the Delete folder option is available at library dropdown under home phase by author
    When I login as "Automation-EXE" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Secretary of Health"
    When I click on "Add New Folder" option at library/folder/file "Secretary of Health"
    When I enter value as "testAutomationFolderByAuthor" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    When I click on expand icon at library/folder "Secretary of Health"
    Then I softly see library/folder/file "testAutomationFolderByAuthor" is displayed under files library
    When I click on dropdown at library/folder/file "testAutomationFolderByAuthor"
    Then I softly see "Delete Folder" option is present at library/folder/file "testAutomationFolderByAuthor"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolderByAuthor"
    When I pause execution for "3" seconds
    Then I softly do not see library/folder/file "testAutomationFolderByAuthor" is displayed under files library

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
    When I login as "Automation-EXE" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Secretary of Health"
    When I click on "Add New Folder" option at library/folder/file "Secretary of Health"
    When I enter value as "testAutomationFolderByAuthor" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    When I click on expand icon at library/folder "Secretary of Health"
    When I click on dropdown at library/folder/file "testAutomationFolderByAuthor"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolderByAuthor"
    And I pause execution for "5" seconds
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
    When I login as "Automation-EXE" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Secretary of Health"
    When I click on dropdown at library/folder/file "AuthorFolder1"
    When I click on "Upload File" option at library/folder/file "AuthorFolder1"
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "test Automation Description" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I click on expand icon at library/folder "AuthorFolder1"
    Then I softly see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    Then I softly do not see library/folder/file "SendEmailAttachment.pdf" is displayed under files library

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
    When I login as "Automation-EXE" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Secretary of Health"
    When I click on dropdown at library/folder/file "AuthorFolder1"
    When I click on "Upload File" option at library/folder/file "AuthorFolder1"
    When I upload file "TestAutomation.txt" into library with sharing
    When I click on "Upload" button in send email modal
    When I click on expand icon at library/folder "AuthorFolder1"
    Then I softly see library/folder/file "TestAutomation.txt" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomation.txt"
    When I click on "Edit File" option at library/folder/file "TestAutomation.txt"
    When I enter value as "EditTestAutomation.txt" in field "Title" at Library Files
    When I click on "Save" button in send email modal
    When I pause execution for "4" seconds
    Then I softly see library/folder/file "EditTestAutomation.txt" is displayed under files library
    When I click on dropdown at library/folder/file "EditTestAutomation.txt"
    When I click on "Delete File" option at library/folder/file "EditTestAutomation.txt"
    When I pause execution for "3" seconds
    Then I softly do not see library/folder/file "EditTestAutomation.txt" is displayed under files library

  @70410 @validateThatUserCanUploadFileFromFileList-HomePhase-FileList @NeedDeleteAPI
  Scenario: Verify that user can upload file from HomePhase - FileList table
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

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
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SendEmailAttachment.pdf" is displayed under files library

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
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolderByAdmin"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolderByAdmin"
    And I pause execution for "5" seconds
    Then I do not see library/folder/file "testAutomationFolderByAdmin" is displayed under files library

  @70491 @validateThatIfFileIsAssociatedWithAnyRecordThenShouldNotBeDeleted-HomePhase
  Scenario: Verify that if file is associate with any record then user can't delete that file - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder2"
    When I click on dropdown at library/folder/file "FileAssociateWithRecordDND.xlsx"
    When I click on "Delete File" option at library/folder/file "FileAssociateWithRecordDND.xlsx"
    Then I see the following messages in the page details contains:
      | You can not delete File FileAssociateWithRecordDND.xlsx, as it is associated with business records. |

  @70495 @validateThatFileUploadedFromLibraryFilesIsDisplayedUnderFilesListTab-HomePhase-FileList @NeedDeleteAPI
  Scenario: Verify that file uploaded from LibraryFiles tab is displayed under files list tab - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "SendEmailAttachment.pdf" into library
    When I enter value as "test Automation Description" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

  @70490 @validateThatUserCanUploadFileOfWithoutEnteringDescriptionInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file without entering description under upload file modal - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SendEmailAttachment.pdf" is displayed under files library

  @70493 @validateThatUserCanUploadFileOfTypeDocxInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type Doc.x under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "TestAutomationFile.docx" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "TestAutomationFile.docx" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomationFile.docx"
    When I click on "Delete File" option at library/folder/file "TestAutomationFile.docx"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "TestAutomationFile.docx" is displayed under files library

  @70499 @validateThatFileUploadedFromRecordDetailIsDisplayedUnderHomePhaseFilesListTab-RecordLevel @NeedDeleteAPI
  Scenario: Verify that file added from record level is displayed under home phase files list tab - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70534 @validateThatUserCanUploadFileOfTypeXlsxInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type Xlsx under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "SheetJSFileUploadDateTime.xlsx" into library
    When I enter value as "test Automation Description xlsx upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "SheetJSFileUploadDateTime.xlsx" is displayed under files library
    When I click on dropdown at library/folder/file "SheetJSFileUploadDateTime.xlsx"
    When I click on "Delete File" option at library/folder/file "SheetJSFileUploadDateTime.xlsx"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SheetJSFileUploadDateTime.xlsx" is displayed under files library

  @70535 @validateThatUserCanUploadFileOfTypeZipInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type Zip under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "TestAutomationFile.zip" into library
    When I enter value as "test Automation Description zip file upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "TestAutomationFile.zip" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomationFile.zip"
    When I click on "Delete File" option at library/folder/file "TestAutomationFile.zip"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "TestAutomationFile.zip" is displayed under files library

  @70536 @validateThatUserCanUploadFileOfTypeTxtInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type .txt under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "TestAutomation.txt" into library
    When I enter value as "test Automation Description text file upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "TestAutomation.txt" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomation.txt"
    When I click on "Delete File" option at library/folder/file "TestAutomation.txt"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "TestAutomation.txt" is displayed under files library

  @70537 @validateThatUserCanUploadFileOfTypePDFInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type pdf under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "SendEmailAttachment.pdf" into library
    When I enter value as "test Automation Description PDF upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SendEmailAttachment.pdf" is displayed under files library

  @70538 @validateThatUserCanUploadFileOfTypePptxInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type pptx under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "TestAutomationFile.pptx" into library
    When I enter value as "test Automation Description Pptx upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "TestAutomationFile.pptx" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomationFile.pptx"
    When I click on "Delete File" option at library/folder/file "TestAutomationFile.pptx"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "TestAutomationFile.pptx" is displayed under files library

  @70539 @validateThatUserCanUploadFileOfTypeJPGInLibrarAndFolder-HomePhase
  Scenario: Verify that user can upload file of type jpg under library and folder - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "TestAutomationFile.jpg" into library
    When I enter value as "test Automation Description jpg upload" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "TestAutomationFile.jpg" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomationFile.jpg"
    When I click on "Delete File" option at library/folder/file "TestAutomationFile.jpg"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "TestAutomationFile.jpg" is displayed under files library

  @70497 @validateByClickOnCloseIconAtEditFileModalOperationAModalIsGettingClosed-HomePhase
  Scenario: Verify that a modal is getting closed by lick on cross button under edit file modal - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "Test Document 1" in "---program:-:workSpaceFilesFlexTableId---" panel
    When I click on "Edit" icon for "Test Document 1" inside table
    When I click on "×" icon at "File Edit" modal under Library
    Then I see "File Edit" modal window with id "---program:-:workSpaceFilesModalId---" is not displayed

  @70498 @validateByClickOnCloseIconAtEditFileModalOperationAModalIsGettingClosed-HomePhase
  Scenario: Verify that a modal is getting closed by lick on cross button under edit file modal - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "Test Document 2" in "---program:-:workSpaceFilesFlexTableId---" panel
    When I click on "Edit" icon for "Test Document 2" inside table
    When I click on "Cancel" button in send email modal
    Then I see "File Edit" modal window with id "---program:-:workSpaceFilesModalId---" is not displayed

  @70730 @validateThatUserCanDeleteFileFromPlanningFilesTableAtAttachmentTab-RecordLevel
  Scenario: Verify that user can delete file from planning Files table at attachment tab - Record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "SheetJSFileUpload.xlsx" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "SheetJSFileUpload.xlsx" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "SheetJSFileUpload.xlsx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I perform quick search for "SheetJSFileUpload.xlsx" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70731 @validateThatDescriptionAddedAtFileUploadModalIsDisplayedUnderPlanningFilesTableAtAttachmentTab-RecordLevel @NeedDeleteAPI
  Scenario: Verify that description added at upload file modal is shown under planning files table - Record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from record level" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "test Automation upload from record level" for title "Description" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.csv" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70356 @validateThatDescriptionFieldShouldAcceptMax255CharactersAtUploadFileModal-HomePhase @NeedDeleteAPI
  Scenario Outline: Verify that description field should accept 255 characters at upload file modal - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    When I upload file "TestAutomationFile.csv" into library
    When I enter value as "<enterValue>" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "<requiredValue>" for title "Description" inside table "---program:-:workSpaceFilesFlexTableId---"
    When I click on "Delete" icon for "TestAutomationFile.csv" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"
    Examples:
      | enterValue                                                                                                                                                                                                                                                           | requiredValue                                                                                                                                                                                                                                                   |
      | titletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitleti255title | titletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitleti255 |

  @70488 @validateThatQuickSearchResultIsDisplayedAndHighlightedInYellowColor-HomePhase
  Scenario: Verify that quick search result is displayed and highlighted in yellow color under library files - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I perform quick search for "Test" under files library
    Then I softly see library/folder/file as "testAutomationFolder1" highlighted with color
    Then I softly see library/folder/file as "testAutomationFolder2" highlighted with color
    Then I softly see library/folder/file as "TestSubFolder1-DND" highlighted with color
    Then I softly see library/folder/file as "FilePresentInsideFolderDND.xls" highlighted with color

  @71528 @validateThatQuickSearchResultCountIsDisplayed-HomePhase
  Scenario: Verify that quick search result count is displayed under library files - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I perform quick search for "TestDND3.png" under files library
    Then I softly see Label/Count as "Files - 1" is displayed

  @70732 @validateThatSelectedClassificationAtUploadModalIsDisplayedUnderPlanningFilesTable-RecordLevel @NeedDeleteAPI
  Scenario: Verify that selected classification at upload modal is displayed under planning files table - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library
    When I select Classification as "Medical Reports" at upload file modal
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "Medical Reports" for title "Classification" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.csv" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70733 @validateThatFileExtensionOfUploadedFileIsDisplayedUnderPlanningFilesTable-HomePhase @NeedDeleteAPI
  Scenario: Verify that file extension of uploaded is displayed under planning files table - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "csv" for title "File Extension" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.csv" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70734 @validateThatFileNameOfUploadedFileIsDisplayedUnderPlanningFilesTable-HomePhase @NeedDeleteAPI
  Scenario: Verify that file name of uploaded is displayed under planning files table as it is - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "TestAutomationFile.csv" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.csv" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70735 @validateThatFileUploadedAtAnyRecordIsVisibleOnlyAtThatRecordAndNotAtOtherRecords-RecordLevel @NeedDeleteAPI
  Scenario: Verify that file name of uploaded is displayed under planning files table as it is - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "TestAutomationFile.csv" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForRequiredBehaviourOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForRequiredBehaviourOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestAutomationFile.csv" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @71583 @validateThatSelectedClassificationAtUploadModalIsDisplayedUnderFilesListTable-RecordLevel @NeedDeleteAPI
  Scenario: Verify that selected classification at upload modal is displayed under files list table at Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library
    When I select Classification as "Medical Reports" at upload file modal
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "Medical Reports" for title "Classification" inside table "---program:-:workSpaceFilesFlexTableId---"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestAutomationFile.csv" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70737 @validateThatUserCanUploadDocxTypeFileUnderPlanningFilesTable-HomePhase @NeedDeleteAPI
  Scenario: Verify that user can upload .docx type of file under planning files table as it is - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.docx" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.docx" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "TestAutomationFile.docx" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomationFile.docx" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70738 @validateThatUserCanUploadPDFTypeFileUnderPlanningFilesTable-HomePhase @NeedDeleteAPI
  Scenario: Verify that user can upload .Pdf type of file under planning files table as it is - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70437 @validateThatSetAsDefaultFolderDropdownOptionIsNotDisplayedAtLibraryForViewerProfileHomePhase
  Scenario: Verify that Dropdown Option as Set As Default Folder is not Displayed at File under home phase library for Viewer profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    Then I softly do not see "Set As Default Folder" option is present at library/folder/file "Department of Community Health"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    Then I softly do not see "Set As Default Folder" option is present at library/folder/file "testAutomationFolder1"

  @70484 @validateThatSetAsDefaultFolderDropdownOptionIsNotDisplayedAtLibraryForAuthorProfileHomePhase
  Scenario: Verify that Dropdown Option as Set As Default Folder is not Displayed at File under home phase library for Author profile
    When I login as "Automation-EXE" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Secretary of Health"
    Then I softly do not see "Set As Default Folder" option is present at library/folder/file "Secretary of Health"
    When I click on expand icon at library/folder "Secretary of Health"
    When I click on dropdown at library/folder/file "AuthorFolder1"
    Then I softly do not see "Set As Default Folder" option is present at library/folder/file "AuthorFolder1"

  @70486 @validateThatByClickOnRefreshButtonQuickSearchResultIsGettingRefreshed-HomePhase
  Scenario: Verify that by click on Refresh button quick search result disappears - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I perform quick search for "Test" under files library
    When I click on "Refresh" button in send email modal
    Then I softly do not see Label/Count as "Folders - 3" is displayed
    Then I softly do not see Label/Count as "Files - 1" is displayed

  @70736 @validateThatUserCanUploadXLSTypeFileUnderPlanningFilesTable-HomePhase @NeedDeleteAPI
  Scenario: Verify that user can upload .xls type of file under planning files table as it is - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomation.txt" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomation.txt" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "TestAutomation.txt" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomation.txt" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomation.txt" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70739 @validateThatUserCanUploadjpgTypeFileUnderPlanningFilesTable-HomePhase @NeedDeleteAPI
  Scenario: Verify that user can upload .jpg type of file under planning files table as it is - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.jpg" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.jpg" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "TestAutomationFile.jpg" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.jpg" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomationFile.jpg" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70740 @validateThatUserCanUploadPngTypeFileUnderPlanningFilesTable-HomePhase @NeedDeleteAPI
  Scenario: Verify that user can upload .png type of file under planning files table as it is - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.jpg" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.jpg" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "TestAutomationFile.jpg" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.jpg" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomationFile.jpg" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70743 @validateThatRecordNameSearchedUsingQuickSearchShouldGetDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that by entering text in quick search box, respective record is displayed under upload file modal - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "DummyFile2_DND.jpg" in "WorkspaceFiles" panel
    Then I see "DummyFile2_DND.jpg" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @70744 @validateThatByClickOnLastArrowALastPageIsDisplayedUnderUploadFileModal-RecordLevel @needToUpdate
  Scenario: Verify that by click on Last navigation arrow , last page is displayed under upload file modal - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I click on page navigation arrow "Last" at table with id "WorkspaceFilesUpload" under upload file modal
    Then I see "DuplicateFile.txt" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @70745 @validateThatByClickOnFirstArrowAFirstPageIsDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that by click on first navigation arrow , a first page is displayed under upload file modal - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I click on page navigation arrow "Last" at table with id "WorkspaceFilesUpload" under upload file modal
    When I click on page navigation arrow "First" at table with id "WorkspaceFilesUpload" under upload file modal
#    Then I see "AssetLibraryTestData.pdf" shown in search table with id "WorkspaceFilesUpload" at file upload modal
    Then I softly see the text containing :
      | Showing 1 to |

  @70746 @validateThatByClickOnPagesDropdownAndBySelecting2ndPageThenRecordsFrom2ndPageAreDisplayed-RecordLevel
  Scenario: Verify that by click on pages dropdown and selecting 2nd page then 2nd page record is displayed under upload file modal - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I select "2" page from dropdown at search table with id "WorkspaceFilesUpload" at file upload modal
    Then I see "Showing 5 to 10" inside flex table with id "---program:-:WorkspaceFilesUploadId---"

  @70741 @validateThatUserCanUploadXlsxTypeFileUnderPlanningFilesTable-HomePhase @NeedDeleteAPI
  Scenario: Verify that user can upload .xlsx type of file under planning files table as it is - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "SheetJSFileUploadDateTime.xlsx" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "SheetJSFileUploadDateTime.xlsx" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "SheetJSFileUploadDateTime.xlsx" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "SheetJSFileUploadDateTime.xlsx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "SheetJSFileUploadDateTime.xlsx" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70629 @validateThatUserCanSearchFilesInGlobalSearchUnderAllTable-HomePhase
  Scenario: Verify that if file name is searched in global search-All tables then, it is displayed in files table - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "All"
    When I perform quick search inside global search "SendEmailAttachment.png"
    Then I see value "SendEmailAttachment.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"

  @70630 @validateThatUserCanSearchFilesInGlobalSearchUnderFilesTable-HomePhase
  Scenario: Verify that if file name is searched in global search-Files table then, it is displayed in files table - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Files"
    When I perform quick search inside global search "SendEmailAttachment.pdf"
    Then I see value "SendEmailAttachment.pdf" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"

  @70748 @validateThatUserCanViewFileUnderPlanningFilesTable-HomePhase @NeedDeleteAPI
  Scenario: Verify that by click on View action at file under planning files table , a view file modal is displayed- Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "View" icon for "SendEmailAttachment.pdf" inside table
    Then I softly see "File View" opens in overLay window
    When I click on "×" icon at "File View" modal under Library
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70749 @validateThatUserCanEditFileUnderPlanningFilesTable-HomePhase @NeedDeleteAPI
  Scenario: Verify that by click on Edit action at file under planning files table , a view file modal is displayed- Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Edit" icon for "SendEmailAttachment.pdf" inside table
    Then I softly see "File Edit" opens in overLay window
    When I click on "×" icon at "File Edit" modal under Library
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @70631 @validateThatIfUserSearchedInvalidDataInFilesInGlobalSearchUnderFilesTableThen-HomePhase
  Scenario: Verify that if file name is searched in global search-Files table then, it is displayed in files table - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Files"
    When I perform quick search inside global search "SendEmailAttachment.pdf"
    Then I see value "SendEmailAttachment.pdf" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"

  @81170 @validateLabelOfUploadFileFromComputerTabUnderPlanningFilesTable-RecordLevel
  Scenario: Verify that by click on Add file action at planning files table, first tab label displayed correctly - Planing Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I see tab label as "Upload File from Computer" at files library upload modal

  @81171 @validateLabelOfUploadFileFromLibraryTabUnderPlanningFilesTable-RecordLevel
  Scenario: Verify that by click on Add file action at planning files table, second tab label displayed correctly - Planing Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I see tab label as "Upload File from Library" at files library upload modal

  @81172 @validateClassificationNameUnderSelectDropDownAtPlanningFilesTable-HomePhase-RecordLevel
  Scenario: Verify name of classification under select classification field dropdown at add file modal - Planing Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I see Classification as "Select file classification" at upload file modal

  @81173 @validateUploadFileButtonNameAtPlanningFilesTable-RecordLevel
  Scenario: Verify upload file button name at add file modal - Planing Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I see label as "Choose a File OR Drag it here" is displayed at upload file button

  @81208 @validateUploadFileButtonNameAtPlanningFilesTable-HomePhase
  Scenario: Verify upload file button name at add file modal - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    Then I see label as "Choose a File OR Drag it here" is displayed at upload file button

  @81243 @validateThatSetAsDefaultFolderDropdownOptionIsNotDisplayedAtLibraryForSPIProfile-HomePhase
  Scenario: Verify that Dropdown Option as Set As Default Folder is not Displayed at library under home phase for SPI profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    Then I do not see "Set As Default Folder" option is present at library/folder/file "UnitedHealth Group"

  @81309 @validateThatSetAsDefaultFolderDropdownOptionIsNotDisplayedAtFolderForSPIProfile-HomePhase
  Scenario: Verify that Dropdown Option as Set As Default Folder is not Displayed at folder under home phase library for SPI profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on dropdown at library/folder/file "Library-Folder 1 DND"
    Then I do not see "Set As Default Folder" option is present at library/folder/file "Library-Folder 1 DND"

  @81236 @validateThatDefaultKeyWordIsNotDisplayedAtLibraryForSPIProfile-HomePhase
  Scenario: Verify that default keyword is not Displayed at Library under home phase library for SPI profile
    Given I have "customMetaData" configuration as below:
      | id                 | label            | booleanValue | customMetaDataApiName    |
      | m031C000000XZWpQAO | ExternalProfiles | false        | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label            | booleanValue | customMetaDataApiName    |
      | m031C000000XZWpQAO | ExternalProfiles | true         | GNT__KeyValueHolder__mdt |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    Then I do not see Default keyword "UnitedHealth Group" at library/folder inside "fileLibrary"

  @81302 @validateThatDefaultKeyWordIsNotDisplayedAtFolderForSPIProfile-HomePhase
  Scenario: Verify that  default keyword is not Displayed at folder under home phase library for SPI profile
    Given I have "customMetaData" configuration as below:
      | id                 | label            | booleanValue | customMetaDataApiName    |
      | m031C000000XZWpQAO | ExternalProfiles | false        | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label            | booleanValue | customMetaDataApiName    |
      | m031C000000XZWpQAO | ExternalProfiles | true         | GNT__KeyValueHolder__mdt |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I do not see Default keyword "testAutomationDefaultFolder" at library/folder inside "fileLibrary"

  @81311 @validateThatUploadFileFromLibraryTabIsNotDisplayedAtAddFileModalForSPIProfile-RecordLevel
  Scenario: Verify that upload file from library tab is not Displayed at add file modal for SPI profile
    Given I have "customMetaData" configuration as below:
      | id                 | label                       | booleanValue | customMetaDataApiName    |
      | m031C000000XZWkQAO | DisableUploadFromLibraryTab | false        | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label                       | booleanValue | customMetaDataApiName    |
      | m031C000000XZWkQAO | DisableUploadFromLibraryTab | true         | GNT__KeyValueHolder__mdt |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    Then I softly do not see tab label as "Upload File from Library" at files library upload modal
    Then I softly see tab label as "Upload File from Computer" at files library upload modal

  @81333 @validateThatDefaultKeyWordIsDisplayedAtLibraryForGovGrantAdminProfile-HomePhase
  Scenario: Verify that default keyword is Displayed at Library under home phase library for GovGrant Admin profile
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    Then I see Default keyword "UnitedHealth Group" at library/folder inside "fileLibrary"

  @81344 @validateThatDefaultKeyWordIsDisplayedAtFolderForGovGrantAdminProfile-HomePhase
  Scenario: Verify that default keyword is Displayed at folder under home phase library for GovGrant Admin profile
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I see Default keyword "testAutomationDefaultFolder" at library/folder inside "fileLibrary"

  @81359 @validateThatSetAsDefaultFolderDropdownOptionIsDisplayedAtLibraryGovGrantAdminProfile-HomePhase
  Scenario: Verify that Dropdown Option as Set As Default Folder is Displayed at library under home phase for GovGrant Admin profile
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    Then I see "Set As Default Folder" option is present at library/folder/file "Department of Community Health"

  @81336 @validateIfFolderIsSetAsDefaultThenItsNameIsDisplayedAsPre-SelectedFolderAtAddFileModalUnderPlanningFilesTable-RecordLevel
  Scenario: Verify if default folder is set then that folder name is displayed under select/change folder field at add file modal - Planing Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I see pre-selected library/folder as "testAutomationDefaultFolder" is displayed at add file modal

  @81337 @validateIfFolderIsSetAsDefaultThenItsNameIsDisplayedAsPre-SelectedFolderAtAddFileModalUnderPlanningFilesTable-PhaseLevel
  Scenario: Verify if default folder is set then that folder name is displayed under select/change folder field at add file modal - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    Then I see pre-selected library/folder as "testAutomationDefaultFolder" is displayed at add file modal

  @81525 @validateIfLibraryIsSetAsDefaultThenItsNameIsDisplayedAsPre-SelectedFolderAtAddFileModalUnderPlanningFilesTable-RecordLevel @wip @functionalityDeprecated
  Scenario: Verify if default library is set then that folder name is displayed under select/change folder field at add file modal - Planing Phase
    Given I have "customMetaData" configuration as below:
      | id                 | label            | booleanValue | customMetaDataApiName    |
      | m031C000000XZWpQAO | ExternalProfiles | false        | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label            | booleanValue | customMetaDataApiName    |
      | m031C000000XZWpQAO | ExternalProfiles | false        | GNT__KeyValueHolder__mdt |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    Then I see pre-selected library/folder as "UnitedHealth Group" is displayed at add file modal

  @81534 @validateIfLibraryIsSetAsDefaultThenItsNameIsDisplayedAsPre-SelectedFolderAtAddFileModalUnderPlanningFilesTable-PhaseLevel @wip @functionalityDeprecated
  Scenario: Verify if default library is set then that folder name is displayed under select/change folder field at add file modal - home Phase
    Given I have "customMetaData" configuration as below:
      | id                 | label            | booleanValue | customMetaDataApiName    |
      | m031C000000XZWpQAO | ExternalProfiles | false        | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label            | booleanValue | customMetaDataApiName    |
      | m031C000000XZWpQAO | ExternalProfiles | false        | GNT__KeyValueHolder__mdt |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    Then I see pre-selected library/folder as "UnitedHealth Group" is displayed at add file modal

  @81569 @validateThatSetAsDefaultFolderDropdownOptionIsDisplayedAtFoldersGovGrantAdminProfile-HomePhase
  Scenario: Verify that Dropdown Option as Set As Default Folder is Displayed at folder under home phase for GovGrant Admin profile
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder2"
    Then I see "Set As Default Folder" option is present at library/folder/file "testAutomationFolder2"

  @81592 @validateThatAuthorCannotEditFileUploadedByOtherUser-HomePhase @needToUpdate
  Scenario: Verify that author cannot see the edit option at file uploaded by other users
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Asset Library"
    When I click on dropdown at library/folder/file "MultipleFileUploadCollabDND.png"
    Then I see "Edit File" option is present at library/folder/file "MultipleFileUploadCollabDND.png"

  @81593 @validateThatAuthorCannotDeleteFileUploadedByOtherUser-HomePhase
  Scenario: Verify that author cannot see the Delete option at file uploaded by other users
    When I login as "Automation-EXE" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Secretary of Health"
    When I click on expand icon at library/folder "AdminCreatedFolder1"
    When I click on dropdown at library/folder/file "AdminCreatedFile.txt"
    Then I see "Delete File" option is present at library/folder/file "AdminCreatedFile.txt"

  @81646 @validateThatAuthorCannotDeleteFolderUploadedByOtherUser-HomePhase
  Scenario: Verify that author cannot see the Delete Folder option at file uploaded by other users
    When I login as "Automation-EXE" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Secretary of Health"
    When I click on dropdown at library/folder/file "AdminCreatedFolder1"
    Then I do not see "Delete Folder" option is present at library/folder/file "AdminCreatedFolder1"

  @81648 @validateThatAuthorCannotRenameFolderUploadedByOtherUser-HomePhase
  Scenario: Verify that author cannot see the rename Folder option at file uploaded by other users
    When I login as "Automation-EXE" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Secretary of Health"
    When I click on dropdown at library/folder/file "AdminCreatedFolder1"
    Then I do not see "Rename Folder" option is present at library/folder/file "AdminCreatedFolder1"

  @81745 @validateThatDefaultKeyWordIsDisplayedAtLibraryUnderSelectChangeFolderModalWindowForGovGrantAdminProfile-HomePhase
  Scenario: Verify that default keyword is Displayed at library at select or change folder modal for GovGrant Admin profile - -HomePhase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I click on SelectChange Folder in add file modal
    Then I see Default keyword "UnitedHealth Group" at library/folder inside "modaltemp"

  @81675 @validateThatDefaultKeyWordIsDisplayedAtLibraryUnderSelectChangeFolderModalWindowForGovGrantAdminProfile-RecordLevel
  Scenario: Verify that default keyword is Displayed at library at select or change folder modal for GovGrant Admin profile -Record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I click on SelectChange Folder in add file modal
    Then I see Default keyword "UnitedHealth Group" at library/folder inside "modaltemp"

  @81674 @validateThatDefaultKeyWordIsDisplayedAtFolderUnderSelectChangeFolderModalWindowForGovGrantAdminProfile-RecordLevel @wip @functionalityDeprecated
  Scenario: Verify that default keyword is Displayed at folder at select or change folder modal for GovGrant Admin profile -Record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | false         | Grantee State Program | GNT__PageBlockTitle__c    | Library View               |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I click on SelectChange Folder in add file modal
    And I pause execution for "2" seconds
    When I click on expand icon at library/folder "Department of Community Health"
    Then I see Default keyword "testAutomationDefaultFolder" at library/folder inside "modaltemp"

  @81512 @validateThatIfBlankFileUploadedFromRecordThenAlertMessageIsGettingDisplayed-RecordLevel
  Scenario: Verify that if blank doc file added from record level then alert message is displayed - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "testAutomationBlankData.docx" into library
    When I enter value as "test Automation blank file upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    Then I see the following messages in the page details contains:
      | Please verify that the file can be readable |

  @81515 @validateThatUserCanEditFileAndChangeFolderOfExistingFile-RecordLevel @wip @functionalityDeprecated
  Scenario: Verify that user is able to edit existing file and change folder of that file - record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | false         | Grantee State Program | GNT__PageBlockTitle__c    | Library View               |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "testAutomationFileDND.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Edit" icon for "testAutomationFileDND.png" inside table
    When I click on SelectChange Folder in add file modal
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I Select/Change Folder as "Library - Folder 2 DND" in add file modal
    When I click on "Save" button in send email modal
    When I pause execution for "3" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on expand icon at library/folder "Library - Folder 2 DND"
    Then I softly see library/folder/file "testAutomationFileDND.png" is displayed under files library
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "testAutomationFileDND.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Edit" icon for "testAutomationFileDND.png" inside table
    When I click on SelectChange Folder in add file modal
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I Select/Change Folder as "Library-Folder 1 DND" in add file modal
    When I click on "Save" button in send email modal
    When I pause execution for "4" seconds
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on expand icon at library/folder "Library-Folder 1 DND"
    Then I softly see library/folder/file "testAutomationFileDND.png" is displayed under files library

  @82664 @validateThatibraryViewIsAvailableAtRecordLevelForAdminUser-RecordLevel
  Scenario: Verify that library view is available at record level for admin user - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    Then I softly see library/folder/file "Department of Community Health" is displayed under files library
    Then I softly do not see library/folder/file "UnitedHealth Group" is displayed under files library
    Then I softly do not see library/folder/file "Asset Library" is displayed under files library

  @82740 @validateThatSingleLibraryIsDisplayedAtAddFileModalAsPerGivenActionUrlAtRecordLevelFor-RecordLevel
  Scenario Outline: Verify that single library is displayed at add file modal as per given action url in config - record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongDefaultValue> | PlanningFiles      | Name                      | Add Files                  |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Action URL Long | <actionUrlLongNewValue> | PlanningFiles      | Name                      | Add Files                  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I click on SelectChange Folder in add file modal
    Then I softly see library/folder/file "Department of Community Health" is displayed under files library
    Then I softly do not see library/folder/file "UnitedHealth Group" is displayed under files library

    Examples:
      | actionUrlLongNewValue                                                                                                          | actionUrlLongDefaultValue                                                                           |
      | /apex/SalesforceFiles?pageName=GNT__FileUpload&parentId={!Program__c.Id}&pageBlockId={!pageBlockId}&workspaceId={!workspaceId} | /apex/SalesforceFiles?pageName=GNT__FileUpload&parentId={!Program__c.Id}&pageBlockId={!pageBlockId} |

  @83048 @validateThatAssertLibraryIsDisplayedAtAdminUser-HomePhase
  Scenario: Verify that assert library is displayed at home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    Then I see library/folder/file "Asset Library" is displayed under files library

  @83055 @validateThatAssertLibraryIsNotDisplayedAtAddFileModalUnderSelectChangeFolder-gPlanning
  Scenario: Verify that assert library is not displayed at add file modal under select/Change folder - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I click on SelectChange Folder in add file modal
    Then I do not see library/folder/file "Asset Library" is displayed under files library

  @83078 @validateThatAuthorCanSeeFilesPresentUnderAssetLibraryAtUploadFileModal-RecordLevel
  Scenario: Verify that author can see files from asset library at upload file from library modal- record level
    When I login as "Automation-Applicant" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "AssetLibraryTestData.pdf" in "WorkspaceFiles" panel
    Then I see "AssetLibraryTestData.pdf" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @83085 @validateThatOnlyAssetLibraryIsDisplayedToUserWhoDon'tHaveAccessOfAnyOtherLibraryAtUploadFileModal-RecordLevel
  Scenario: Verify that only asset library is displayed to the user who have access of only asset library at upload file from library modal window - record level
    When I login as "Automation-Applicant" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I see pre-selected library/folder as "Asset Library" is displayed at add file modal

  @83164 @validateThatAddFolderOptionAtAssetLibraryIsNotDisplayedForAllUsers-HomePhase
  Scenario: Verify that Add new folder option not available on asset library for all users
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Asset Library"
    Then I softly do not see "Add New Folder" option is present at library/folder/file "Asset Library"
    Then I softly see "Upload File" option is present at library/folder/file "Asset Library"
    Then I softly see "Download Files" option is present at library/folder/file "Asset Library"

  @83180 @validateThatAdminUserCanDeleteTheFilesFromAssetLibrary-HomePhase
  Scenario: Verify that admin user can delete the files from  asset library
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Asset Library"
    When I click on dropdown at library/folder/file "Asset Library"
    When I click on "Upload File" option at library/folder/file "Asset Library"
    When I upload file "TestAutomationFile.jpg" into library
    When I click on "Upload" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Asset Library"
    Then I softly see library/folder/file "TestAutomationFile.jpg" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomationFile.jpg"
    When I click on "Delete File" option at library/folder/file "TestAutomationFile.jpg"
    And I pause execution for "7" seconds
    Then I softly do not see library/folder/file "TestAutomationFile.jpg" is displayed under files library

  @83944 @validateThatFilesLinkedAtProgramAreDisplayedInApplicationRecordByChangingFilterClauseFromConfig-gApplication
  Scenario: Verify that files linked at program record are displayed at application record by changing filter criteria of files table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table            | Filter Criteria | {!ContentDocLinkId} | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Filter Criteria | parentId= '{!ProgramId}' | ApplicationFiles   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "ProgramRecordDoNotDelete.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "ProgramRecordDoNotDelete.png" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @83982 @validateThatFileLinkedAtProgramIsNotEditableInApplicationRecord-gApplication
  Scenario: Verify that file linked at program record and displayed in application record is not editable at application record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue   | filterId         |
      | Flex Table            | Filter Criteria | {!ContentDocLinkId} | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Filter Criteria | parentId= '{!ProgramId}' | ApplicationFiles   |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "ProgramRecordDoNotDelete.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Edit" icon for "ProgramRecordDoNotDelete.png" inside table
    When I enter value as "test Automation" in field "Description" at Library Files
    When I click on "Save" button in send email modal
    When I click on "×" icon at "File Edit" modal under Library
    When I pause execution for "7" seconds
    When I perform quick search for "ProgramRecordDoNotDelete.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "test Automation" for title "Description" inside table "---program:-:ApplicationFilesFlexGridId---"

  @83170 @validateThatFileCanBeDragAndDropFromOneLibraryToOtherLibrary-gHome
  Scenario: Verify that file can be drag and droped from one library to another lbrary
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I drag the "SendEmailAttachment.pdf" file from "UnitedHealth Group" folder and drop in "Department of Community Health" folder at library
    When I pause execution for "3" seconds
    When I click on expand icon at library/folder "Department of Community Health"
    When I drag the "SendEmailAttachment.pdf" file from "Department of Community Health" folder and drop in "UnitedHealth Group" folder at library
    When I pause execution for "3" seconds
    Then I see file "SendEmailAttachment.pdf" is displayed under "UnitedHealth Group" library or folder
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SendEmailAttachment.pdf" is displayed under files library

  @83086 @validateThatFileCanBeDragAndDropFromAssertLibraryToOther-gHome
  Scenario: Verify that file can be drag from assert library and droped into another library
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I drag the "DragAndDropFileDND.png" file from "UnitedHealth Group" folder and drop in "Asset Library" folder at library
    When I pause execution for "3" seconds
    When I click on expand icon at library/folder "Asset Library"
    When I drag the "DragAndDropFileDND.png" file from "Asset Library" folder and drop in "UnitedHealth Group" folder at library
    When I pause execution for "3" seconds
    Then I see file "DragAndDropFileDND.png" is displayed under "UnitedHealth Group" library or folder

  @70288 @validateThatFileCanBeDragAndDropFromoneFolderToOtherFolderAtSameLibrary-gHome
  Scenario: Verify that file can be drag from one folder and droped into another folder in same library
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on expand icon at library/folder "Library-Folder 1 DND"
    When I drag the "DragAndDropFolderToFolderDND.png" file from "Library-Folder 1 DND" folder and drop in "Library - Folder 2 DND" folder at library
    When I pause execution for "3" seconds
    When I click on expand icon at library/folder "Library - Folder 2 DND"
    When I drag the "DragAndDropFolderToFolderDND.png" file from "Library - Folder 2 DND" folder and drop in "Library-Folder 1 DND" folder at library
    When I pause execution for "3" seconds
    Then I see file "DragAndDropFolderToFolderDND.png" is displayed under "Library-Folder 1 DND" library or folder

  @101473 @validateThatUserCanAddFileWithSameNameUnderFolder-HomePhase
  Scenario: Verify that admin user can add file with same name under folder
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on dropdown at library/folder/file "Duplicate"
    When I click on "Upload File" option at library/folder/file "Duplicate"
    When I upload file "DuplicateFile.txt" into library
    When I click on "Upload" button in send email modal
    When I click on dropdown at library/folder/file "Duplicate"
    When I click on "Upload File" option at library/folder/file "Duplicate"
    When I upload file "DuplicateFile.txt" into library
    When I click on "Upload" button in send email modal
    When I click on expand icon at library/folder "Duplicate"
    Then I see files "DuplicateFile.txt" is displayed under "Duplicate" folder
    When I click on dropdown at library/folder/file "DuplicateFile.txt"
    When I click on "Delete File" option at library/folder/file "DuplicateFile.txt"
    When I click on dropdown at library/folder/file "DuplicateFile.txt"
    When I click on "Delete File" option at library/folder/file "DuplicateFile.txt"
    Then I softly do not see library/folder/file "DuplicateFile.txt" is displayed under files library

  @101476 @validateThatMultipleFilesWithSameNameAreDisplayedUnderOneFolder-HomePhase
  Scenario: Verify that admin user can add file with same name multiple times under same folder
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on dropdown at library/folder/file "Duplicate"
    When I click on "Upload File" option at library/folder/file "Duplicate"
    When I upload file "DuplicateFile.txt" into library
    When I click on "Upload" button in send email modal
    When I click on dropdown at library/folder/file "Duplicate"
    When I click on "Upload File" option at library/folder/file "Duplicate"
    When I upload file "DuplicateFile.txt" into library
    When I click on "Upload" button in send email modal
    When I click on dropdown at library/folder/file "Duplicate"
    When I click on "Upload File" option at library/folder/file "Duplicate"
    When I upload file "DuplicateFile.txt" into library
    When I click on "Upload" button in send email modal
    When I click on expand icon at library/folder "Duplicate"
    Then I see files "DuplicateFile.txt" is displayed under "Duplicate" folder
    When I click on dropdown at library/folder/file "DuplicateFile.txt"
    When I click on "Delete File" option at library/folder/file "DuplicateFile.txt"
    When I click on dropdown at library/folder/file "DuplicateFile.txt"
    When I click on "Delete File" option at library/folder/file "DuplicateFile.txt"
    When I click on dropdown at library/folder/file "DuplicateFile.txt"
    When I click on "Delete File" option at library/folder/file "DuplicateFile.txt"
    Then I softly do not see library/folder/file "DuplicateFile.txt" is displayed under files library

  @101098 @validateThatShowOptionsSectionIsDisplayedIfCustomMetadAtBooleanValueIsTrueToSystemAdminUser-HomePhase
  Scenario: Verify show options section is displayed to admin user if custom metadat boolean value is set to true
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on dropdown at library/folder/file "Library-Folder 1 DND"
    When I click on "Upload File" option at library/folder/file "Library-Folder 1 DND"
    Then I see sharing option as "Select visibility options" at upload file modal

  @101113 @validateThatShowOptionsSectionIsNotDisplayedForSPIUser-HomePhase
  Scenario: Verify that show options select box is not displayed to SPI user at upload file modal
    Given I have "customMetaData" configuration as below:
      | id                 | customMetaDataFullName | booleanValue | customSettingApiName |
      | m031C000000XZY7QAO | ShowSharingPrivacy     | true         | KeyValueHolder__mdt  |
    And I update custom metadata setting changes:
      | id                 | customMetaDataFullName | booleanValue | customSettingApiName |
      | m031C000000XZY7QAO | ShowSharingPrivacy     | false        | KeyValueHolder__mdt  |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on dropdown at library/folder/file "Library-Folder 1 DND"
    When I click on "Upload File" option at library/folder/file "Library-Folder 1 DND"
    Then I see sharing option as "Select visibility options" at upload file modal

  @101488 @validateThatShowOptionsSectionIsDisplayedWithAsteriskMarkAtUploadFileModalWindow-HomePhase
  Scenario: Verify that show options section is displayed wih asterisk mark at upload file modal window - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on dropdown at library/folder/file "Library-Folder 1 DND"
    When I click on "Upload File" option at library/folder/file "Library-Folder 1 DND"
    Then I see asterisk mark at "Visibility Options" field

  @101494 @validateThatIfSharingOptionIsNotSelectedThenUploadButtonIsDisabled-HomePhase @bugLogged127715
  Scenario: Verify that Upload button is disabled when user has not selected sharing options - home phase library
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Asset Library"
    When I click on "Upload File" option at library/folder/file "Asset Library"
    When I upload file "TestAutomationFile.csv" into library with sharing
    When I select sharing option as "Select visibility options" at upload file modal
    When I enter value as "test Automation upload from record level" in field "Description" at Library Files
    Then I see "Upload" button is disabled at modal under library

  @101496 @validateThatIfSharingOptionIsSelectedAsBlankThenAlertMessageIsDisabledelowFiels-HomePhase
  Scenario: Verify that sharing option is selected as blank then alert message is displayed below field - home phase library
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Asset Library"
    When I click on "Upload File" option at library/folder/file "Asset Library"
    When I select sharing option as "Select visibility options" at upload file modal
    When I enter value as "test Automation Description" in field "Description" at Library Files
    Then I see the text :
      | Complete this field. |

  @101499 @validateThatShowOptionsSectionIsDisplayedAtEditFileModalIfCustomMetadataAtBooleanValueIsTrue-HomePhase
  Scenario: Verify show options section is displayed at edit file modal if custom metadat boolean value is set to true
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder1"
    When I click on dropdown at library/folder/file "SendEmailAttachment.png"
    When I click on "Edit File" option at library/folder/file "SendEmailAttachment.png"
    Then I see sharing option as "Visible to Anyone With Record Access" at upload file modal

  @101500 @validateThatIfSharingOptionIsChangedFromEditFileModalThenItShouldDisplayAtRespectiveFileUnderEditFileModal-HomePhase @wip @functionalityDeprecated
  Scenario: Verify that if sharing option is changed at any file then updated option is displayed at edit file modal- home phase library
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder2"
    When I click on dropdown at library/folder/file "FilePresentInsideFolderDND.xls"
    When I click on "Edit File" option at library/folder/file "FilePresentInsideFolderDND.xls"
    When I select sharing option as "Private On Records" at upload file modal
    When I click on "Save" button in send email modal
    When I click on dropdown at library/folder/file "FilePresentInsideFolderDND.xls"
    When I click on "Edit File" option at library/folder/file "FilePresentInsideFolderDND.xls"
    Then I see sharing option as "Private On Records" at upload file modal

  @101548 @validateThatSharingOptionSectionIsDisplayedAtFileUploadModal-RecordLevel
  Scenario: Verify that sharing option is displayed at add/upload file modal - Record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I see sharing option as "Select visibility options" at upload file modal

  @101550 @validateThatShowOptionsSectionIsDisplayedWithAsteriskMarkAtUploadFileModalWindow-RecordLevel
  Scenario: Verify that show options section is displayed wih asterisk mark at upload file modal window - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I see asterisk mark at "Visibility Options" field

  @101554 @validateThatIfSharingOptionIsSelectedAsBlankThenAlertMessageIsDisplayedBelowField-ReordLevel
  Scenario: Verify that sharing option is selected as blank then alert message is displayed below field - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I select sharing option as "Select visibility options" at upload file modal
    When I enter value as "test Automation Description" in field "Description" at Library Files
    Then I see the text :
      | Complete this field. |

  @101556 @validateThatDefaultSharingOptionIsDisplayUnderEditFileModal-RecordLevel
  Scenario: Verify that default sharing option is displayed at edit file modal- record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "testAutomationFileDND.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Edit" icon for "testAutomationFileDND.png" inside table
    Then I see sharing option as "Visible to Anyone With Record Access" at upload file modal

  @101557 @validateThatIfSharingOptionIsChangedFromEditFileModalThenItShouldDisplayAtRespectiveFileUnderEditFileModal-RecordLevel @wip @functionalityDeprecated
  Scenario: Verify that if sharing option is changed at any file then updated option is displayed at edit file modal- record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "Automation Test Data File-DND.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Edit" icon for "Automation Test Data File-DND.png" inside table
    When I select sharing option as "Private On Records" at upload file modal
    When I click on "Save" button in send email modal
    When I perform quick search for "Automation Test Data File-DND.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Edit" icon for "Automation Test Data File-DND.png" inside table
    Then I see sharing option as "Private On Records" at upload file modal

  @101486 @validateThatUserCanUploadDuplicateFileWithSameNameFromRecord-RecordLevel @wip @functionalityDeprecated
  Scenario: Verify that use can upload same file which is already present inside record - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "RecordLevelDuplicateFile.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "RecordLevelDuplicateFile.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I click on "Delete" icon for "RecordLevelDuplicateFile.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "RecordLevelDuplicateFile.pdf" into library
    When I enter value as "test data - do not delete file" in field "Description" at Library Files
    When I select sharing option as "Private On Records" at upload file modal
    When I click on "Upload" button in send email modal
    When I perform quick search for "RecordLevelDuplicateFile.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "RecordLevelDuplicateFile.pdf" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "RecordLevelDuplicateFile.pdf" into library
    When I enter value as "test data - do not delete file" in field "Description" at Library Files
    When I select sharing option as "Private On Records" at upload file modal
    When I click on "Upload" button in send email modal
    Then I perform quick search for "RecordLevelDuplicateFile.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "RecordLevelDuplicateFile.pdf" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"

  @101559 @validateThatShowOptionsSectionIsDisplayedIfCustomMetadAtBooleanValueIsTrueToPMUser-RecordPhase
  Scenario: Verify show options section is displayed to pm user if custom metadat boolean value is set to true- record level
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I see sharing option as "Select visibility options" at upload file modal

  @101560 @validateThatShowOptionsSectionIsDisplayedIfCustomMetadAtBooleanValueIsTrueToPMUser-HomePhase
  Scenario: Verify show options section is displayed to pm user if custom metadat boolean value is set to true- home phase
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on dropdown at library/folder/file "Library-Folder 1 DND"
    When I click on "Upload File" option at library/folder/file "Library-Folder 1 DND"
    Then I see sharing option as "Select visibility options" at upload file modal

  @101474 @validateThatUserCanAddFileWithSameNameUnderFolderIfSharingOptionIsEnabled-HomePhase @needToUpdate @wip
  Scenario: Verify that admin user can add file with same name under folder if sharing option is enabled - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on dropdown at library/folder/file "Duplicate"
    When I click on "Upload File" option at library/folder/file "Duplicate"
    When I upload file "DuplicateFile.txt" into library
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I click on "Upload" button in send email modal
    When I click on dropdown at library/folder/file "Duplicate"
    When I click on "Upload File" option at library/folder/file "Duplicate"
    When I upload file "DuplicateFile.txt" into library
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I click on "Upload" button in send email modal
    When I click on expand icon at library/folder "Duplicate"
    Then I see files "DuplicateFile.txt" is displayed under "Duplicate" folder
    When I click on dropdown at library/folder/file "DuplicateFile.txt"
    When I click on "Delete File" option at library/folder/file "DuplicateFile.txt"
    When I click on dropdown at library/folder/file "DuplicateFile.txt"
    When I click on "Delete File" option at library/folder/file "DuplicateFile.txt"
    Then I softly do not see library/folder/file "DuplicateFile.txt" is displayed under files library

  @101686 @validateThatFilterGivenLibraryIsDisplayedAtAddFileModalAsPerGivenClauseInKeyValueMapConfig-RecordLevel
  Scenario Outline: Verify that filter given library is displayed at add file modal as per filter claus given at key value map - record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue           | filterId         |
      | Flex Table Action     | Action URL Long | <actionUrlLongDefaultValue> | ApiGeneratedId:0 |
      | Page Block            | Is Active       | true                        | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName       | fieldNewValue           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action            | Action URL Long | <actionUrlLongNewValue> | PlanningFiles         | Name                      | Add Files                  |
      | Page Block:Page Block Detail | Is Active       | false                   | Grantee State Program | GNT__PageBlockTitle__c    | Library View               |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I click on SelectChange Folder in add file modal
    Then I softly see library/folder/file "Department of Community Health" is displayed under files library
    Then I softly do not see library/folder/file "UnitedHealth Group" is displayed under files library

    Examples:
      | actionUrlLongNewValue                                                                                                          | actionUrlLongDefaultValue                                                                           |
      | /apex/SalesforceFiles?pageName=GNT__FileUpload&parentId={!Program__c.Id}&pageBlockId={!pageBlockId}&workspaceId={!workspaceId} | /apex/SalesforceFiles?pageName=GNT__FileUpload&parentId={!Program__c.Id}&pageBlockId={!pageBlockId} |

  @101687 @validateThatFilterGivenLibraryFoldersIsDisplayedAtAddFileModalAsPerGivenClauseInKeyValueMapConfig-RecordLevel
  Scenario Outline: Verify that filter given library folders are displayed at add file modal as per filter claus given at key value map - record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue           | filterId         |
      | Flex Table Action     | Action URL Long | <actionUrlLongDefaultValue> | ApiGeneratedId:0 |
      | Page Block            | Is Active       | true                        | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName       | fieldNewValue           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action            | Action URL Long | <actionUrlLongNewValue> | PlanningFiles         | Name                      | Add Files                  |
      | Page Block:Page Block Detail | Is Active       | false                   | Grantee State Program | GNT__PageBlockTitle__c    | Library View               |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I click on SelectChange Folder in add file modal
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "Library-Folder 1 DND" is displayed under files library
    Then I softly see library/folder/file "Library - Folder 2 DND" is displayed under files library
    Then I softly see library/folder/file "Duplicate" is displayed under files library
    Then I softly do not see library/folder/file "testAutomationFolder1" is displayed under files library

    Examples:
      | actionUrlLongNewValue                                                                                                            | actionUrlLongDefaultValue                                                                           |
      | /apex/SalesforceFiles?pageName=GNT__FileUpload&parentId={!Program__c.Id}&pageBlockId={!pageBlockId}&workspaceIds={!workspaceIds} | /apex/SalesforceFiles?pageName=GNT__FileUpload&parentId={!Program__c.Id}&pageBlockId={!pageBlockId} |

  @101696 @validateThatFilesPresentUnderFilterGivenLibraryShouldDisplayedAtAddFileModalAsPerGivenClauseInKeyValueMapConfig-RecordLevel
  Scenario Outline: Verify that files uploaded under filter given library folders are displayed at add file modal under upload from library tab - record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue           | filterId         |
      | Flex Table Action     | Action URL Long | <actionUrlLongDefaultValue> | ApiGeneratedId:0 |
      | Page Block            | Is Active       | true                        | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName       | fieldNewValue           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action            | Action URL Long | <actionUrlLongNewValue> | PlanningFiles         | Name                      | Add Files                  |
      | Page Block:Page Block Detail | Is Active       | false                   | Grantee State Program | GNT__PageBlockTitle__c    | Library View               |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "DragAndDropFileDND.png" in "WorkspaceFiles" panel
    Then I see "DragAndDropFileDND.png" inside flex table with id "---program:-:WorkspaceFilesUploadId---"

    Examples:
      | actionUrlLongNewValue                                                                                                            | actionUrlLongDefaultValue                                                                           |
      | /apex/SalesforceFiles?pageName=GNT__FileUpload&parentId={!Program__c.Id}&pageBlockId={!pageBlockId}&workspaceIds={!workspaceIds} | /apex/SalesforceFiles?pageName=GNT__FileUpload&parentId={!Program__c.Id}&pageBlockId={!pageBlockId} |

  @101699 @validateThatFilesOtherThanFilterGivenLibraryShouldNotDisplayedAtAddFileModalAsPerGivenClauseInKeyValueMapConfig-RecordLevel
  Scenario Outline: Verify that files other than filter given library folders are not displayed at add file modal under upload from library tab - record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue           | filterId         |
      | Flex Table Action     | Action URL Long | <actionUrlLongDefaultValue> | ApiGeneratedId:0 |
      | Page Block            | Is Active       | true                        | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName       | fieldNewValue           | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action            | Action URL Long | <actionUrlLongNewValue> | PlanningFiles         | Name                      | Add Files                  |
      | Page Block:Page Block Detail | Is Active       | false                   | Grantee State Program | GNT__PageBlockTitle__c    | Library View               |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "SendEmailAttachment.png" in "WorkspaceFiles" panel
    Then I see "No Records Found" inside flex table with id "---program:-:WorkspaceFilesUploadId---"

    Examples:
      | actionUrlLongNewValue                                                                                                            | actionUrlLongDefaultValue                                                                           |
      | /apex/SalesforceFiles?pageName=GNT__FileUpload&parentId={!Program__c.Id}&pageBlockId={!pageBlockId}&workspaceIds={!workspaceIds} | /apex/SalesforceFiles?pageName=GNT__FileUpload&parentId={!Program__c.Id}&pageBlockId={!pageBlockId} |

  @101477 @validateThanMultipleFilesWithSameNameCanBeUploadedIntoLibrary-HomePhase
  Scenario: Verify that multiple files with same name can be uploaded in one library - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "duplicateFileInFolder.png" into library
    When I click on "Upload" button in send email modal
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "duplicateFileInFolder.png" into library
    When I click on "Upload" button in send email modal
    Then I see files "duplicateFileInFolder.png" is displayed under "UnitedHealth Group" folder
    When I click on dropdown at library/folder/file "duplicateFileInFolder.png"
    When I click on "Delete File" option at library/folder/file "duplicateFileInFolder.png"
    And I pause execution for "3" seconds
    When I click on dropdown at library/folder/file "duplicateFileInFolder.png"
    When I click on "Delete File" option at library/folder/file "duplicateFileInFolder.png"
    Then I softly do not see library/folder/file "duplicateFileInFolder.png" is displayed under files library

  @101484 @validateThatMultipleFilesWithSameNameCanBeUploadedIntoLibraryFromUploadFileFromLibraryTab-RecordLevel @wip @functionalityDeprecated
  Scenario: Verify that multiple files with same name can be uploaded from upload file from library tab-  record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "DuplicateFile.txt" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "DuplicateFile.txt" inside table
    When I click "Yes" on modal confirmation box
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "DuplicateFile.txt" in "WorkspaceFiles" panel
    When I upload file "DuplicateFile.txt" present in the flex table "WorkspaceFilesUpload" from library
    When I perform quick search for "DuplicateFile.txt" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I see value "DuplicateFile.txt" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"

  @106620 @validateThatIfInvalidFileIsSearchedInGlobalSearchUnderFilesTableThenNoRecordFoundDisplayed-HomePhase
  Scenario: Verify that if invalid file name is searched in global search-Files table then, no record found is displayed in files table - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Files"
    When I perform quick search inside global search "teestDummyDataSearch"
    And I expand table with header "Planning Files"
    Then I see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @106621 @validateThatIfInvalidFileIsSearchedInGlobalSearchUnderFilesTableThenNoRecordFoundDisplayedByLoginAsPMUser-HomePhase
  Scenario: Verify that if invalid file name is searched in global search-Files table then, no record found is displayed in files table by login as PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Files"
    When I perform quick search inside global search "teestDummyDataSearch"
    And I expand table with header "Planning Files"
    Then I see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @106624 @validateThatUserCanSearchRecordLevelFilesInGlobalSearchUnderFilesTableByLoginAsPMUser-HomePhase
  Scenario: Verify that if record level file name is searched in global search-Files table then, it is displayed in files table by PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Files"
    When I perform quick search inside global search "ProgramRecordDoNotDelete.png"
    Then I see value "ProgramRecordDoNotDelete.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"

  @106618 @validateThatUserCanSearchFilesInGlobalSearchUnderAllTableByLoginAsPMUser-HomePhase
  Scenario: Verify that if file name is searched in global search-All table then, it is displayed in files table by PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "All"
    When I perform quick search inside global search "ProgramRecordDoNotDelete.png"
    Then I see value "ProgramRecordDoNotDelete.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"

  @106622 @validateThatUserCanSearchPhaseLevelFilesInGlobalSearchUnderFilesTableByLoginAsPMUser-HomePhase
  Scenario: Verify that if phase level file name is searched in global search-Files table then, it is displayed in files table by PM user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on global search and select "Files"
    When I perform quick search inside global search "AssetLibraryTestData.pdf"
    Then I see value "AssetLibraryTestData.pdf" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"

  @114029 @validateTextBelowChooseFileBoxAtUploadFileModal-RecordLevel
  Scenario: Verify the text given below upload choose file box under upload file modal at record level
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I see informative text as "Upload single file up to 2 GB" inside upload file modal

  @116222 @validateThatByClickOnRefreshButtonPageIsGettingRefreshed-HomePhase
  Scenario: Verify that by click on Refresh button page is getting refreshed - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I perform quick search for "Test" under files library
    When I click on "Refresh" button in send email modal
    Then I cannot see the following messages in the page details :
      | Value provided is invalid for action parameter 'mapFolderState' of type 'map' |

  @118593 @validateThatErrorMessageIsNotDisplayedInsideAddFileModal-HomePhase-FileList
  Scenario: Verify that file uploaded from FileList tab is displayed under selected folder/library at library files tab - Home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I click on SelectChange Folder in add file modal
    Then I cannot see the following messages in the page details :
      | Apex CPU time limit exceeded |

  @119851 @validateIfLibraryIsSetAsDefaultThenItsNameIsDisplayedAsPre-SelectedFolderAtUploadFileModalUnderPlanningFilesTableFromFiles_LibraryTab-PhaseLevel
  Scenario: Verify if default library is set then that folder name is displayed under select/change folder field at upload file modal from files_Library tab- home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Asset Library"
    When I click on "Upload File" option at library/folder/file "Asset Library"
    Then I see pre-selected library/folder as "Asset Library" is displayed at add file modal

  @118594 @validateThatErrorMessageIsNotDisplayedInsideSelectChangeFolderAtAddFileModal-ApplicationPhaseRecordLevel @wip @functionalityDeprecated
  Scenario: Verify that error message should not displayed at selectChange folder modal at file uploaded from record level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    When I click on SelectChange Folder in add file modal
    Then I cannot see the following messages in the page details :
      | Apex CPU time limit exceeded |

  @122127 @validateThatFileNameSearchedUsingQuickSearchShouldGetDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that by entering text in quick search box, respective file is displayed under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "F-product-banner" in "WorkspaceFiles" panel
    Then I softly see "F-product-banner" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @122128 @validateThatInvalidFileNameSearchedUsingQuickSearchThenNoRecordFoundMsgShouldGetDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that by entering invalid text in quick search box, "No record found" is displayed under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "snehal" in "WorkspaceFiles" panel
    Then I see "No Records Found" inside flex table with id "WorkspaceFilesUpload"

  @122129 @validateThatNumericFileNameSearchedUsingQuickSearchThenRespectiveRecordShouldGetDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that by entering numeric text in quick search box, respective record is displayed under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "1123" in "WorkspaceFiles" panel
    Then I see "Test Document 1123" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @122130 @validateMessageBelowQuickSearchShouldGetDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that message below quick search box is displayed under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    Then I see information as "Displays up to 1000 most recent files. Use the Search option to find files if they are not in this recent list." at files library upload modal

  @122131 @validateThatIfFilesHavingSpecialCharactersInNameAreSearchedUsingQuickSearchThenRespectiveRecordShouldGetDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that by entering special char name in quick search box, respective record is displayed under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "+" in "WorkspaceFiles" panel
    Then I see "TestFileDNDWithSpecial+Char.xlsx" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @122132 @validateThatTotalRecordCountLabelWithTop1000RecordsIsDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that top 1000 records displayed under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    Then I see the text :
      | Showing 1 to 5 of 1000 records |

  @122133 @validateThatMax1000RecordsAreDisplayedInQuickSearchResultUnderUploadFileModal-RecordLevel
  Scenario: Verify that max 1000 records displayed in search result under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "test" in "WorkspaceFiles" panel
    Then I see the text :
      | Showing 1 to 5 of 1000 records |

  @122134 @validateThatDateTimeValueSearchedUsingQuickSearchThenNoRecordFoundMessageShouldGetDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that by entering date in quick search box, No record found message is displayed under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "11/1/2019, 11:44 PM" in "WorkspaceFiles" panel
    Then I see "No Records Found" inside flex table with id "WorkspaceFilesUpload"

  @122145 @validateThatQuickSearchUnderUploadFileModalIsNotCaseSensitive-RecordLevel
  Scenario: Verify that if uppercase text entered in quick search box, then both upper and lower case matching records is displayed under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "PRODUCT" in "WorkspaceFiles" panel
    Then I softly see "PRODUCT.xlsx" shown in search table with id "WorkspaceFilesUpload" at file upload modal
    Then I softly see "F-product-banner" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @122553 @validateThatClassificationSearchedUsingQuickSearchShouldGetDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that by entering classification value in quick search box, respective file having classification is displayed under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "Medical Reports" in "WorkspaceFiles" panel
    Then I see "Medical Reports" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @122554 @validateThatDescriptionSearchedUsingQuickSearchShouldGetDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that by entering description value in quick search box, respective file having description is displayed under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "DND" in "WorkspaceFiles" panel
    Then I see "test record DND" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @122136 @validateThatFileIsVisibleToAllInternalUserIfSharingOptionIsSelectedAsVisibleToInternalWithRecordAccess
  Scenario: Verify that file is visible to all internal user if sharing option as "Visible to internal With Record Access" is select at upload file modal
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Internal Users With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    #122136 - visible to internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122138 @validateThatFileIsVisibleToAllInternalUserIfSharingOptionIsSelectedAsVisibleToAnyoneWithRecordAccess
  Scenario: Verify that file is visible to all internal user if sharing option as "Visible to anyone With Record Access" is select at upload file modal
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
  #122138 - visible to external user
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
  #122138 - visible to internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122139 @validateThatFileIsNotVisibleToAnyInternalUserIfSharingOptionIsSelectedAsPrivateRecord @wip @functionalityDeprecated
  Scenario: Verify that file is not visible to any internal user if sharing option as "Private On Records" is select at upload file modal
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Private On Records" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
  #122139 - not visible to internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122140 @validateThatFileIsNotVisibleToAnyExternalUserIfSharingOptionIsSelectedAsPrivateRecord @wip @functionalityDeprecated
  Scenario: Verify that file is not visible to any external user if sharing option as "Private On Records" is select at upload file modal
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Private On Records" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122140 - not visible to external user
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122142 @validateThatFileDeletedByInternalUserIsAlsoDeletedForInternalUser
  Scenario: Verify that file deleted by internal user is also deleted from the same record viewed by admin user
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  #122142 - file deleted by internal user is not visible to admin user
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122157 @validateThatFileNameEditedByAdminUserShouldBeVisibleInternalAndExternalUser
  Scenario: Verify that if file name is edited by admin user then updated file name should be displayed to internal and external user on same record
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Edit" icon for "TestFileSharing.docx" inside table
    When I enter value as "TestFileSharingUpdated.docx" in field "Title" at Library Files
    When I click on "Save" button in send email modal
    When I click on "×" icon at "File Edit" modal under Library
    When I perform quick search for "TestFileSharingUpdated.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharingUpdated.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122157 - updated file name is displayed to external user
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharingUpdated.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharingUpdated.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122157 - updated file name is displayed to internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharingUpdated.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharingUpdated.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "TestFileSharingUpdated.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharingUpdated.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122160 @validateThatIfSharingOptionIsEditedFromVisibleToAnyoneWithRecordAccessToPrivateOnRecordThenThatFileShouldBeVisibleToOwnerOnly @wip @facingIssueOfDuplicateFileUpload
  Scenario: Verify that if sharing option changed from "Visible to anyone With Record Access" to "Private on record" then file is visible to owner only
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Edit" icon for "TestFileSharing.docx" inside table
    When I select sharing option as "Private On Records" at upload file modal
    When I click on "Save" button in send email modal
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122160 - private file not visible to external user
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  #122160 - private file not visible to internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122169 @validateThatFileNameUploadedByInternalUserShouldNotBeEditableByAdminUserWhenSharinOptionAsVisibleToAnyoneWithRecordAccess
  Scenario: Verify that if file uploaded by internal user should not be editable to admin user when sharing option as "Visible to Anyone With Record Access"
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122169 - file is not editable to admin user
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Edit" icon for "TestFileSharing.docx" inside table
    When I enter value as "sharing options test1" in field "Description" at Library Files
    When I click on "Save" button in send email modal
    Then I softly see the following messages in the page details contains:
      | You do not have the level of access necessary to perform the operation you requested. Please contact the owner of the record or your administrator if access is necessary. |
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122172 @validateThatFileNameUploadedByInternalUserShouldBeDeletedByAdminUserWhenSharinOptionAsVisibleToAnyoneWithRecordAccess
  Scenario: Verify that if file uploaded by internal user should be deleted by  admin user when sharing option as "Visible to Anyone With Record Access"
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122172 - file is  deleted by admin user
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122182 @validateThatFileNameUploadedByInternalUserShouldNotDisplayToExternalUserAndDisplayedToOnlyAdminUserWhenSharinOptionAsVisibleToAnyoneWithRecordAccess
  Scenario: Verify that if file uploaded by internal user is displayed to admin user but not to external when sharing option as "Visible to Anyone With Record Access"
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122182 - file uploaded by internal user is displayed to admin user
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122182 - file uploaded by internal user is not displayed to external user
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122188 @validateThatFileNameUploadedByInternalUserShouldDisplayToExternalUserAndDisplayedToOnlyAdminUserWhenSharinOptionAsVisibleToAnyoneWithRecordAccess @wip @facingIssueOfDuplicateFileUpload
  Scenario: Verify that if file uploaded by internal user is displayed to admin and external when sharing option as "Visible to Anyone With Record Access"
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122188 - file uploaded by internal user is displayed to admin user
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122188 - file uploaded by internal user is displayed to external user
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122469 @validateThatFileNameUploadedByAdminUserShouldBeDeletedByExternalUserAndRemovedFromBothAdminAndExternalUserRecordWhenSharinOptionAsVisibleToAnyoneWithRecordAccess
  Scenario: Verify that if file uploaded by admin user can be deleted by external when sharing option as "Visible to Anyone With Record Access"
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122469 - file uploaded by admin user can be deleted by external user
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  #122469 - file deleted by external user is removed from admin user
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122470 @validateThatFileNameUploadedByAdminUserShouldBeDeletedByInternalUserAndRemovedFromBothAdminAndInternalUserRecordWhenSharinOptionAsVisibleToAnyoneWithRecordAccess
  Scenario: Verify that if file uploaded by admin user can be deleted by internal when sharing option as "Visible to Anyone With Record Access"
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122470 - file uploaded by admin user can be deleted by internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  #122470 - file deleted by internal user can be removed from admin user
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122471 @validateThatFileNameUploadedByAdminUserCanBeDeletedByInternalUserAndRemovedFromBothAdminAndInternalUserRecordWhenSharinOptionAsVisibleToInternalWithRecordAccess
  Scenario: Verify that file uploaded by admin user can be deleted by internal when sharing option as "Visible to Internal Users With Record Access"
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Internal Users With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122471 - file uploaded by admin user can be deleted by internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  #122471 - file deleted by internal user can be removed from admin user
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122494 @validateThatFileUploadedByExternalUserIsVisibleToInternalAndAdminUserIfSharingOptionIsSelectedAsVisibleToAnyoneWithRecordAccess
  Scenario: Verify that file uploaded by external user is visible to internal / Admin user if sharing option as "Visible to anyone With Record Access"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122494 - visible to Admin user
    When I re-login to "As a Grantor" app as "Automation" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122494 - visible to internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122495 @validateThatFileEditedByExternalUserIsVisibleToInternalAndAdminUserIfSharingOptionIsSelectedAsVisibleToAnyoneWithRecordAccess
  Scenario: Verify that file edited by external user is visible to internal / Admin user if sharing option as "Visible to anyone With Record Access"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Edit" icon for "TestFileSharing.docx" inside table
    When I enter value as "TestFileSharingUpdated.docx" in field "Title" at Library Files
    When I click on "Save" button in send email modal
    When I click on "×" icon at "File Edit" modal under Library
    When I perform quick search for "TestFileSharingUpdated.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharingUpdated.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122495 - edited file is visible to Admin user
    When I re-login to "As a Grantor" app as "Automation" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharingUpdated.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharingUpdated.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122495 - edited file is visible to internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharingUpdated.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharingUpdated.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharingUpdated.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharingUpdated.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharingUpdated.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122161 @validateThatFileNameUploadedByAdminUserIsNotEditableByInternalUserWhenSharinOptionAsVisibleToAnyoneWithRecordAccess
  Scenario: Verify that if file uploaded by admin user is not editable by internal user when sharing option as "Visible to Anyone With Record Access"
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I select Classification as "Medical Reports" at upload file modal
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122161 - file uploaded by admin user can not be edited by internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Edit" icon for "TestFileSharing.docx" inside table
    And I pause execution for "3" seconds
    Then I see alert message inside "---program:-:workSpaceFileEditId---" modal as follows :
    """
   {LongText:FileEditModalAlertMessageLong-Text}
  """
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122164 @validateThatFileNameUploadedByAdminUserIsNotEditableByExternalUserWhenSharinOptionAsVisibleToAnyoneWithRecordAccess
  Scenario: Verify that if file uploaded by admin user is not editable by external user when sharing option as "Visible to Anyone With Record Access"
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122164 - file uploaded by admin user can not be edited by external user
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Edit" icon for "TestFileSharing.docx" inside table
    And I pause execution for "3" seconds
    Then I see alert message inside "---program:-:workSpaceFileEditId---" modal as follows :
    """
   {LongText:FileEditModalAlertMessageLong-Text}
  """
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122499 @validateThatFileUploadedByExternalUserIsNotVisibleToInternalAndAdminUserIfSharingOptionIsSelectedAsPrivateOnRecords @wip @functionalityDeprecated
  Scenario: Verify that file uploaded by external user is not visible to internal / Admin user if sharing option as "Private On Records"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Private On Records" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122499 - not visible to Admin user
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  #122499 - not visible to internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122498 @validateThatFileUploadedByExternalUserIsVisibleToInternalAndAdminUserIfSharingOptionIsSelectedAsVisibleToInternalUsersWithRecordAccess @wip @facingIssueOfDuplicateFileUpload
  Scenario: Verify that file uploaded by external user is visible to internal / Admin user if sharing option as "Visible to Internal Users With Record Access"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI2" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Internal Users With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122498 - uploaded file is visible to Admin user
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #122498 - uploaded file is visible to internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "Grants Portal" app as "Automation-SPI2" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @122135 @validateThatIfFilesHavingSpecialCharactersInDescriptionAreSearchedUsingQuickSearchThenRespectiveRecordShouldGetDisplayedUnderUploadFileModal-RecordLevel
  Scenario: Verify that by entering special char in quick search box, respective record from description column is displayed under upload file modal - record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "@#" in "WorkspaceFiles" panel
    Then I see "test file for description @#" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @123905    @verifyThatFileAttachedByAdminUserFromRecordLevelCollabIsDisplayedToSPIAndPMUserBySelectingSharingOptionAsVisibleToAnyone  @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached by admin user to any post from record level is displayed to PM and spi user if sharing option set as visible to anyone
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
      | Charts Config         | Active    | true              | ApiGeneratedId:1 |
      | Charts Config         | Active    | true              | ApiGeneratedId:2 |
      | Charts Config         | Active    | true              | ApiGeneratedId:3 |
      | Charts Config         | Active    | true              | ApiGeneratedId:4 |
      | Charts Config         | Active    | true              | ApiGeneratedId:5 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Dual Axes                    |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | GrantPerformanceScatterClsBased       |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Line                         |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Bubble                       |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Dual Axes 1                  |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for sharing test DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I upload file "SharingAtCollabTest.png" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "test sharing" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    And I enter value "Home Phase sharing temporary comment" in my feed section and share the comment
    Then I softly see "SharingAtCollabTest.png" inside flex table with id "---program:-:myFeedTableId---"

  #123905 - attached file from home phase is visible to admin user at collab tab record level
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "SharingAtCollabTest.png" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #123905 - attached file at collab tab is visible to internal(PM) user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "SharingAtCollabTest.png" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #123905 - attached file at collab tab is visible to external(SPI) user
    When I re-login to "Grants Portal" app as "Automation-SPI2" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "SharingAtCollabTest.png" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Delete" action at "Home Phase sharing temporary comment" comment inside my feed
    And I click modal button "OK"
    Then I softly do not see "Home Phase sharing temporary comment" inside flex table with id "---program:-:myFeedTableId---"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "SharingAtCollabTest.png" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @123914    @verifyThatFileAttachedFromRecordLevelCollabIsEditableAtAttachmentFilesBlockByAdminUserAndUpdatedFileDisplayedInsideCollabTab @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached by admin user to any post from record level is editable by admin user
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Automation Post For collab sharing functionality check application" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "SharingAtCollabTest.png" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "test sharing" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    And I enter value "Collab Phase sharing temporary comment" in my feed section and share the comment
    Then I softly see "SharingAtCollabTest.png" inside flex table with id "---program:-:myFeedTableId---"
    And I refresh the page
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Edit" icon for "SharingAtCollabTest.png" inside table
    When I enter value as "SharingAtCollabTestUpdated.png" in field "Title" at Library Files
    When I click on "Save" button in send email modal
    When I click on "×" icon at "File Edit" modal under Library
    When I perform quick search for "SharingAtCollabTestUpdated.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "SharingAtCollabTestUpdated.png" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "SharingAtCollabTestUpdated.png" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "SharingAtCollabTestUpdated.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"
    When I navigate to "Collab" sub tab
    And I click on "Delete" action at "Collab Phase sharing temporary comment" comment inside my feed
    And I click modal button "OK"
    Then I softly do not see "Collab Phase sharing temporary comment" inside flex table with id "---program:-:myFeedTableId---"

  @123915    @verifyThatFileAttachedFromRecordLevelCollabByAdminUserIsNotEditableAtAttachmentFilesBlockByPMUserIfSahringOptionSetToVisibleToAnyone @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached by admin user to any post from record level is not editable by PM user from attachment files block if sharing option set to visible to anyone
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Automation Post For collab sharing functionality check application" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "SharingAtCollabTest.png" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "test sharing" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    And I enter value "Collab Phase sharing temporary comment" in my feed section and share the comment
    Then I softly see "SharingAtCollabTest.png" inside flex table with id "---program:-:myFeedTableId---"

  #123915 - attached file from collab tab is not editable by internal(PM) user at attachment files block
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Edit" icon for "SharingAtCollabTest.png" inside table
    Then I see alert message inside "---program:-:workSpaceFileEditId---" modal as follows :
    """
   {LongText:FileEditModalAlertMessageLong-Text}
  """
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Collab" sub tab
    And I click on "Delete" action at "Collab Phase sharing temporary comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I do not see attached file as "SharingAtCollabTest.png" inside collab my feed
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "SharingAtCollabTest.png" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @123917    @verifyThatFileAttachedFromRecordLevelCollabByAdminUserIsNotEditableAtAttachmentFilesBlockBySPIUserIfSahringOptionSetToVisibleToAnyone @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached by admin user to any post from record level is not editable by SPI user from attachment files block if sharing option set to visible to anyone
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Automation Post For collab sharing functionality check application" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "CollabIframe"
    When I upload file "SharingAtCollabTest.png" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "test sharing" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    And I enter value "Collab Phase sharing temporary comment" in my feed section and share the comment
    Then I softly see "SharingAtCollabTest.png" inside flex table with id "---program:-:myFeedTableId---"

  #123917 - attached file from collab tab is not editable by external(SPI) user at attachment files block
    When I re-login to "Grants Portal" app as "Automation-SPI" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Edit" icon for "SharingAtCollabTest.png" inside table
    Then I see alert message inside "---program:-:workSpaceFileEditId---" modal as follows :
    """
   {LongText:FileEditModalAlertMessageLong-Text}
  """
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Collab" sub tab
    And I click on "Delete" action at "Collab Phase sharing temporary comment" comment inside my feed
    And I click modal button "OK"
    And I refresh the page
    Then I do not see attached file as "SharingAtCollabTest.png" inside collab my feed
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "SharingAtCollabTest.png" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @123919    @verifyThatFileAttachedByAdminUserFromHomePhaseAndEditedAtRecordLevelAttachmentTabIsDisplayedToSPIAndPMUserWithUpdatedName  @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached by admin user to any post from home phase and edited from record level is displayed to PM and spi user with updated name
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
      | Charts Config         | Active    | true              | ApiGeneratedId:1 |
      | Charts Config         | Active    | true              | ApiGeneratedId:2 |
      | Charts Config         | Active    | true              | ApiGeneratedId:3 |
      | Charts Config         | Active    | true              | ApiGeneratedId:4 |
      | Charts Config         | Active    | true              | ApiGeneratedId:5 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Dual Axes                    |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | GrantPerformanceScatterClsBased       |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Line                         |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Bubble                       |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Dual Axes 1                  |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for sharing test DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I upload file "SharingAtCollabTest.png" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "test sharing" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    And I enter value "Home Phase sharing temporary comment" in my feed section and share the comment
    Then I softly see "SharingAtCollabTest.png" inside flex table with id "---program:-:myFeedTableId---"

  #123919 - attached file from home phase is editable to admin user at attachment tab record level
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Edit" icon for "SharingAtCollabTest.png" inside table
    When I enter value as "SharingAtCollabTestUpdated1.png" in field "Title" at Library Files
    When I click on "Save" button in send email modal
    When I click on "×" icon at "File Edit" modal under Library
    When I perform quick search for "SharingAtCollabTestUpdated1.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "SharingAtCollabTestUpdated1.png" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #123919 -edited file name uploaded from home phase is visible to internal(PM) user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTestUpdated1.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "SharingAtCollabTestUpdated1.png" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #123919 - edited file name uploaded from home phase is visible to external(SPI) user
    When I re-login to "Grants Portal" app as "Automation-SPI2" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTestUpdated1.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "SharingAtCollabTestUpdated1.png" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Delete" action at "Home Phase sharing temporary comment" comment inside my feed
    And I click modal button "OK"
    Then I do not see attached file as "SharingAtCollabTestUpdated1.png" inside collab my feed
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTestUpdated1.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "SharingAtCollabTestUpdated1.png" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "SharingAtCollabTestUpdated1.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @123923    @verifyThatFileAttachedByAdminUserFromHomePhaseIsDisplayedToPMUserAndNotToExternalIfSharingOptionIsSelectedAsVisibleToInternalWithRecordAccess  @wip @facingIssueOfDuplicateFileUpload
  Scenario: validate that file attached by admin user from home phase is displayed to PM and not to spi user "Visible to internal With Record Access" is select
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
      | Charts Config         | Active    | true              | ApiGeneratedId:1 |
      | Charts Config         | Active    | true              | ApiGeneratedId:2 |
      | Charts Config         | Active    | true              | ApiGeneratedId:3 |
      | Charts Config         | Active    | true              | ApiGeneratedId:4 |
      | Charts Config         | Active    | true              | ApiGeneratedId:5 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Dual Axes                    |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | GrantPerformanceScatterClsBased       |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Line                         |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Bubble                       |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Dual Axes 1                  |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for sharing test DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I upload file "SharingAtCollabTest.png" into library with sharing
    When I select sharing option as "Visible to Internal Users With Record Access" at upload file modal
    When I enter value as "test sharing" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    And I enter value "Home Phase sharing temporary comment" in my feed section and share the comment
    Then I softly see "SharingAtCollabTest.png" inside flex table with id "---program:-:myFeedTableId---"

  #123923 - attached file from home phase is displayed to admin user at attachment tab record level
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "SharingAtCollabTest.png" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #123923 - file uploaded from home phase is visible to internal(PM) user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "SharingAtCollabTest.png" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #123923 - file uploaded from home phase is not visible to external(SPI) user
    When I re-login to "Grants Portal" app as "Automation-SPI2" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Delete" action at "Home Phase sharing temporary comment" comment inside my feed
    And I click modal button "OK"
    Then I do not see attached file as "SharingAtCollabTest.png" inside collab my feed
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "SharingAtCollabTest.png" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @123936    @verifyThatFileAttachedByAdminUserFromHomePhaseIsNotDisplayedToExternalIfSharingOptionIsSelectedAsPrivateOnRecord  @wip @functionalityDeprecated
  Scenario: validate that file attached by admin user from home phase is not displayed to spi user "Private On Records" is select
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
      | Charts Config         | Active    | true              | ApiGeneratedId:1 |
      | Charts Config         | Active    | true              | ApiGeneratedId:2 |
      | Charts Config         | Active    | true              | ApiGeneratedId:3 |
      | Charts Config         | Active    | true              | ApiGeneratedId:4 |
      | Charts Config         | Active    | true              | ApiGeneratedId:5 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Dual Axes                    |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | GrantPerformanceScatterClsBased       |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Line                         |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Bubble                       |
      | Charts Config         | Active    | false         | GrantorHome        | Name                      | Enhanced Dual Axes 1                  |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Test Post for sharing test DND" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    And I switch to iframe with id "HomeCollabIframe"
    When I upload file "SharingAtCollabTest.png" into library with sharing
    When I select sharing option as "Private On Records" at upload file modal
    When I enter value as "test sharing" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    And I enter value "Home Phase sharing temporary comment" in my feed section and share the comment
    Then I softly see "SharingAtCollabTest.png" inside flex table with id "---program:-:myFeedTableId---"

  #123936 - attached file from home phase is displayed to admin user at attachment tab record level
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "SharingAtCollabTest.png" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #123936 - file uploaded from home phase is not visible to internal(PM) user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "SharingAtCollabTest.png" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"

  #123936 - file uploaded from home phase is not visible to external(SPI) user
    When I re-login to "Grants Portal" app as "Automation-SPI2" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Delete" action at "Home Phase sharing temporary comment" comment inside my feed
    And I click modal button "OK"
    Then I do not see attached file as "SharingAtCollabTest.png" inside collab my feed
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "SharingAtCollabTest.png" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "SharingAtCollabTest.png" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @130572 @validateThatIfSharingOptionIsNotSelectedThenUploadButtonIsDisabledAtRecordLevel @wip @functionalityDeprecated
  Scenario: Verify that Upload button is disabled when user has not selected sharing options at record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library
    When I select sharing option as "Select visibility options" at upload file modal
    When I enter value as "test Automation upload from record level" in field "Description" at Library Files
    Then I see "Upload" button is disabled at modal under library

  @130573 @validateThatIfSharingOptionIsNotSelectedThenUploadButtonIsDisabledAtHomePhaseForPMUser
  Scenario: Verify that Upload button is disabled when user has not selected sharing options at home phase for PM user
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Asset Library"
    When I click on "Upload File" option at library/folder/file "Asset Library"
    When I upload file "TestAutomationFile.csv" into library with sharing
    When I select sharing option as "Select visibility options" at upload file modal
    When I enter value as "test Automation upload from record level" in field "Description" at Library Files
    Then I see "Upload" button is disabled at modal under library

  @130576 @validateThatIfSharingOptionIsNotSelectedThenUploadButtonIsDisabledAtRecordLevelAndCustomPermissionsAreEnabled
  Scenario: Verify that Upload button is disabled when user has not selected sharing options at record level and custom permissions are enabled
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Select visibility options" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    Then I see "Upload" button is disabled at modal under library

  @130415 @validateThatFileIsVisibleToPMUserIfSharingOptionIsSelectedAsVisibleToInternalUserWithRecordAccess
  Scenario: Verify that file is visible to pm user if sharing option as "Visible to internal user with Record Access" is select at upload file modal
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Internal Users With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
  #130415 - visible to internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @130416 @validateThatFileIsVisibleSPIAndPMUserIfSharingOptionIsSelectedAsVisibleToAnyoneWithRecordAccessAndCustomSettingIsEnabled
  Scenario: Verify that file is visible to SPI and PM user  if sharing option as "Visible to anyone With Record Access" is select at upload file modal and custom setting is enabled
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
  #130416 - visible to external user
    When I re-login to "Grants Portal" app as "Automation-SPI2" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
  #130416 - visible to internal user
    When I re-login to "As a Grantor" app as "Automation-PM" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @129989 @validateMaximum5FilesCanBeUploadedMessageAtUploadFileMOodal-RecordLevel
  Scenario: Verify that maximum 5 files can be uploaded msg at upload file modal-  record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    Then I see information as "Maximum of 5 files can be selected." at files library upload modal

  @129987 @validateThatMaximum5FilesCanBeUploadedIntoLibraryFromUploadFileFromLibraryTab-RecordLevel @wip @needToUpdate
  Scenario: Verify that maximum 5 files can be uploaded from upload file from library tab-  record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
 #129987 upload multiple file from home phase
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadDND1.png" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadDND2.png" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadDND3.png" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadDND4.png" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadDND5.png" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
 #129987 verify if multiple files can be uploaded
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "MultipleFileUploadDND" in "WorkspaceFiles" panel
    When I check "MultipleFileUploadDND1.png,MultipleFileUploadDND2.png,MultipleFileUploadDND3.png,MultipleFileUploadDND4.png,MultipleFileUploadDND5.png" boxes in flex table with id "WorkspaceFiles"
    When I click on top right button "Attach" in flex table with id "WorkspaceFiles"
    When I perform quick search for "MultipleFileUploadDND" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "MultipleFileUploadDND1.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    Then I softly see value "MultipleFileUploadDND2.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    Then I softly see value "MultipleFileUploadDND3.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    Then I softly see value "MultipleFileUploadDND4.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    Then I softly see value "MultipleFileUploadDND5.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
 #129987 delete uploaded file
    When I perform quick search for "MultipleFileUploadDND1.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "MultipleFileUploadDND1.png" inside table
    When I click "Yes" on modal confirmation box
    When I perform quick search for "MultipleFileUploadDND2.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "MultipleFileUploadDND2.png" inside table
    When I click "Yes" on modal confirmation box
    When I perform quick search for "MultipleFileUploadDND3.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "MultipleFileUploadDND3.png" inside table
    When I click "Yes" on modal confirmation box
    When I perform quick search for "MultipleFileUploadDND4.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "MultipleFileUploadDND4.png" inside table
    When I click "Yes" on modal confirmation box
    When I perform quick search for "MultipleFileUploadDND5.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "MultipleFileUploadDND5.png" inside table
    When I click "Yes" on modal confirmation box
    When I perform quick search for "MultipleFileUploadDND" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @129988 @validateThatUserIsNotAbleToUploadMoreThan5FilesIntoLibraryFromUploadFileFromLibraryTab-RecordLevel @wip @needToUpdate
  Scenario: Verify that user is not able to upload more than 5 files from upload file from library tab-  record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
 #129988 upload multiple file from home phase
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadDND1.png" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadDND2.png" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadDND3.png" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadDND4.png" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadDND5.png" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "MultipleFileUploadDND6.png" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
 #129988 verify if only max 5 files can be uploaded at record detail
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "MultipleFileUploadDND" in "WorkspaceFiles" panel
    And I select value inside table "WorkspaceFiles" is "10"
    When I check "MultipleFileUploadDND1.png,MultipleFileUploadDND2.png,MultipleFileUploadDND3.png,MultipleFileUploadDND4.png,MultipleFileUploadDND5.png" boxes in flex table with id "WorkspaceFiles"
    Then I softly see checkbox/radio button at "MultipleFileUploadDND6.png" is disabled
    When I click on top right button "Attach" in flex table with id "WorkspaceFiles"
    When I perform quick search for "MultipleFileUploadDND" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "MultipleFileUploadDND1.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    Then I softly see value "MultipleFileUploadDND2.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    Then I softly see value "MultipleFileUploadDND3.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    Then I softly see value "MultipleFileUploadDND4.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    Then I softly see value "MultipleFileUploadDND5.png" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
 #129988 delete all uploaded file from respective record
    When I perform quick search for "MultipleFileUploadDND1.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "MultipleFileUploadDND1.png" inside table
    When I click "Yes" on modal confirmation box
    When I perform quick search for "MultipleFileUploadDND2.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "MultipleFileUploadDND2.png" inside table
    When I click "Yes" on modal confirmation box
    When I perform quick search for "MultipleFileUploadDND3.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "MultipleFileUploadDND3.png" inside table
    When I click "Yes" on modal confirmation box
    When I perform quick search for "MultipleFileUploadDND4.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "MultipleFileUploadDND4.png" inside table
    When I click "Yes" on modal confirmation box
    When I perform quick search for "MultipleFileUploadDND5.png" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Delete" icon for "MultipleFileUploadDND5.png" inside table
    When I click "Yes" on modal confirmation box
    When I perform quick search for "MultipleFileUploadDND" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @136660 @validateThatVisibleToInternalUsersWithRecordAccessIsNotDisplayedAtAddFileModalForSPIProfile-RecordLevel @needToUpdate
  Scenario: Verify that 'visible to internal users with Record access' is not Displayed for SPI profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    Then I do not see sharing option as "Visible to internal users with Record access" at upload file modal

  @136661 @validateThatVisibleToInternalUsersWithRecordAccessIsNotDisplayedAtEditFileModalForSPIProfile-RecordLevel
  Scenario: Verify that 'visible to internal users with Record access' is not Displayed at edit file for SPI profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Edit" icon for "TestFileSharing.docx" inside table
 #136661 verify if sharing option is not displayed to external user
    Then I do not see sharing option as "Visible to internal users with Record access" at upload file modal
    When I click on "×" icon at "File Edit" modal under Library
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
 #136661 verify if record is not displayed to external user
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @148728 @validateCancelButtonWorkingAtEditFileModalAtRecordLevel
  Scenario: Verify modal gets closed by lick on cancel button under edit file modal at record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "CollabTestFileDNDRecordLevel.pdf" in "---program:-:PlanningFilesFlexGridId---" panel
    When I click on "Edit" icon for "CollabTestFileDNDRecordLevel.pdf" inside table
    When I click on "Cancel" button in send email modal
    Then I see "File Edit" modal window with id "---program:-:PlanningFilesModalId---" is not displayed

  @148727 @validateCancelButtonWorkingAtAddFileModalAtRecordLevel
  Scenario: Verify modal gets closed by lick on cancel button under add file modal at record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I click on "Cancel" button in send email modal
    Then I see "PlanningFiles" modal window with id "---program:-:PlanningFilesModalId---" is not displayed

  @152209 @validateThatHomePhaseMyFeedSectionRendersProperlyEvenWhen1000FilesArePresent-HomePhase
  Scenario: Verify that home phase my feed section is displayed when more than 1000 files are present in workspace
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I pause execution for "3" seconds
    When I click on "Menu" in the page details
    Then I see "To Me" option is displayed at collab menu

  @153235 @validateAdvanceFilterWorkingUsingContainsOperatorAtFilesListTable
  Scenario: Verify that advance filter is working using contains operator at files list table - homePhase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on advance filter "#advfWorkSpaceFiles" of table id "---program:-:flexGridWorkSpaceFilesId---"
    When I enter advance filter values inside id "advfWorkSpaceFiles"
      | Title | contains | DummyFile1_DND |
    Then I softly see value "DummyFile1_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"
    Then I softly do not see value "DummyFile2_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"

  @153236 @validateAdvanceFilterWorkingUsingDoesNotContainsOperatorAtFilesListTable
  Scenario: Verify that advance filter is working using "does not contain" operator at files list table - homePhase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on advance filter "#advfWorkSpaceFiles" of table id "---program:-:flexGridWorkSpaceFilesId---"
    When I enter advance filter values inside id "advfWorkSpaceFiles"
      | Title | does not contain | DummyFile1_DND |
    Then I softly see value "DummyFile2_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"
    Then I softly do not see value "DummyFile1_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"

  @153237 @validateAdvanceFilterWorkingUsingStartsWithOperatorAtFilesListTable
  Scenario: Verify that advance filter is working using "starts with" operator at files list table - homePhase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on advance filter "#advfWorkSpaceFiles" of table id "---program:-:flexGridWorkSpaceFilesId---"
    When I enter advance filter values inside id "advfWorkSpaceFiles"
      | Title | starts with | DummyFile |
    Then I softly see value "DummyFile1_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"
    Then I softly see value "DummyFile2_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"
    Then I softly do not see value "F-logo-black" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"

  @153238 @validateAdvanceFilterWorkingUsingEndsWithOperatorAtFilesListTable
  Scenario: Verify that advance filter is working using "ends with" operator at files list table - homePhase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on advance filter "#advfWorkSpaceFiles" of table id "---program:-:flexGridWorkSpaceFilesId---"
    When I enter advance filter values inside id "advfWorkSpaceFiles"
      | Title | ends with | DND.jpg |
    Then I softly see value "DummyFile1_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"
    Then I softly see value "DummyFile2_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"
    Then I softly do not see value "F-logo-black" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"

  @155372 @validateAdvanceFilterWorkingUsingContainsOperatorForDescriptionFieldAtFilesListTable
  Scenario: Verify that advance filter is working using contains operator for description field at files list table - homePhase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on advance filter "#advfWorkSpaceFiles" of table id "---program:-:flexGridWorkSpaceFilesId---"
    When I enter advance filter values inside id "advfWorkSpaceFiles"
      | Description | contains | File uploaded |
    Then I softly see value "DummyFile1_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"
    Then I softly do not see value "DummyFile2_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"

  @155373 @validateAdvanceFilterWorkingUsingContainsOperatorForFileTypeFieldAtFilesListTable
  Scenario: Verify that advance filter is working using contains operator for file type field at files list table - homePhase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on advance filter "#advfWorkSpaceFiles" of table id "---program:-:flexGridWorkSpaceFilesId---"
    When I enter advance filter values inside id "advfWorkSpaceFiles"
      | File Type | contains | PNG |
    Then I softly see value "DragAndDropFileDND.png" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"
    Then I softly do not see value "DummyFile2_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"

  @155374 @validateAdvanceFilterWorkingUsingContainsOperatorForExtensionFieldAtFilesListTable
  Scenario: Verify that advance filter is working using contains operator for Extension field at files list table - homePhase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on advance filter "#advfWorkSpaceFiles" of table id "---program:-:flexGridWorkSpaceFilesId---"
    When I enter advance filter values inside id "advfWorkSpaceFiles"
      | Extension | contains | png |
    Then I softly see value "DragAndDropFileDND.png" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"
    Then I softly do not see value "DummyFile2_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"

  @155375 @validateAdvanceFilterWorkingUsingContainsOperatorForClassificationFieldAtFilesListTable
  Scenario: Verify that advance filter is working using contains operator for Classification field at files list table - homePhase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on advance filter "#advfWorkSpaceFiles" of table id "---program:-:flexGridWorkSpaceFilesId---"
    When I enter advance filter values inside id "advfWorkSpaceFiles"
      | Classification | contains | Medical Reports |
    Then I softly see value "Automation Test Data File-DND.png" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"
    Then I softly do not see value "DummyFile2_DND.jpg" for title "Title" inside table "---program:-:flexGridWorkSpaceFilesId---"

  @155562 @validateThatShowOptionsSectionIsDisplayedForAdminUserWhileUploadingFileFromFilesListTab-HomePhase
  Scenario: Verify that show visibility options is displayed to admin user while uploading file from files list tab
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    Then I see the text :
      | Visibility Options |

  @148282 @validateThatPrivateOnRecordSharingOptionIsNotDisplayedAtFileUploadModalForInternalUser-RecordLevel
  Scenario: Verify that private on record sharing option is displayed at add/upload file modal for internal user - Record level
    When I login as "Automation-PO" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I do not see sharing option as "Private On Record" at upload file modal

  @148534 @validateThatPrivateOnRecordSharingOptionIsNotDisplayedAtFileUploadModalForAdminUser-RecordLevel
  Scenario: Verify that private on record sharing option is not displayed at add/upload file modal for admin user - Record level
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    Then I do not see sharing option as "Private On Record" at upload file modal

  @155493 @validateThatPrivateOnRecordSharingOptionIsNotDisplayedForAdminUserWhileUploadingFileFromMyFeed-HomePhase
  Scenario: Verify that private on record sharing option is not displayed to admin user while uploading file from my feed- home phase
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I navigate to "HOME" tab
    When I click on "Menu" in the page details
    And I select "All Users" from dropdown
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I do not see sharing option as "Private On Record" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I navigate to "Collab" tab
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @155494 @validateThatShowOptionsSectionIsDisplayedForAdminUserWhileUploadingFileFromCollabPhase
  Scenario: Verify that show visibility options is displayed to admin user while uploading file from collab phase
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    Then I softly see the text :
      | Visibility Options |
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @155495 @validateThatPrivateOnRecordSharingOptionIsNotDisplayedForAdminUserWhileUploadingFileFromCollabPhase
  Scenario: Verify that private on record sharing option is not displayed to admin user while uploading file from collab phase
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    Then I do not see sharing option as "Private On Record" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @155498    @validateThatShowOptionsSectionIsDisplayedForAdminUserWhileUploadingFileFromCollabTab-RecordLevel
  Scenario: Verify that show visibility options is displayed to admin user while uploading file from collab tab - record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    Then I see the text :
      | Visibility Options |

  @155499    @validateThatPrivateOnRecordSharingOptionIsNotDisplayedForAdminUserWhileUploadingFileFromCollabTab-RecordLevel
  Scenario: Verify that private on record sharing option is not displayed to admin user while uploading file from collab tab - record level
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-Admin" user
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios2}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios2}" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Test Automation Post For collab attachment functionality check - record level" comment inside my feed
    And I click on "Attach File" button at collab
    Then I do not see sharing option as "Private On Record" at upload file modal

  @155500 @validateThatShowOptionsSectionIsDisplayedAtFileUploadModalForExternalUserCollabTab-RecordLevel
  Scenario: Verify that show visibility options is displayed at add/upload file modal for EXTERNAL user at collab tab - Record level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Post by Automation SPI user - DND" comment inside my feed
    And I click on "Attach File" button at collab
    Then I see the text :
      | Visibility Options |

  @155840 @validateThatShowOptionsSectionIsDisplayedForSPIUserWhileUploadingFileFromFilesLibraryTab-HomePhase
  Scenario: Verify that show options select box is displayed to SPI user while uploading file from files library tab
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    When I click on dropdown at library/folder/file "Library-Folder 1 DND"
    When I click on "Upload File" option at library/folder/file "Library-Folder 1 DND"
    Then I see the text :
      | Visibility Options |

  @148277 @validateThatShowOptionsSectionIsDisplayedForSPIUserWhileUploadingFileFromAttachmentTab-RecordLevel
  Scenario: Verify that show options select box is displayed to SPI user while uploading file from attachment tab - record level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    Then I see the text :
      | Visibility Options |

  @148553 @validateThatPrivateOnRecordSharingOptionIsNotDisplayedAtFileUploadModalForExternalUser-RecordLevel
  Scenario: Verify that private on record sharing option is not displayed at add/upload file modal for EXTERNAL user - Record level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI2" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    Then I do not see sharing option as "Private On Record" at upload file modal

  @155501 @validateThatPrivateOnRecordSharingOptionIsNotDisplayedAtFileUploadModalForExternalUserCollabTab-RecordLevel
  Scenario: Verify that private on record sharing option is not displayed at add/upload file modal for EXTERNAL user at collab tab - Record level
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI2" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Collab" sub tab
    And I click on "Comment" action at "Post by Automation SPI-2 user - DND" comment inside my feed
    And I click on "Attach File" button at collab
    Then I do not see sharing option as "Private On Record" at upload file modal

  @155568 @validateThatPrivateOnRecordSharingOptionIsNotDisplayedForAdminUserWhileUploadingFileFromFilesLibraryTab-HomePhase
  Scenario: Verify that private on record sharing option is not displayed to admin user while uploading file from files library tab
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Upload File" option at library/folder/file "Department of Community Health"
    Then I do not see sharing option as "Private On Record" at upload file modal

  @149352 @validateThatPreviousAndNextNavigationButtonIsDisplayedAtFilesLibraryTab-HomePhase
  Scenario: Verify that Previous and Next navigation buttons are displayed at files library tab
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Asset Library"
    Then I see button "Previous"
    Then I see button "Next"

  @157354 @validateThatIfSharingOptionIsDisabledThenUploadButtonIsDisplayedAtRecordLevel
  Scenario: Verify that Upload button is displayed when visibility options is disabled for user at record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library
    When I enter value as "test Automation upload from record level" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    Then I do not see "Upload" button is disabled at modal under library

  @157781 @validateClassificationsPresentUnderDropDownAtRecordLevelCollabTabAtUploadFileModalByLoginAsAutomationPMUser
  Scenario: Verify classifications present under dropdown at upload file modal at record level collab tab by login as PM user
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:0 |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                  | fieldNewValue                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail        | Attachment Classifications | Other; Medical Reports; Clinical Budgets | Grantee State Program | GNT__PageBlockTitle__c    | Collab                     |
      | Page Tabs Config:Page Layout Action | Is Active                  | true                                     | Grantee State Program | Name                      | TAB-026                    |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly see Classification as "Other" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @157794 @validateClassificationsAddedFromConfigIsNotPresentUnderDropDownAtCollabPhaseUploadFileModal-ByLoginAsAutomationPMUser
  Scenario: Verify classifications added from config is not present in upload file modal at collab phase by login as PM user
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:0 |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                  | fieldNewValue                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail        | Attachment Classifications | Other; Medical Reports; Clinical Budgets | Grantee State Program | GNT__PageBlockTitle__c    | Collab                     |
      | Page Tabs Config:Page Layout Action | Is Active                  | true                                     | Grantee State Program | Name                      | TAB-026                    |
    When I login as "Automation-PM" user
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly do not see Classification as "Other" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @157842 @validateClassificationsAddedFromConfigIsNotPresentUnderDropDownAtHomePhaseUploadFileModal-ByLoginAsAutomationPMUser
  Scenario: Verify classifications added from config is not present in upload file modal at HOME phase by login as PM user
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Attachment Classifications | Other; Medical Reports; Clinical Budgets | Grantee State Program | GNT__PageBlockTitle__c    | Collab                     |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I enter value "@Automation PM" in my feed section and share the comment
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly do not see Classification as "Other" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @157886 @validateClassificationsPresentUnderDropDownAtRecordLevelCollabTabAtUploadFileModalByLoginAsAutomationADMINUser
  Scenario: Verify classifications present under dropdown at upload file modal at record level collab tab by login as ADMIN user
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:0 |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                  | fieldNewValue                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail        | Attachment Classifications | Other; Medical Reports; Clinical Budgets | Grantee State Program | GNT__PageBlockTitle__c    | Collab                     |
      | Page Tabs Config:Page Layout Action | Is Active                  | true                                     | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly see Classification as "Other" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @157903 @validateClassificationsAddedFromConfigIsNotPresentUnderDropDownAtCollabPhaseUploadFileModal-ByLoginAsAutomationADMINUser
  Scenario: Verify classifications added from config is not present in upload file modal at collab phase by login as ADMIN user
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:0 |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName                  | fieldNewValue                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail        | Attachment Classifications | Other; Medical Reports; Clinical Budgets | Grantee State Program | GNT__PageBlockTitle__c    | Collab                     |
      | Page Tabs Config:Page Layout Action | Is Active                  | true                                     | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly do not see Classification as "Other" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @157924 @validateClassificationsAddedFromConfigIsNotPresentUnderDropDownAtHomePhaseUploadFileModal-ByLoginAsAutomationADMINUser
  Scenario: Verify classifications added from config is not present in upload file modal at HOME phase by login as ADMIN user
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue                            | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Attachment Classifications | Other; Medical Reports; Clinical Budgets | Grantee State Program | GNT__PageBlockTitle__c    | Collab                     |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I enter value "@Automation PM" in my feed section and share the comment
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly do not see Classification as "Other" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I navigate to "Collab" tab
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @158145 @validateClassificationsAddedFromConfigIsNotPresentUnderDropDownAtCollabPhaseUploadFileModal-ByLoginAsAutomationSPIUser
  Scenario: Verify classifications added from config is not present in upload file modal at collab phase by login as SPI user
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField | filterId         |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | ApplicationView    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue                            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Attachment Classifications | Other; Medical Reports; Clinical Budgets | ApplicationView    | GNT__PageBlockTitle__c    | Collab                     |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Collab" sub tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    Then I softly see Classification as "Other" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @157931 @validateUploadButtonIsDisabledAndAsteriskMarkIsDisplayedAtClassificationAtRecordLevelCollabTablByLoginAsAutomationPMUser
  Scenario: Verify Upload button is disabled and asterisk mark is displayed at classification at upload file modal - record collab tab by PM account
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "Temp Post Automation description" in field "Description" at Library Files
    Then I see "Upload" button is disabled at modal under library
    Then I see asterisk mark at "Classification" field
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @157935 @validateUploadButtonIsEnabledAndClassificationIsNotDisplayedAtCollabPhaseByLoginAsAutomationPMUser
  Scenario: Verify Upload button is enabled and classification is not displayed at upload file modal-collab phase by PM account
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "Temp Post Automation description" in field "Description" at Library Files
    Then I do not see "Upload" button is disabled at modal under library
    Then I softly do not see Classification as "Select file classification" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @158159 @validateUploadButtonIsEnabledAndClassificationIsNotDisplayedAtHOMEPhaseByLoginAsAutomationPMUser
  Scenario: Verify Upload button is enabled and classification is not displayed at upload file modal-HOME phase by PM account
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I enter value "@Automation PM" in my feed section and share the comment
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "Temp Post Automation description" in field "Description" at Library Files
    Then I do not see "Upload" button is disabled at modal under library
    Then I softly do not see Classification as "Select file classification" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @158169 @validateUploadButtonIsDisabledAndAsteriskMarkIsDisplayedAtClassificationAtRecordLevelCollabTablByLoginAsAutomationADMINUser
  Scenario: Verify Upload button is disabled and asterisk mark is displayed at classification at upload file modal - record collab tab by ADMIN account
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "Temp Post Automation description" in field "Description" at Library Files
    Then I see "Upload" button is disabled at modal under library
    Then I see asterisk mark at "Classification" field
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @158174 @validateUploadButtonIsEnabledAndClassificationIsNotDisplayedAtCollabPhaseByLoginAsADMINUser
  Scenario: Verify Upload button is enabled and classification is not displayed at upload file modal-collab phase by ADMIN account
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "Temp Post Automation description" in field "Description" at Library Files
    Then I do not see "Upload" button is disabled at modal under library
    Then I softly do not see Classification as "Select file classification" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @158189 @validateUploadButtonIsEnabledAndClassificationIsNotDisplayedAtHOMEPhaseByLoginAsAdminUser
  Scenario: Verify Upload button is enabled and classification is not displayed at upload file modal-HOME phase by ADMIN account
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I enter value "@Automation PM" in my feed section and share the comment
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "Temp Post Automation description" in field "Description" at Library Files
    Then I do not see "Upload" button is disabled at modal under library
    Then I softly do not see Classification as "Select file classification" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I navigate to "Collab" tab
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @158193 @validateUploadButtonIsDisabledAndAsteriskMarkIsDisplayedAtClassificationAtRecordLevelCollabTablByLoginAsAutomationPMUser
  Scenario: Verify Upload button is disabled and asterisk mark is displayed at classification at upload file modal - record collab tab by PM account
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "Temp Post Automation description" in field "Description" at Library Files
    Then I see "Upload" button is disabled at modal under library
    Then I see asterisk mark at "Classification" field
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @158198 @validateUploadButtonIsEnabledAndClassificationIsNotDisplayedAtCollabPhaseByLoginAsPMUser
  Scenario: Verify Upload button is enabled and classification is not displayed at upload file modal-collab phase by PM account
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "Temp Post Automation description" in field "Description" at Library Files
    Then I do not see "Upload" button is disabled at modal under library
    Then I softly do not see Classification as "Select file classification" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @158202 @validateUploadButtonIsEnabledAndClassificationIsNotDisplayedAtHOMEPhaseByLoginAsPMUser
  Scenario: Verify Upload button is enabled and classification is not displayed at upload file modal-HOME phase by PM account
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField    | filterId         |
      | Page Tabs Config             | Is Active                  | false                             |                       | ApiGeneratedId:0 |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | Grantee State Program | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Collab" tab
    And I enter value "Temp Post Automation" in my feed section and share the post
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I enter value "@Automation PM" in my feed section and share the comment
    And I pause execution for "3" seconds
    And I navigate to "HOME" tab
    And I click on "Comment" action at "Temp Post Automation" comment inside my feed
    And I click on "Attach File" button at collab
    And I pause execution for "3" seconds
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I enter value as "Temp Post Automation description" in field "Description" at Library Files
    Then I do not see "Upload" button is disabled at modal under library
    Then I softly do not see Classification as "Select file classification" at upload file modal
    When I click on "×" icon at "Add Files" modal under Library
    And I navigate to "Collab" tab
    And I click on "Delete" action from dropdown at "Temp Post Automation" comment inside my feed
    And I click modal button "OK"
    When I pause execution for "5" seconds
    Then I softly do not see "Temp Post Automation" at my feed container with id "---program:-:myFeedTableId---"

  @157841 @validateDefaultVisibilityOptionIsSelectedAtUploadFileModalAtAttachmentTablByLoginAsAutomationADMINUser
  Scenario: Verify Upload default sharing option is selected at upload file modal - attachment tab by ADMIN user
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "SendEmailAttachment.pdf" into library
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"

  @157843 @validateDefaultVisibilityOptionIsSelectedAtUploadFileModalAtAttachmentTablByLoginAsAutomationSPIUser
  Scenario: Verify Upload default sharing option is selected at upload file modal - attachment tab by SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"

  @157354 @validateAdminUserCanSeeUploadButtonActiveWithoutSharingOptionAndCanUploadFileFromRecord
  Scenario: Verify ADMIN user can upload file from record without selecting sharing option
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from record level" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "TestAutomationFile.csv" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.csv" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @157880 @validateSharingOptionSelectAtUploadFileModalIsDisplayedUnderFilesTableAtRecordDetailByLoginAsAutomationSPIUser
  Scenario: Verify select sharing option is displayed at files table at attachment tab by SPI user
    Given I have "default" configuration as below:
      | configurationCategory        | fieldName                  | fieldOrignalValue                 | coreComponentField | filterId         |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | ApplicationView    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName                  | fieldNewValue                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Attachment Classifications | Medical Reports; Clinical Budgets | ApplicationView    | GNT__PageBlockTitle__c    | Application Files          |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select Classification as "Medical Reports" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "Visible to Internal Users With Record Access" for title "Sharing Option" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I perform quick search for "TestAutomationFile.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @160557 @validateThatAdminUserCanUploadFileFromRecordLevelIfVisibilityOptionIsDisabledAndDefaultOptionIsSelected @NeedDeleteAPI
  Scenario: Verify that admin user can upload file from record level if visibility option is disabled and default option is selected
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.docx" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.docx" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "TestAutomationFile.docx" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomationFile.docx" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @160586 @validateThatAdminUserCanUploadFileFromHome-FilesLibraryIfVisibilityOptionIsDisabledAndDefaultOptionIsSelected @NeedDeleteAPI
  Scenario: Verify that admin user can upload file from Home- files library if visibility option is disabled and default option is selected
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "SendEmailAttachment.pdf" into library
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SendEmailAttachment.pdf" is displayed under files library

  @160587 @validateThatAdminUserCanUploadFileFromHome-FilesListIfVisibilityOptionIsDisabledAndDefaultOptionIsSelected @NeedDeleteAPI
  Scenario: Verify that admin user can upload file from Home- files list if visibility option is disabled and default option is selected
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

  @160634 @validateThatPMUserCanUploadFileFromRecordLevelIfVisibilityOptionIsDisabledAndDefaultOptionIsSelected @NeedDeleteAPI
  Scenario: Verify that PM user can upload file from record level if visibility option is disabled and default option is selected
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.docx" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.docx" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see value "TestAutomationFile.docx" for title "Title" inside table "---program:-:PlanningFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestAutomationFile.docx" in "---program:-:PlanningFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:PlanningFilesFlexGridId---"

  @160639 @validateThatPMUserCanUploadFileFromHome-FilesLibraryIfVisibilityOptionIsDisabledAndDefaultOptionIsSelected @NeedDeleteAPI
  Scenario: Verify that PM user can upload file from Home- files library if visibility option is disabled and default option is selected
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "SendEmailAttachment.pdf" into library
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SendEmailAttachment.pdf" is displayed under files library

  @160642 @validateThatPMUserCanUploadFileFromHome-FilesListIfVisibilityOptionIsDisabledAndDefaultOptionIsSelected @NeedDeleteAPI
  Scenario: Verify that PM user can upload file from Home- files list if visibility option is disabled and default option is selected
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

  @160806 @validateThatSPIUserCanUploadFileFromRecordLevelIfVisibilityOptionIsDisabledAndDefaultOptionIsSelected @NeedDeleteAPI
  Scenario: Verify that SPI user can upload file from record level if visibility option is disabled and default option is selected
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestAutomationFile.csv" into library with sharing
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestAutomationFile.csv" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Delete" icon for "TestAutomationFile.csv" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I perform quick search for "TestAutomationFile.csv" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @160817 @validateThatSPIUserCanUploadFileFromHome-FilesLibraryIfVisibilityOptionIsDisabledAndDefaultOptionIsSelected @NeedDeleteAPI
  Scenario: Verify that SPI user can upload file from Home- files library if visibility option is disabled and default option is selected
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "UnitedHealth Group"
    Then I softly see library/folder/file "SendEmailAttachment.pdf" is displayed under files library
    When I click on dropdown at library/folder/file "SendEmailAttachment.pdf"
    When I click on "Delete File" option at library/folder/file "SendEmailAttachment.pdf"
    When I pause execution for "7" seconds
    Then I softly do not see library/folder/file "SendEmailAttachment.pdf" is displayed under files library

  @160828 @validateThatSPIUserCanUploadFileFromHome-FilesListIfVisibilityOptionIsDisabledAndDefaultOptionIsSelected @NeedDeleteAPI
  Scenario: Verify that SPI user can upload file from Home- files list if visibility option is disabled and default option is selected
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I click on top right button "Add Files" in flex table with id "flexGridWorkSpaceFiles"
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "UnitedHealth Group" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see value "SendEmailAttachment.pdf" for title "Title" inside table "---program:-:workSpaceFilesFlexTableId---"
    When I click on "Delete" icon for "SendEmailAttachment.pdf" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "3" seconds
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "SendEmailAttachment.pdf" in "---program:-:workSpaceFilesFlexTableId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:workSpaceFilesFlexTableId---"

  @130418 @validateThatFileIsEditableToSPIUserIfSharingOptionIsSelectedAsVisibleToAnyoneWithRecordAccessAndCustomSettingIsEnabled
  Scenario: Verify that file added by admin user can be edited by SPI user if sharing option as "Visible to anyone With Record Access" is select at upload file modal and custom setting is enabled
    When I login as "Automation-Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    And I switch to iframe with id "ApplicationFilesiframeContentId"
    When I upload file "TestFileSharing.docx" into library with sharing
    When I select sharing option as "Visible to Anyone With Record Access" at upload file modal
    When I enter value as "sharing options test" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "7" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
  #130418 - visible to external user
    When I re-login to "Grants Portal" app as "Automation-SPI2" user on "SUBPORTAL" portal
    And I navigate to "Applications" tab
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "TestFileSharing.docx" for title "Title" inside table "---program:-:ApplicationFilesFlexGridId---"
    When I click on "Edit" icon for "TestFileSharing.docx" inside table
    When I enter value as "test Automation update" in field "Description" at Library Files
    When I click on "Save" button in send email modal
    When I click on "×" icon at "File Edit" modal under Library
    When I pause execution for "3" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see value "test Automation update" for title "Description" inside table "---program:-:ApplicationFilesFlexGridId---"
  #130418 - record deleted by internal user
    When I re-login to "As a Grantor" app as "Automation-Admin" user on "default" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "All Applications"
    When I perform quick search for "Test Announcement"
    When I click on "View" icon for "Test Announcement" inside table
    When I navigate to "Attachments" sub tab
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    When I click on "Delete" icon for "TestFileSharing.docx" inside table
    When I click "Yes" on modal confirmation box
    When I pause execution for "5" seconds
    When I perform quick search for "TestFileSharing.docx" in "---program:-:ApplicationFilesFlexGridId---" panel
    Then I softly see "No Records Found" inside flex table with id "---program:-:ApplicationFilesFlexGridId---"

  @157844 @validateThatUploadFileButtonIsActiveEvenIfVisibilityOptionIsDisabledForSPIUser
  Scenario: Verify that Upload button is active even if visibility option is disabled for SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "UnitedHealth Group"
    When I click on "Upload File" option at library/folder/file "UnitedHealth Group"
    When I upload file "SendEmailAttachment.pdf" into library with sharing
    Then I see visibility option is disabled with default value as "Visible to Anyone With Record Access"
    Then I do not see "Upload" button is disabled at modal under library