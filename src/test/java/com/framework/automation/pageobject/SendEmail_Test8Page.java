package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.controller.DeviceBucket;
import com.testingblaze.objects.InstanceRecording;
import com.testingblaze.register.I;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

public class SendEmail_Test8Page extends GovGrantsManager {
    /******* "Variables and Locators" *****************/
    private static By SearchByCcXpath, SearchByToXpath;

    public SendEmail_Test8Page() {
        SearchByToXpath = By.xpath("//div[@class='form-group required ng-scope']//div//button[@type='button']");
        SearchByCcXpath = By.xpath("//div[@class='form-group ng-scope']//div//button[@type='button']");
    }

    public void assertHelpTextIsDisplayedOrNotDisplayed(String usage, String field, String helpText) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(helpTextDisplayedOrNotDisplayed(field, helpText)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(helpTextDisplayedOrNotDisplayed(field, helpText)).isFalse();
        }
    }

    private Boolean helpTextDisplayedOrNotDisplayed(String helpText, String field) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='form-group required ng-scope']/label[contains(text(),'" + field + "')]/span[contains(@title,'" + helpText + "')] |" +
                    " //div[@class='form-group ng-scope']/label[contains(text(),'" + field + "')]/span[contains(@title,'" + helpText + "')] |" +
                    " //div[@class='form-group']/label[contains(text(),'" + field + "')]/span[contains(@title,'" + helpText + "')] |" +
                    " //div[@class='form-group required']/label[contains(text(),'" + field + "')]/span[contains(@title,'" + helpText + "')] |" +
                    " //div[@class='form-group ng-scope']/button[contains(text(),'" + field + "') and contains(@title,'" + helpText + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void iHoverMouseInsideEmailModalText(String helpText) {
        WebElement ele = I.amPerforming().getElementReference().of(ByUsing.xpath("//strong[text()='" + helpText + "']/parent::label//button[@title='Help'] |" +
                " //span[text()='" + helpText + "']/parent::div//button[@title='Help'] |" +
                " //div/label[contains(text(),'" + helpText + "')]/span |" +
                " //div[contains(text(),'" + helpText + "')]/child::span | //div[@class='form-group ng-scope']/button[contains(text(),'" + helpText + "')]"));
        try {
            I.amPerforming().scroll().withMouseToElement(ele);
        } catch (Exception e) {
            JavascriptExecutor js = (JavascriptExecutor) ((InstanceRecording.getInstance(DeviceBucket.class)).getDriver());
            js.executeScript("arguments[0].scrollIntoView();", ele);
        }
    }

    public void clickOnSearchByDropDownAndSelectValue(String field, String dropdownValue) {
        I.amPerforming().waitFor().makeThreadSleep(5000);
        if (field.equalsIgnoreCase("To")) {
            I.amPerforming().click().on(SearchByToXpath);
            WebElement dropDownValueIntExtGroups = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='input-group-btn open']/ul/li[@class='ng-scope']/label/input[contains(@value,'" + dropdownValue + "')]"));
            I.amPerforming().click().on(dropDownValueIntExtGroups);
            I.amPerforming().click().on(SearchByToXpath);
        } else if (field.equalsIgnoreCase("Cc")) {
            I.amPerforming().click().on(SearchByCcXpath);
            WebElement dropDownValueIntExtGroups = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='input-group-btn open']/ul/li[@class='ng-scope']/label/input[contains(@value,'" + dropdownValue + "')]"));
            dropDownValueIntExtGroups.click();
            I.amPerforming().click().on(SearchByCcXpath);
        }
    }

    public void fillEmailDetailsToCcAndSubJect(String Tostr, String CCstr, String Subjectstr) {
        WebElement subject = I.amPerforming().getElementReference().of(By.xpath("//input[@id='subject-1'] | //input[@ng-model='email.subject'] | //input[@id='subject-1']"));
        I.amPerforming().textInput().toClear(subject);
        I.amPerforming().textInput().in(subject, Subjectstr);
        WebElement To = I.amPerforming().getElementReference().of(By.xpath("//input[@id='toExt-1'] | (//input[@ng-if=\"renderType=='Edit'\"])[1] | //input[@id='to-1']"));
        I.amPerforming().textInput().toClear(To);
        I.amPerforming().textInput().in(To, Tostr);
        WebElement CC = I.amPerforming().getElementReference().of(By.xpath("//input[@id='ccExt-1'] | //input[@ng-model='searchItem.ccValue'] | //input[@id='cc-1']"));
        I.amPerforming().textInput().toClear(CC);
        I.amPerforming().textInput().in(CC, CCstr);
    }

    public void assertIfMessageIsDisplayed(String usage, String successMessage) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(massageDisplayedInSendEmailModal(successMessage)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(massageDisplayedInSendEmailModal(successMessage)).isFalse();
        }
    }

    private Boolean massageDisplayedInSendEmailModal(String successMessage) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='slds-notify slds-notify_alert slds-alert-success']/child::h2[text()='" + successMessage + "'] |" +
                    " //div[@id='ModalDivID']/span//div[@class='alert alert-success border-msg']/span[@class='ng-binding' and contains(text(),'" + successMessage + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void selectButtonInsideSendEmailModal(String buttonName) {
        I.amPerforming().click().withJavaScript(ByUsing.xpath("//label[contains(text(),'" + buttonName + "')]/parent::div[@class='form-group ng-scope']/div[@class='fileDragDropWrap']/input[@id='fileselect']"));
    }

    public void uploadFileFromSystem(String attachmentName) {
        By attachmentChooseFilePath = By.xpath("//div[@class='fileDragDropWrap']//div[@filemodel='filedrag'] |" +
                " //div[@class='fileDragDropWrap']/input[@id='fileselect'] |" +
                " //div[@class='custom-upload']//input[@type='file'] |" +
                " //div[@class='slds-file-selector slds-file-selector_files']//lightning-primitive-file-droppable-zone//slot//input[@type='file'] |" +
                " //div[@class='form-group ng-scope']/button[@title='Open files table to add links']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + attachmentName);
    }

    public void assertIfFileIsDisplayedOrNot(String usage, String fileName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(fileDisplayedInModal(fileName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(fileDisplayedInModal(fileName)).isFalse();
        }
    }

    private Boolean fileDisplayedInModal(String fileName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='form-group ng-scope']/table[@class='table']/tbody/tr/td[contains(text(),'" + fileName + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void assertErrorMessageDisplayedOrNot(String usage, String errorMessage) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(errorMessageDisplayedInModal(errorMessage)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(errorMessageDisplayedInModal(errorMessage)).isFalse();
        }
    }

    private Boolean errorMessageDisplayedInModal(String errorMessage) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='LightningComponentid']//*[contains(text(),'" + errorMessage + "')] |" +
                    " //div[@role='alert']//h2[contains(text(),'" + errorMessage + "')] |" +
                    " //div[@class='container ng-scope']//span[contains(text(),'" + errorMessage + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void clickOnFileButton(String fileName) {
        I.amPerforming().click().on(ByUsing.xpath("//table[@class='table']/tbody/tr/td[contains(@data-title,'File-Name') and contains(text(),'" + fileName + "')]/following-sibling::td/a"));
    }

    public void assertTextDisplayedOrNot(String usage, String displayedText) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(textDisplayedInSendEmailModal(displayedText)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(textDisplayedInSendEmailModal(displayedText)).isFalse();
        }
    }

    private Boolean textDisplayedInSendEmailModal(String displayedText) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='sendEmail']/descendant::label[contains(text(),'" + displayedText + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

}
