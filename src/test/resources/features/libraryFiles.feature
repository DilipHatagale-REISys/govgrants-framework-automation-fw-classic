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

  @70432 @validateThatSpacesInFolderNameIsNotAcceptedWhileCreatingFolderUnderLibrary-AtHomePhase
  Scenario: Verify that if user enter spaces in folder name then an alert message is displayed - home phase
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_File"
    When I click on "My_Workspace_Library"
    When I click on dropdown at library/folder/file "Department of Community Health"
    When I click on "Add New Folder" option at library/folder/file "Department of Community Health"
    When I enter value as "  " in field "Folder Name" at Library Files
    When I click on "Save" button in send email modal
    Then I see the following messages in the page details contains:
      | The Content Folder null isn't valid. Use a unique name that doesn't start or end with a space and doesn't contain the character /.: Name |

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