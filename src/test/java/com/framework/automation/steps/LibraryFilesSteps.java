package com.framework.automation.steps;

import com.framework.automation.pageobject.LibraryFilesPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;


public class LibraryFilesSteps {
    LibraryFilesPage libraryFilesPage;

    public LibraryFilesSteps() {
        libraryFilesPage = new LibraryFilesPage();
    }

    @When("^I click on expand icon at library/folder \"([^\"]*)\"$")
    public void clickOnExpandIconAtLibrary(String libraryFileFolderName) {
        libraryFilesPage.clickOnExpandIconAtLibraryFolder(libraryFileFolderName);
    }

    @When("^I click on dropdown at library/folder/file \"([^\"]*)\"$")
    public void clickOnDropdownIconAtLibrary(String libraryFileFolderName) {
        libraryFilesPage.clickOnDropdownIconAtLibraryFolderFile(libraryFileFolderName);
    }

    @When("^I click on \"([^\"]*)\" option at library/folder/file \"([^\"]*)\"$")
    public void clickOnDropdownOptionsAtLibrary(String dropDownOption, String libraryFileFolderName) {
        libraryFilesPage.clickOnDropdownOptionsAtLibraryFolderFile(dropDownOption, libraryFileFolderName);
    }

    @When("^I enter value as \"([^\"]*)\" in field \"([^\"]*)\" at Library Files$")
    public void enterValueInFieldsAtModalWindowAtLibrary(String value, String fieldName) {
        libraryFilesPage.enterValueInFieldsAtModalWindow(value, fieldName);
    }

    @When("^I click on \"([^\"]*)\" icon at \"([^\"]*)\" modal under Library$")
    public void clickOnCloseIconAtLibraryModal(String icon, String modalTitle) {
        libraryFilesPage.clickOnCloseIconAtLibraryFolderFileModal(icon, modalTitle);
    }

    @When("^I upload file \"([^\"]*)\" into library$")
    public void uploadFileInLibrary(String attachmentName) {
        libraryFilesPage.uploadFileInLibraryAtHomePhase(attachmentName);
    }

    @When("^I click on SelectChange Folder in add file modal$")
    public void clickOnSelectChangeFolderInAddFileModal() {
        libraryFilesPage.clickOnSelectChangeFolderInAddFileModalUnderLibrary();
    }

    @When("^I Select/Change Folder as \"([^\"]*)\" in add file modal$")
    public void selectOrChangeFolderInAddFileModalUnderLibrary(String folderName) {
        libraryFilesPage.selectOrChangeFolderInAddFileModalUnderLibrary(folderName);
    }

    @When("^I perform quick search for \"([^\"]*)\" under files library$")
    public void performQuickSearchUnderFilesLibrary(String searchValue) {
        libraryFilesPage.performQuickSearchUnderFilesLibrary(searchValue);
    }

    @When("^I select Classification as \"([^\"]*)\" at upload file modal$")
    public void selectClassificationAtUploadFileModal(String classification) {
        libraryFilesPage.selectClassificationAtUploadFileModalUnderLibrary(classification);
    }

    @When("^I click on page navigation arrow \"([^\"]*)\" at table with id \"([^\"]*)\" under upload file modal$")
    public void clickOnPageNavigationArrow(String NextPrevious, String tableId) {
        libraryFilesPage.clickOnPageNavigationArrowAtUploadFileModal(NextPrevious, tableId);
    }

    @When("^I select \"([^\"]*)\" page from dropdown at search table with id \"([^\"]*)\" at file upload modal$")
    public void selectPagesFromDropdownAtFileUploadModal(String numberOfEntries, String tableId) {
        libraryFilesPage.selectPagesFromDropdownAtFileUploadModal(numberOfEntries, tableId);
    }

    @When("^I drag the \"([^\"]*)\" file from \"([^\"]*)\" folder and drop in \"([^\"]*)\" folder at library$")
    public void dragTheFileFromFolderAndDropInAnotherFolderAtLibrary(String fileName, String sourceFolderName, String targetFolderName) {
        libraryFilesPage.dragAndDropFileFromOneFolderToAnother(fileName,sourceFolderName,targetFolderName);
    }

    @And("I click on {string} tab at files library upload modal")
    public void clickOnTabAtFilesLibraryUploadModal(String tabName) {
        libraryFilesPage.clickOnTabAtFilesLibraryUploadModal(tabName);
    }

    @Then("^I (see|do not see|softly see|softly do not see) library/folder/file \"([^\"]*)\" is displayed under files library$")
    public void asserLibraryFileFolderIsDisplayedOnUI(String usuage, String libraryFileFolderName) {
        libraryFilesPage.assertLibraryFileFolderIsDisplayed(usuage, libraryFileFolderName);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" option is present at library/folder/file \"([^\"]*)\"$")
    public void asserDropdownOptionIsDisplayedOnUI(String usuage, String dropDownOption, String libraryFileFolderName) {
        libraryFilesPage.asserDropdownOptionIsDisplayedAtLibraryFileFolder(usuage, dropDownOption, libraryFileFolderName);
    }

    @Then("^I see \"([^\"]*)\" modal window is not displayed$")
    public void asserModalWindowIsNotDisplayedOnUI(String modalTitle) {
        libraryFilesPage.asserModalWindowIsNotDisplayedAtLibraryFileFolder(modalTitle);
    }

    @Then("^I see \"([^\"]*)\" button is disabled at modal under library$")
    public void asserModalButtonIsDisabledAtLibraryFileFolder(String buttonName) {
        libraryFilesPage.asserModalButtonIsDisabledAtLibrary(buttonName);
    }

    @Then("^I see default library/folder as \"([^\"]*)\" is displayed$")
    public void asserDefaultLibraryFolderIsDisabledAtUploadModal(String defaultFolder) {
        libraryFilesPage.asserDefaultLibraryFolderIsDisabledAtUploadModal(defaultFolder);
    }

    @Then("^I see \"([^\"]*)\" modal window with id \"([^\"]*)\" is not displayed$")
    public void assertModalWindowIsNotDisplayedAtFilesList(String modalTitle, String tableId) {
        libraryFilesPage.assertModalWindowIsNotDisplayedAtFilesList(modalTitle, tableId);
    }

    @Then("^I (see|do not see|softly see|softly do not see) library/folder/file as \"([^\"]*)\" highlighted with color$")
    public void seeLibraryFolderFileAsHighlightedInYellow(String usuage, String libraryFileFolderName) {
        libraryFilesPage.libraryFolderFileAsHighlightedInYellow(usuage, libraryFileFolderName);
    }

    @Then("^I (see|do not see|softly see|softly do not see) Label/Count as \"([^\"]*)\" is displayed$")
    public void libraryFolderFileCountDisplayedatLibraryFiles(String usuage, String labelAndCount) {
        libraryFilesPage.libraryFolderFileCountDisplayedAtLibraryFiles(usuage, labelAndCount);
    }

    @Then("^I see \"([^\"]*)\" shown in search table with id \"([^\"]*)\" at file upload modal$")
    public void assertValueShownInSearchTableAtFileUploadModal(String tableValue, String tableId) {
        libraryFilesPage.assertValueShownInSearchTableAtFileUploadModal(tableValue, tableId);
    }

    @Then("^I (softly see|see|softly do not see|do not see) tab label as \"([^\"]*)\" at files library upload modal$")
    public void assertTabLabelInsideAddFileModal(String usage , String tabName) {
        libraryFilesPage.assertTabNameInsideAddFileModal(usage, tabName);
    }

    @Then("^I (see|softly see) Classification as \"([^\"]*)\" at upload file modal$")
    public void assertClassificationAtUploadFileModal(String usage, String classification) {
        libraryFilesPage.assertClassificationNameAtAddFileModal(usage, classification);
    }

    @Then("^I see label as \"([^\"]*)\" is displayed at upload file button$")
    public void assertLabelIsDisplayedAtUploadFileButton(String buttonLabel) {
        libraryFilesPage.assertLabelAtUploadFileButton(buttonLabel);
    }

    @Then("^I (see|do not see|softly see|softly do not see) Default keyword \"([^\"]*)\" at library/folder inside \"([^\"]*)\"$")
    public void assertDefaultKeywordAtLibraryFolder(String usuage, String libraryOrFolderName , String pageID) {
        libraryFilesPage.assertDefaultKeywordAtLibraryFolder(usuage,libraryOrFolderName,pageID);
    }

    @Then("^I see pre-selected library/folder as \"([^\"]*)\" is displayed at add file modal$")
    public void assertPreSelectedLibraryOrFolderAtAddFileModal(String folderName) {
        libraryFilesPage.assertPreSelectedLibraryFolderAtAddFileModal(folderName);
    }
}