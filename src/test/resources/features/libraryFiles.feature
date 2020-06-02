@libraryFiles-component @regression @libraryFiles
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
    Then I see "Download File" option is present at library/folder/file "SendEmailAttachment.png"

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
    When I login as "Automation-PM" user
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
    Then I softly see library/folder/file "testAutomationFolderInFolder" is displayed under files library
    When I click on expand icon at library/folder "testAutomationFolder1"
    When I click on dropdown at library/folder/file "testAutomationFolderInFolder"
    When I click on "Delete Folder" option at library/folder/file "testAutomationFolderInFolder"
    When I pause execution for "5" seconds
    Then I softly do not see library/folder/file "testAutomationFolderInFolder" is displayed under files library

  @70360 @validateThatDeleteFolderIsDisplayedInLibraryByAuthor-HomePhase
  Scenario: Verify that the Delete folder option is available at library dropdown under home phase by author
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I enter value as "testAutomationFolderByAuthor" in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
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

  @70286 @validateThatAuthorCanUploadFileUnderFolder-HomePhase @NeedDeleteAPI
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
    When I click on "Save" button in send email modal
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
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    When I click on "Upload File" option at library/folder/file "testAutomationFolder1"
    When I upload file "TestAutomation.txt" into library
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder1"
    Then I softly see library/folder/file "TestAutomation.txt" is displayed under files library
    When I click on dropdown at library/folder/file "TestAutomation.txt"
    When I click on "Edit File" option at library/folder/file "TestAutomation.txt"
    When I enter value as "EditTestAutomation.txt" in field "Title" at Library Files
    When I click on "Save" button in send email modal
    When I pause execution for "4" seconds
    Then I softly see library/folder/file "EditTestAutomation.txt" is displayed under files library
    When I click on dropdown at library/folder/file "EditTestAutomation.txt"
    When I click on "Delete File" option at library/folder/file "EditTestAutomation.txt"
    When I pause execution for "7" seconds
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
    When I Select/Change Folder as "Department of Community Health" in add file modal
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

  @70495 @validateThatFileUploadedFromLibraryFilesIsDisplayedUnderFilesListTab-HomePhase-FileList @NeedDeleteAPI
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
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
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

  @70497 @validateByClickOnCloseIconAtEditFileModalOperationAModalIsGettingClosed-HomePhase
  Scenario: Verify that a modal is getting closed by lick on cross button under edit file modal - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "automationTestingOfFiles.xls" in "---program:-:workSpaceFilesFlexTableId---" panel
    When I click on "Edit" icon for "automationTestingOfFiles.xls" inside table
    When I click on "×" icon at "File Edit" modal under Library
    Then I see "File Edit" modal window with id "---program:-:workSpaceFilesModalId---" is not displayed

  @70498 @validateByClickOnCloseIconAtEditFileModalOperationAModalIsGettingClosed-HomePhase
  Scenario: Verify that a modal is getting closed by lick on cross button under edit file modal - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_FileList"
    When I perform quick search for "automationTestingOfFiles.xls" in "---program:-:workSpaceFilesFlexTableId---" panel
    When I click on "Edit" icon for "automationTestingOfFiles.xls" inside table
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
    Then I softly see library/folder/file as "automationTestingOfFiles.xls" highlighted with color

  @71528 @validateThatQuickSearchResultCountIsDisplayed-HomePhase
  Scenario: Verify that quick search result count is displayed under library files - Home Phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I perform quick search for "Test" under files library
    Then I softly see Label/Count as "Folders - 4" is displayed
    Then I softly see Label/Count as "Files - 2" is displayed

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
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
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
    When I login as "Automation-PM" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    Then I softly do not see "Set As Default Folder" option is present at library/folder/file "Department of Community Health"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    Then I softly do not see "Set As Default Folder" option is present at library/folder/file "testAutomationFolder1"

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
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
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
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
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
    When I perform quick search for "DummyFile2_DND.jpg" under files library
    Then I see "DummyFile2_DND.jpg" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @70744 @validateThatByClickOnLastArrowALastPageIsDisplayedUnderUploadFileModal-RecordLevel
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
    Then I see "DummyFile2_DND.jpg" shown in search table with id "WorkspaceFilesUpload" at file upload modal

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
    Then I see "SendEmailAttachment.png" shown in search table with id "WorkspaceFilesUpload" at file upload modal

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
    Then I see "DummyFile2_DND.jpg" shown in search table with id "WorkspaceFilesUpload" at file upload modal

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
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
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
    When I Select/Change Folder as "Department of Community Health" in add file modal
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
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

  @70288 @validateThatFoldersPresentAtHomePhaseFilesLibraryArePresentAtRecordLevelUploadFileModal-RecordLevel @wip
  Scenario: Verify that file added from record level is displayed under home phase files list tab - record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "SendEmailAttachment.pdf" into library
    When I click on SelectChange Folder in add file modal
    When I Select/Change Folder as "Department of Community Health" in add file modal
    And I save the field containing "<string>" as "<string>"
    And I save the field labeled "<string>" as "<string>"
    Then I softly see field "Cash Match Required (%)" as "{SavedValue:MatchPercentage}"

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
    Then I see Classification as "Select File Classification" at upload file modal

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
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    Then I do not see Default keyword "UnitedHealth Group" at library/folder inside "fileLibrary"

  @81302 @validateThatDefaultKeyWordIsNotDisplayedAtFolderForSPIProfile-HomePhase
  Scenario: Verify that  default keyword is not Displayed at folder under home phase library for SPI profile
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    Then I do not see Default keyword "testAutomationDefaultFolder" at library/folder inside "fileLibrary"

  @81311 @validateThatUploadFileFromLibraryTabIsNotDisplayedAtAddFileModalForSPIProfile-RecordLevel
  Scenario: Verify that upload file from library tab is not Displayed at add file modal for SPI profile
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

  @81525 @validateIfLibraryIsSetAsDefaultThenItsNameIsDisplayedAsPre-SelectedFolderAtAddFileModalUnderPlanningFilesTable-RecordLevel @needMetaDataAPIs @wip
  Scenario: Verify if default library is set then that folder name is displayed under select/change folder field at add file modal - Planing Phase
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "Test Automation Application DND"
    When I click on "View" icon for "Test Automation Application DND" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:ApplicationFilesFlexGridId---"
    Then I see pre-selected library/folder as "UnitedHealth Group" is displayed at add file modal

  @81534 @validateIfLibraryIsSetAsDefaultThenItsNameIsDisplayedAsPre-SelectedFolderAtAddFileModalUnderPlanningFilesTable-PhaseLevel @needMetaDataAPIs
  Scenario: Verify if default library is set then that folder name is displayed under select/change folder field at add file modal - home Phase
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

  @81592 @validateThatAuthorCannotEditFileUploadedByOtherUser-HomePhase
  Scenario: Verify that author cannot see the edit option at file uploaded by other users
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder1"
    When I click on dropdown at library/folder/file "SendEmailAttachment.png"
    Then I do not see "Edit File" option is present at library/folder/file "SendEmailAttachment.png"

  @81593 @validateThatAuthorCannotDeleteFileUploadedByOtherUser-HomePhase
  Scenario: Verify that author cannot see the Delete option at file uploaded by other users
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on expand icon at library/folder "testAutomationFolder1"
    When I click on dropdown at library/folder/file "SendEmailAttachment.png"
    Then I do not see "Delete File" option is present at library/folder/file "SendEmailAttachment.png"

  @81646 @validateThatAuthorCannotDeleteFolderUploadedByOtherUser-HomePhase
  Scenario: Verify that author cannot see the Delete Folder option at file uploaded by other users
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    Then I do not see "Delete Folder" option is present at library/folder/file "testAutomationFolder1"

  @81648 @validateThatAuthorCannotRenameFolderUploadedByOtherUser-HomePhase
  Scenario: Verify that author cannot see the rename Folder option at file uploaded by other users
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on expand icon at library/folder "Department of Community Health"
    When I click on dropdown at library/folder/file "testAutomationFolder1"
    Then I do not see "Rename Folder" option is present at library/folder/file "testAutomationFolder1"

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

  @81674 @validateThatDefaultKeyWordIsDisplayedAtFolderUnderSelectChangeFolderModalWindowForGovGrantAdminProfile-RecordLevel
  Scenario: Verify that default keyword is Displayed at folder at select or change folder modal for GovGrant Admin profile -Record level
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I click on SelectChange Folder in add file modal
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
    When I click on "Upload" button in send email modal
    Then I see the following messages in the page details contains:
      | Please verify that the file can be readable |

  @81515 @validateThatUserCanEditFileAndChangeFolderOfExistingFile-RecordLevel
  Scenario: Verify that user is able to edit existing file and change folder of that file - record level
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
    When I pause execution for "3" seconds
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
    When I login as "AUTOMATION-APPLICANT" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    And I click on "Upload File from Library" tab at files library upload modal
    When I perform quick search for "AssetLibraryTestData.pdf" under files library
    Then I see "AssetLibraryTestData.pdf" shown in search table with id "WorkspaceFilesUpload" at file upload modal

  @83085 @validateThatOnlyAssetLibraryIsDisplayedToUserWhoDon'tHaveAccessOfAnyOtherLibraryAtUploadFileModal-RecordLevel
  Scenario: Verify that only asset library is displayed to the user who have access of only asset library at upload file from library modal window - record level
    When I login as "AUTOMATION-APPLICANT" user
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
    And I pause execution for "5" seconds
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
    Then I see the following messages in the page details contains:
      | You do not have the level of access necessary to perform the operation you requested. Please contact the owner of the record or your administrator if access is necessary. |
