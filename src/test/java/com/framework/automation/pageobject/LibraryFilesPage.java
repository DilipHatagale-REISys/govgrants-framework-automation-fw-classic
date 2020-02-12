package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import eyethink.automation.bots.Register.EyeThink;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class LibraryFilesPage extends GovGrantsManager {

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * assert true if Library/File/Folder is Displayed under files library - Home phase
     *
     * @param libraryFileFolderName
     */
    public void assertLibraryFileFolderIsDisplayed(String usuage, String libraryFileFolderName) {
        if (usuage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isLibraryFileFolderIsDisplayed(libraryFileFolderName));
        } else if (usuage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isLibraryFileFolderIsDisplayed(libraryFileFolderName));
        } else if (usuage.equalsIgnoreCase("softly see")) {
            EyeThink.core().assertion().assertThat(isLibraryFileFolderIsDisplayed(libraryFileFolderName)).isTrue();
        } else if (usuage.equalsIgnoreCase("softly do not see")) {
            EyeThink.core().assertion().assertThat(isLibraryFileFolderIsDisplayed(libraryFileFolderName)).isFalse();
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
            EyeThink.core().assertion().assertThat(isDropdownOptionIsDisplayedAtLibraryFileFolder(dropDownOption, libraryFileFolderName)).isTrue();
        } else if (usuage.equalsIgnoreCase("softly do not see")) {
            EyeThink.core().assertion().assertThat(isDropdownOptionIsDisplayedAtLibraryFileFolder(dropDownOption, libraryFileFolderName)).isFalse();
        }
    }

    /**
     * assert true if add new folder modal window is not Displayed - Home phase
     *
     * @param modalTitle
     */
    public void asserModalWindowIsNotDisplayedAtLibraryFileFolder(String modalTitle) {
        Assert.assertTrue(isModalWindowNotDisplayedAtLibraryFileFolder(modalTitle));
    }

    /**
     * assert true if upload button at modal window is disabled under library - Home phase
     *
     * @param buttonName
     */
    public void asserModalButtonIsDisabledAtLibrary(String buttonName) {
        Assert.assertTrue(isModalButtonDisabledAtLibrary(buttonName));
    }

    /**
     * perform click on expand icon at Library / folder - Home phase
     *
     * @param libraryFileFolderName
     */
    public void clickOnExpandIconAtLibraryFolder(String libraryFileFolderName) {
        EyeThink.core().click().on(By.xpath("//*[text() ='" + libraryFileFolderName + "']//parent::div//button[@title='Expand Folder']"));
    }

    /**
     * perform click on dropdown icon at Library / folder / file - Home phase
     *
     * @param libraryFileFolderName
     */
    public void clickOnDropdownIconAtLibraryFolderFile(String libraryFileFolderName) {
        EyeThink.core().click().on(By.xpath("//*[text() ='" + libraryFileFolderName + "']//parent::div//button[@aria-expanded='false']"));
    }

    /**
     * perform click on dropdown options at Library / folder / file - Home phase
     *
     * @param dropDownOption
     * @param libraryFileFolderName
     */
    public void clickOnDropdownOptionsAtLibraryFolderFile(String dropDownOption, String libraryFileFolderName) {
        EyeThink.core().click().on(dropdownOptionAtLibraryFolderFile(dropDownOption, libraryFileFolderName));
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
     * enter value in fields on modal while adding/editing folders/ files in library - home phase
     *
     * @param value
     * @param fieldName
     */
    public void enterValueInFieldsAtModalWindow(String value, String fieldName) {
        if (fieldName.equalsIgnoreCase("Description")) {
            WebElement enterDescription = EyeThink.core().elementReference().of(By.xpath("//label[text()='" + fieldName + "']/following-sibling::div//textarea"));
            EyeThink.core().enterText().clear(enterDescription);
            EyeThink.core().enterText().in(enterDescription, value);
        } else {
            WebElement enterFieldValue = EyeThink.core().elementReference().of(By.xpath("//label[text()='" + fieldName + "']/following-sibling::div//input"));
            EyeThink.core().enterText().clear(enterFieldValue);
            EyeThink.core().enterText().in(enterFieldValue, value);
        }
    }

    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    /**
     * return true if Library/File/Folder is Displayed under files library - Home phase
     *
     * @param libraryFileFolderName
     * @return
     */
    private boolean isLibraryFileFolderIsDisplayed(String libraryFileFolderName) {
        boolean flag = false;
        try {
            if (EyeThink.core().is().isDisplayed(By.xpath("//div[@id='WorkspaceFilesHierarchy']//*[text()='" + libraryFileFolderName + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if dropdown options under respective Library/File/Folder is Displayed - Home phase
     *
     * @param libraryFileFolderName
     * @return
     */
    private boolean isDropdownOptionIsDisplayedAtLibraryFileFolder(String dropDownOption, String libraryFileFolderName) {
        boolean flag = false;
        try {
            if (EyeThink.core().is().isDisplayed(dropdownOptionAtLibraryFolderFile(dropDownOption, libraryFileFolderName))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if add new folder modal window is not Displayed - Home phase
     *
     * @param modalTitle
     * @return
     */
    private boolean isModalWindowNotDisplayedAtLibraryFileFolder(String modalTitle) {
        boolean flag = true;
        try {
            if (EyeThink.core().is().isDisplayed(By.xpath("//p[text()='" + modalTitle + "']"))) {
                flag = false;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    /**
     * return true if upload button at modal window is disabled under library - Home phase
     *
     * @param buttonName
     * @return
     */
    private boolean isModalButtonDisabledAtLibrary(String buttonName) {
        boolean flag = false;
        try {
            if (EyeThink.core().is().isDisplayed(By.xpath("//button[text()='" + buttonName + "' and @disabled='true']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }
}
