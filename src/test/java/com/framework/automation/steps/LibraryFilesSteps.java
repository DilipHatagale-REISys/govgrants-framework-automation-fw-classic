package com.framework.automation.steps;

import com.framework.automation.pageobject.LibraryFilesPage;
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
}
