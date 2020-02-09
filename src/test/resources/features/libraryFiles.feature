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

  @70264 @validateThatFileShouldGetDownloadFromFolderForViewerProfileHomePhase @wip
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
    Then I see "First Name" in downloaded xls or csv file "automationTestingOfFiles"

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