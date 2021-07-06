package com.framework.automation.steps;

import com.framework.automation.pageobject.LibraryFilesPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.springframework.context.annotation.Description;


public class LibraryFilesSteps {
    LibraryFilesPage libraryFilesPage;

    public LibraryFilesSteps() {
        libraryFilesPage = new LibraryFilesPage();
    }

    @When("^I drag the \"([^\"]*)\" file from \"([^\"]*)\" folder and drop in \"([^\"]*)\" folder at library$")
    public void dragTheFileFromFolderAndDropInAnotherFolderAtLibrary(String fileName, String sourceFolderName, String targetFolderName) {
        libraryFilesPage.dragAndDropFileFromOneFolderToAnother(fileName,sourceFolderName,targetFolderName);
    }

    @When("^I click on page navigation arrow \"([^\"]*)\" at table with id \"([^\"]*)\" under upload file modal$")
    public void clickOnPageNavigationArrow(String NextPrevious, String tableId) {
        libraryFilesPage.clickOnPageNavigationArrowAtUploadFileModal(NextPrevious, tableId);
    }

    @Description("Select page from dropdown at table under upload file modal")
    @When("^I select \"([^\"]*)\" page from dropdown at search table with id \"([^\"]*)\" at file upload modal$")
    public void selectPagesFromDropdownAtFileUploadModal(String numberOfEntries, String tableId) {
        libraryFilesPage.selectPagesFromDropdownAtFileUploadModal(numberOfEntries, tableId);
    }

    @Description("Select dropdown options at library or file or folder under library files tree view")
    @When("^I click on \"([^\"]*)\" option at library/folder/file \"([^\"]*)\"$")
    public void clickOnDropdownOptionsAtLibrary(String dropDownOption, String libraryFileFolderName) {
        libraryFilesPage.clickOnDropdownOptionsAtLibraryFolderFile(dropDownOption, libraryFileFolderName);
    }

    @And("I expand table with header {string}")
    public void iExpandTableWithHeader(String tableHeader) {
        libraryFilesPage.clcikOnTableHeaderToExpand(tableHeader);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" option is present at library/folder/file \"([^\"]*)\"$")
    public void asserDropdownOptionIsDisplayedOnUI(String usuage, String dropDownOption, String libraryFileFolderName) {
        libraryFilesPage.asserDropdownOptionIsDisplayedAtLibraryFileFolder(usuage, dropDownOption, libraryFileFolderName);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" modal window is displayed$")
    public void asserModalWindowIsNotDisplayedOnUI(String usage, String modalTitle) {
        libraryFilesPage.asserModalWindowIsNotDisplayedAtLibraryFileFolder(usage, modalTitle);
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
        libraryFilesPage.isLibraryFolderFileCountDisplayedAtLibraryFiles(usuage, labelAndCount);
    }

    @Then("^I (softly see|see) \"([^\"]*)\" shown in search table with id \"([^\"]*)\" at file upload modal$")
    public void assertValueShownInSearchTableAtFileUploadModal(String usuage, String tableValue, String tableId) {
        libraryFilesPage.assertValueShownInSearchTableAtFileUploadModal(usuage, tableValue, tableId);
    }

    @Then("^I (softly see|see|softly do not see|do not see) tab label as \"([^\"]*)\" at files library upload modal$")
    public void assertTabLabelInsideAddFileModal(String usage , String tabName) {
        libraryFilesPage.assertTabNameInsideAddFileModal(usage, tabName);
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

    @Then("^I see \"([^\"]*)\" button inside select folder modal$")
    public void iSeeButtonInsideSelectFolderModal(String buttonName) {
        libraryFilesPage.assertButtonInsideSelectFolderModal(buttonName);
    }

    @Then("I see alert message inside {string} modal as follows :")
    public void iSeeAlertMessageInsideModalAsFollows(String modalId, String expectedAlertMessage) {
        libraryFilesPage.assertAlertMessageInsideLibraryFilesModal(modalId,expectedAlertMessage);
    }

    @Then("I see file {string} is displayed under {string} library or folder")
    public void iSeeFileIsDisplayedUnderFilesLibrary(String fileName, String libraryOrFolderName) {
        libraryFilesPage.assertFileDisplayedUnderExpectedLibrary(fileName, libraryOrFolderName);
    }

    @Then("I see files {string} is displayed under {string} folder")
    public void iSeeFileIsDisplayedUnderFolder(String fileName, String folderName) {
    libraryFilesPage.assertFilesWithSameNameDisplayedInFolder(fileName,folderName );}

    @Then("^I (see|do not see) sharing option as \"([^\"]*)\" at upload file modal$")
    public void iSeeSharingOptionAsAtUploadFileModal(String usage, String sharingOption) {
    libraryFilesPage.assertSharingOptionsDisplayedAtFileUploadModal(usage,sharingOption);}

    @Then("I see asterisk mark at {string} field")
    public void iSeeIsRequiredForSave(String fieldName) {
        libraryFilesPage.assertAsteriskMarkIsDisplayedAtRequiredFieldsAtUploadFileModal(fieldName);
    }

    @Then("^I (see|do not see) information as \"([^\"]*)\" at files library upload modal$")
    public void iSeeInformationAsAtFilesLibraryUploadModal(String usage, String information) {
        libraryFilesPage.assertInformationAtFilesUploadModal(usage, information);
    }

    @Then("^I softly see checkbox/radio button at \"([^\"]*)\" is disabled$")
    public void iSoftlySeeCheckboxOrRadioButtonAtIsDisabled(String fileName) {
        libraryFilesPage.assertCheckboxOrRadioButtonAtFileIsDisabledAtUploadFileModal(fileName);
    }

    @Then("^I (softly see|softly do not see) \"([^\"]*)\" at my feed container with id \"([^\"]*)\"$")
    public void iDoNotSeeAtMyFeedSectionContainerWithId(String usage,String text, String sectionId) {
        libraryFilesPage.assertTextAtMyFeedSectionWithId(usage,text,sectionId);
    }
}