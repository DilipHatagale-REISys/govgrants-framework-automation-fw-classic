package com.framework.automation.pageobject;

import com.automation.rei.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.objects.Elements;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import java.util.List;

public class LibraryFilesPage extends GovGrantsManager {

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * click on page navigation arrow at Files table - Library files record level
     *
     * @param NextPrevious
     * @param tableId
     */
    public void filesTablePagination(String NextPrevious, String tableId) {
        By paginationChoice = By.xpath("//*[@id='" + tableId + "']//button[@data-value='" + NextPrevious + "']");
        I.amPerforming().click().on(paginationChoice);
    }

    /**
     * click on pages dropdown to select page under upload file modal - Library files record level
     *
     * @param numberOfEntries
     * @param tableId
     */
    public void filesTablePagesDropdown(String numberOfEntries, String tableId) {
        By entriesDropDown = By.xpath("//*[@id='" + tableId + "']//div[@id='Footer']//div[contains(@class,'slds-select_container')]//select");
        WebElement entriesDD = I.amPerforming().getElementReference().of(entriesDropDown);

        try {
            I.amPerforming().click().on(entriesDD);
            (new Select(entriesDD)).selectByVisibleText(numberOfEntries);
        } catch (Exception var6) {
            I.amPerforming().click().on(entriesDD);
            (new Select(entriesDD)).selectByVisibleText(numberOfEntries);
        }

    }

    /**
     * assert true if dropdown options under respective Library/File/Folder is Displayed - Home phase
     *
     * @param dropDownOption
     * @param libraryFileFolderName
     */
    public void asserDropdownOptionIsDisplayedAtLibraryFileFolder(String usuage, String dropDownOption, String libraryFileFolderName) {
        if (usuage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isDropdownOptionIsDisplayedAtLibraryFileFolder(dropDownOption, libraryFileFolderName));
        } else if (usuage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isDropdownOptionIsDisplayedAtLibraryFileFolder(dropDownOption, libraryFileFolderName));
        } else if (usuage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isDropdownOptionIsDisplayedAtLibraryFileFolder(dropDownOption, libraryFileFolderName)).isTrue();
        } else if (usuage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isDropdownOptionIsDisplayedAtLibraryFileFolder(dropDownOption, libraryFileFolderName)).isFalse();
        }
    }

    /**
     * assert true if modal window is Displayed - Home phase
     *
     * @param modalTitle
     */
    public void asserModalWindowIsNotDisplayedAtLibraryFileFolder(String usage, String modalTitle) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isModalWindowNotDisplayedAtLibraryFileFolder(modalTitle));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isModalWindowNotDisplayedAtLibraryFileFolder(modalTitle));
        }
    }

    /**
     * assert true if default file/folder is displayed under upload file modal - Home Phase
     *
     * @param defaultFolder
     */
    public void asserDefaultLibraryFolderIsDisabledAtUploadModal(String defaultFolder) {
        Assert.assertTrue(isDefaultLibraryFolderIsDisabledAtUploadModal(defaultFolder));
    }

    /**
     * assert true if modal window is not Displayed by click on action close/cancel - Files List - Home Phase
     *
     * @param modalTitle
     * @param tableId
     */
    public void assertModalWindowIsNotDisplayedAtFilesList(String modalTitle, String tableId) {
        Assert.assertTrue(isModalWindowIsNotDisabledAtFilesList(modalTitle, tableId));
    }

    /**
     * assert true if Library/ Folder/ File name is Highlighted In Yellow color after quick search- Home Phase
     *
     * @param libraryFileFolderName
     */
    public void libraryFolderFileAsHighlightedInYellow(String usuage, String libraryFileFolderName) {
        if (usuage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isLibraryFolderFileHighlightedInYellow(libraryFileFolderName));
        } else if (usuage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isLibraryFolderFileHighlightedInYellow(libraryFileFolderName));
        } else if (usuage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isLibraryFolderFileHighlightedInYellow(libraryFileFolderName)).isTrue();
        } else if (usuage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isLibraryFolderFileHighlightedInYellow(libraryFileFolderName)).isFalse();
        }
    }

    /**
     * assert true if Library/ Folder/ File count is displayed after quick search- Home Phase
     *
     * @param labelAndCount
     */
    public void isLibraryFolderFileCountDisplayedAtLibraryFiles(String usuage, String labelAndCount) {
        if (usuage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isLibraryFolderFileCountDisplayed(labelAndCount));
        } else if (usuage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isLibraryFolderFileCountDisplayed(labelAndCount));
        } else if (usuage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isLibraryFolderFileCountDisplayed(labelAndCount)).isTrue();
        } else if (usuage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isLibraryFolderFileCountDisplayed(labelAndCount)).isFalse();
        }
    }

    /**
     * assert true if searched record/value is displayed under table at upload file modal - Record level
     *
     * @param tableValue
     */
    public void assertValueShownInSearchTableAtFileUploadModal(String usuage, String tableValue, String tableId) {

        Assert.assertTrue(isSearchedValueDisplayedInTableAtFileUploadModal(tableValue, tableId));
        if (usuage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isSearchedValueDisplayedInTableAtFileUploadModal(tableValue, tableId));
        } else if (usuage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isSearchedValueDisplayedInTableAtFileUploadModal(tableValue, tableId)).isTrue();
        }
    }

    /**
     * assert true if tab name is displayed under upload file modal - Record level
     *
     * @param tabName
     */
    public void assertTabNameInsideAddFileModal(String usage, String tabName) {
        if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isTabNameDisplayedAtFileUploadModal(tabName)).isTrue();
        } else if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isTabNameDisplayedAtFileUploadModal(tabName));
        } else if (usage.equalsIgnoreCase("do no see")) {
            Assert.assertFalse(isTabNameDisplayedAtFileUploadModal(tabName));
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isTabNameDisplayedAtFileUploadModal(tabName)).isFalse();
        }
    }

    /**
     * assert true if given label is displayed at upload file button under add file modal - Record level
     *
     * @param buttonName
     */
    public void assertLabelAtUploadFileButton(String buttonName) {
        Assert.assertTrue(isLabelDisplayedAtUploadFileButton(buttonName));
    }

    /**
     * assert true if default keyword is displayed at default library / folder
     *
     * @param libraryOrFolderName
     */
    public void assertDefaultKeywordAtLibraryFolder(String usuage, String libraryOrFolderName, String pageID) {
        if (usuage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isDefaultKeywordDisplayedAtLibraryFolder(libraryOrFolderName, pageID));
        } else if (usuage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isDefaultKeywordDisplayedAtLibraryFolder(libraryOrFolderName, pageID));
        } else if (usuage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isDefaultKeywordDisplayedAtLibraryFolder(libraryOrFolderName, pageID)).isTrue();
        } else if (usuage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isDefaultKeywordDisplayedAtLibraryFolder(libraryOrFolderName, pageID)).isFalse();
        }
    }

    /**
     * assert true if pre-selected folder/library name is displayed at add file modal - Record level/phase level
     *
     * @param folderName
     * @author ashwini.mahore
     * @modifier ashwini.mahore - modified path to validate on both add and upload file modal
     */
    public void assertPreSelectedLibraryFolderAtAddFileModal(String folderName) {
        Assert.assertTrue(isPreSelectedLibraryFolderDisplayedAtAddFileModal(folderName));
    }

    /**
     * assert true if back to previous button displayed at selectFolder modal under library files- Record level
     *
     * @param buttonName
     */
    public void assertButtonInsideSelectFolderModal(String buttonName) {
        Assert.assertTrue(isButtonDisplayedInsideSelectFolderModal(buttonName));
    }

    /**
     * assert true if expected alert message displayed at selectFolder modal under library files- Record level
     *
     * @param modalId
     * @param expectedAlertMessage
     */
    public void assertAlertMessageInsideLibraryFilesModal(String modalId, String expectedAlertMessage) {
        I.amPerforming().assertionsTo().assertThat(I.amPerforming().actionToGet().text(By.xpath("//div[@id='" + modalId + "']//h3")))
                .isEqualToNormalizingWhitespace(expectedAlertMessage);
    }

    /**
     * assert true if file is displayed under expected library or folder- phase level
     *
     * @param fileName
     * @param libraryOrFolderName
     */
    public void assertFileDisplayedUnderExpectedLibrary(String fileName, String libraryOrFolderName) {
        I.amPerforming().assertionsTo().assertThat(isFileDisplayedUnderExpectedLibrary(fileName, libraryOrFolderName)).isTrue();
    }

    /**
     * assert true if file with same name is displayed under expected library or folder- phase level
     *
     * @param fileName
     * @param folderName
     */
    public void assertFilesWithSameNameDisplayedInFolder(String fileName, String folderName) {
        I.amPerforming().assertionsTo().assertThat(isSameNameFileDisplayedUnderExpectedFolder(fileName, folderName)).isTrue();
    }

    /**
     * assert true if sharing Option is displayed under sharing Option field at upload file modal - phase/Record level
     *
     * @param sharingOption
     */
    public void assertSharingOptionsDisplayedAtFileUploadModal(String usuage, String sharingOption) {
        if (usuage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isSharingOptionsDisplayedAtFileUploadModal(sharingOption)).isTrue();
        } else if (usuage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isSharingOptionsDisplayedAtFileUploadModal(sharingOption)).isFalse();
        }
    }

    /**
     * assert true if asterisk mark is displayed at required field under upload file modal window
     *
     * @param fieldName
     * @author - ashwini.mahore
     */
    public void assertAsteriskMarkIsDisplayedAtRequiredFieldsAtUploadFileModal(String fieldName) {
        Assert.assertTrue(isFieldDisplayedWithRequiredForSaveAsteriskMardAtUploadModal(fieldName));
    }

    /**
     * return true if information is displayed at upload file modal
     *
     * @param information
     * @author ashwini.mahore
     */
    public void assertInformationAtFilesUploadModal(String usage, String information) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isInformationDisplayedAtFilesUploadModal(information)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isInformationDisplayedAtFilesUploadModal(information)).isFalse();
        }
    }


    /**
     * return true if checkbox or radio button at file under upload file modal is disabled
     *
     * @param fileName
     * @author ashwini.mahore
     */
    public void assertCheckboxOrRadioButtonAtFileIsDisabledAtUploadFileModal(String fileName) {
        I.amPerforming().assertionsTo().assertThat(isCheckboxOrRadioButtonIsDisabledAtFileUploadModal(fileName)).isTrue();
    }

    /**
     * return true if post/comment is displayed inside collab - my feed container
     *
     * @param text
     * @param sectionId
     * @author ashwini.mahore
     */
    public void assertTextAtMyFeedSectionWithId(String usage, String text, String sectionId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isExpectedTextDisabledAtMyFeedSection(text, sectionId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isExpectedTextDisabledAtMyFeedSection(text, sectionId)).isFalse();

        }
    }

    /**
     * get dropdown options under respective Library/File/Folder - Home phase
     *
     * @param libraryFileFolderName
     * @param dropDownOption
     */
    public By dropdownOptionAtLibraryFolderFile(String dropDownOption, String libraryFileFolderName) {
        return By.xpath("//*[text()='" + libraryFileFolderName + "']//parent::div//*[text()='" + dropDownOption + "']");
    }

    /**
     * get classification at upload file modal window - Library files Home phase/record level
     *
     * @param classification
     */
    public WebElement getClassificationAtUploadFileModalUnderLibrary(String classification) {
        By selectValueFromDropdown = By.xpath("//select[@name='Classification']//option[text()='" + classification + "']");
        return I.amPerforming().getElementReference().of(selectValueFromDropdown);
    }

    /**
     * click on page navigation arrow at search table under upload file modal - Library files record level
     *
     * @param NextPrevious
     * @param tableId
     */
    public void clickOnPageNavigationArrowAtUploadFileModal(String NextPrevious, String tableId) {
        filesTablePagination(NextPrevious, tableId);
    }

    /**
     * click on pages dropdown to select page at search table under upload file modal - Library files record level
     *
     * @param numberOfEntries
     * @param tableId
     */
    public void selectPagesFromDropdownAtFileUploadModal(String numberOfEntries, String tableId) {
        filesTablePagesDropdown(numberOfEntries, tableId);
    }

    /**
     * perform click on dropdown options at Library / folder / file - Home phase
     *
     * @param dropDownOption
     * @param libraryFileFolderName
     */
    public void clickOnDropdownOptionsAtLibraryFolderFile(String dropDownOption, String libraryFileFolderName) {
        I.amPerforming().click().on(dropdownOptionAtLibraryFolderFile(dropDownOption, libraryFileFolderName));
        if (dropDownOption.contains("Edit") || dropDownOption.contains("Delete")) {
            I.amPerforming().waitFor().ElementToDisappear(By.xpath("//img[@class='nav-logo']"));
        }
    }

    /**
     * perform click on expand icon at flex table
     *
     * @param tableHeader
     * @author ashwini.mahore
     */
    public void clcikOnTableHeaderToExpand(String tableHeader) {
        By flexTableExpandCollapseIconSelector = ByUsing.xpath("//*[@title='" + tableHeader + "']//span[contains(@class,'fa-caret-down')] | //*[" + I.amPerforming().sanityOfXpathTo().equals(".", tableHeader) + "]/..//span[contains(@class,'fa-caret-up')]");
        I.amPerforming().click().on(flexTableExpandCollapseIconSelector);
    }

    /**
     * drag files from one folder (source) and drop it in another folder (destination)- Library files home phase
     *
     * @param fileName
     * @param sourceFolderName
     * @param targetFolderName
     */
    public void dragAndDropFileFromOneFolderToAnother(String fileName, String sourceFolderName, String targetFolderName) {
        By getSource = By.xpath("//span[text()='" + sourceFolderName + "']/ancestor::li//div[@role='treeitem' and (.//span[text()='" + fileName + "'])]");
        By getTarget = By.xpath("//span[text()='" + targetFolderName + "']");
        I.amPerforming().click().withMouse().dragAndDropInHtml5(getSource, getTarget);
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * return true if dropdown options under respective Library/File/Folder is Displayed - Home phase
     *
     * @param libraryFileFolderName
     * @return
     */
    private boolean isDropdownOptionIsDisplayedAtLibraryFileFolder(String dropDownOption, String
            libraryFileFolderName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(dropdownOptionAtLibraryFolderFile(dropDownOption, libraryFileFolderName))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if  modal window is Displayed - Home phase
     *
     * @param modalTitle
     * @return
     */
    private boolean isModalWindowNotDisplayedAtLibraryFileFolder(String modalTitle) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//p[text()='" + modalTitle + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if default file/folder is displayed under upload file modal - Home phase
     *
     * @param defaultFolder
     * @return
     */
    private boolean isDefaultLibraryFolderIsDisabledAtUploadModal(String defaultFolder) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@data-folder-name='" + defaultFolder + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if modal window is not Displayed by click on action close/cancel - Files List - Home Phase
     *
     * @param modalTitle
     * @param tableId
     * @return
     */
    private boolean isModalWindowIsNotDisabledAtFilesList(String modalTitle, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isEnabled(By.xpath("//p[text()='" + modalTitle + "']/ancestor::div[@id='" + tableId + "' and @aria-hidden='true']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if Library/ Folder/ File name is Highlighted In Yellow color after quick search- Home Phase
     *
     * @param libraryFileFolderName
     * @return
     */
    private boolean isLibraryFolderFileHighlightedInYellow(String libraryFileFolderName) {
        boolean flag = false;
        WebElement fileFolderName = I.amPerforming().getElementReference().of(By.xpath("//div[@id='WorkspaceFilesHierarchy']//*[text()='" + libraryFileFolderName + "']"));
        try {
            if (fileFolderName.getCssValue("background-color").contains("rgb(255, 235, 59, 1")) ;
            {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if Library/ Folder/ File count is displayed after quick search- Home Phase
     *
     * @param labelAndCount
     * @return
     */
    private boolean isLibraryFolderFileCountDisplayed(String labelAndCount) {
        boolean flag = false;
        List<Elements> searchResultLabelAndCountList = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//div[@class='slds-form-element__row search-result']//label"));
        try {
            for (int row = 0; row < searchResultLabelAndCountList.size(); row++) {
                if (searchResultLabelAndCountList.get(row).getText().equalsIgnoreCase(labelAndCount)) {
                    flag = true;
                }
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if searched record/value is displayed under table at upload file modal - Record level
     *
     * @param tableValue
     * @param tableId
     * @return
     */
    private boolean isSearchedValueDisplayedInTableAtFileUploadModal(String tableValue, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//*[@id='" + tableId + "']//tr//lightning-base-formatted-text[text()='" + tableValue + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if given tab name is displayed under upload file modal - Record level
     *
     * @param tabName
     * @return
     */
    private boolean isTabNameDisplayedAtFileUploadModal(String tabName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().libraryFiles().getTabInsideAddFileModal(tabName))) {
                flag = true;
            }
        } catch (NoSuchElementException var5) {
            flag = false;
        }
        return flag;
    }

    /**
     * return true if given label is displayed at upload file button under add file modal - Record level
     *
     * @param buttonName
     * @return
     */
    private boolean isLabelDisplayedAtUploadFileButton(String buttonName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//span[normalize-space(text())='" + buttonName + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if default keyword is displayed at default library / folder
     *
     * @param libraryOrFolderName
     * @return
     */
    private boolean isDefaultKeywordDisplayedAtLibraryFolder(String libraryOrFolderName, String pageID) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='" + pageID + "']//*[text()='" + libraryOrFolderName + "']//span"))) {
                flag = true;
            }
        } catch (NoSuchElementException var5) {
            flag = false;
        }
        return flag;
    }

    /**
     * return true if if pre-selected folder/library name is displayed at add file modal - Record level/phase level
     *
     * @param folderName
     * @author ashwini.mahore
     * @modifier ashwini.mahore - modified path to validate on both add and upload file modal
     */
    private boolean isPreSelectedLibraryFolderDisplayedAtAddFileModal(String folderName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[@data-folder-name='" + folderName + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if back to previous button displayed at selectFolder modal under library files- Record level
     *
     * @param buttonName
     * @return
     */
    private boolean isButtonDisplayedInsideSelectFolderModal(String buttonName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//a[text()='" + buttonName + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if file is displayed under expected library or folder- phase level
     *
     * @param fileName
     * @param libraryOrFolderName
     * @return
     */
    private boolean isFileDisplayedUnderExpectedLibrary(String fileName, String libraryOrFolderName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//span[text()='" + libraryOrFolderName + "']/../following-sibling::li//span[text()='" + fileName + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if file with same name is displayed under expected library or folder- phase level
     *
     * @param fileName
     * @param folderName
     * @return
     */
    private boolean isSameNameFileDisplayedUnderExpectedFolder(String fileName, String folderName) {
        boolean flag = false;
        for (int i = 1; i <= getFilesFromFolder(folderName).size(); i++) {
            if (getFilesFromFolder(folderName).get(i).getText().equals(fileName)) {
                return true;
            }
        }
        return flag;
    }

    /**
     * get all files from folder at Library files Home phase/record level
     *
     * @param folderName
     * @author ashwini.mahore
     */
    private List<Elements> getFilesFromFolder(String folderName) {
        return I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//span[text()='" + folderName + "']/../following-sibling::li//span[" +
                "" + I.amPerforming().sanityOfXpathTo().equals("@class", "file-name") + "]"));
    }

    /**
     * return true if sharing Option is displayed under sharing Option field at upload file modal - phase/Record level
     *
     * @param sharingOption
     * @author - ashwini.mahore
     */
    private boolean isSharingOptionsDisplayedAtFileUploadModal(String sharingOption) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().libraryFiles().getSharingOptionsAtUploadFileModalUnderLibrary(sharingOption))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * @param fieldName
     * @return true if asterisk mark is displayed at required field under upload file modal window
     * @author ashwini.mahore
     */
    private boolean isFieldDisplayedWithRequiredForSaveAsteriskMardAtUploadModal(String fieldName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[text()='" + fieldName + "']/..//*[@class='slds-required' and text()='*']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if information is displayed at upload file modal
     *
     * @param information
     * @author ashwini.mahore
     */
    public Boolean isInformationDisplayedAtFilesUploadModal(String information) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[contains(.,'" + information + "')]"))) {
                flag = true;
            }
        } catch (NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }


    /**
     * return true if checkbox or radio button at file under upload file modal is disabled
     *
     * @param fileName
     * @author ashwini.mahore
     */
    public Boolean isCheckboxOrRadioButtonIsDisabledAtFileUploadModal(String fileName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='WorkspaceFiles']//th//*[text()='" + fileName + "']/ancestor::tr[1]//input[(@type='checkbox' or @type='radio') and @disabled] " +
                    "| //div[@id='WorkspaceFiles']//*[text()='" + fileName + "']/ancestor::tr[@aria-selected='false']"))) {
                flag = true;
            }
        } catch (NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }


    /**
     * return true if post/comment is displayed inside collab - my feed container
     *
     * @param text
     * @param sectionId
     * @author ashwini.mahore
     */
    public Boolean isExpectedTextDisabledAtMyFeedSection(String text, String sectionId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + sectionId + "']//*[" + I.amPerforming().sanityOfXpathTo().contains("text()", text) + "]"))) {
                flag = true;
            }
        } catch (NoSuchElementException e) {
            flag = false;
        }
        return flag;
    }

}